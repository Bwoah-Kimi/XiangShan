module SyncDataModuleTemplate__32entry(
  input        clock,
  input  [4:0] io_raddr_0,
  input  [4:0] io_raddr_1,
  output [4:0] io_rdata_0_ldest,
  output       io_rdata_0_rfWen,
  output       io_rdata_0_fpWen,
  output       io_rdata_0_wflags,
  output [2:0] io_rdata_0_commitType,
  output [5:0] io_rdata_0_pdest,
  output       io_rdata_0_ftqIdx_flag,
  output [2:0] io_rdata_0_ftqIdx_value,
  output [2:0] io_rdata_0_ftqOffset,
  output       io_rdata_0_isMove,
  output       io_rdata_0_isRVC,
  output [4:0] io_rdata_1_ldest,
  output       io_rdata_1_rfWen,
  output       io_rdata_1_fpWen,
  output       io_rdata_1_wflags,
  output [2:0] io_rdata_1_commitType,
  output [5:0] io_rdata_1_pdest,
  output       io_rdata_1_ftqIdx_flag,
  output [2:0] io_rdata_1_ftqIdx_value,
  output [2:0] io_rdata_1_ftqOffset,
  output       io_rdata_1_isMove,
  input        io_wen_0,
  input        io_wen_1,
  input  [4:0] io_waddr_0,
  input  [4:0] io_waddr_1,
  input  [4:0] io_wdata_0_ldest,
  input        io_wdata_0_rfWen,
  input        io_wdata_0_fpWen,
  input        io_wdata_0_wflags,
  input  [2:0] io_wdata_0_commitType,
  input  [5:0] io_wdata_0_pdest,
  input        io_wdata_0_ftqIdx_flag,
  input  [2:0] io_wdata_0_ftqIdx_value,
  input  [2:0] io_wdata_0_ftqOffset,
  input        io_wdata_0_isMove,
  input        io_wdata_0_isRVC,
  input  [4:0] io_wdata_1_ldest,
  input        io_wdata_1_rfWen,
  input        io_wdata_1_fpWen,
  input        io_wdata_1_wflags,
  input  [2:0] io_wdata_1_commitType,
  input  [5:0] io_wdata_1_pdest,
  input        io_wdata_1_ftqIdx_flag,
  input  [2:0] io_wdata_1_ftqIdx_value,
  input  [2:0] io_wdata_1_ftqOffset,
  input        io_wdata_1_isMove,
  input        io_wdata_1_isRVC
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
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
`endif // RANDOMIZE_REG_INIT
  wire  dataBanks_0_clock; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_rdata_0_ldest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_rfWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_wflags; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_0_commitType; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_0_pdest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_ftqIdx_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_0_ftqIdx_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_0_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_isMove; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_rdata_1_ldest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_rfWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_wflags; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_1_commitType; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_1_pdest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_ftqIdx_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_1_ftqIdx_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_1_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_isMove; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_wdata_0_ldest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_rfWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_wflags; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_0_commitType; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_wdata_0_pdest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_ftqIdx_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_0_ftqIdx_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_0_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_isMove; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_wdata_1_ldest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_rfWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_wflags; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_1_commitType; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_wdata_1_pdest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_ftqIdx_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_1_ftqIdx_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_1_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_isMove; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_clock; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_1_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_1_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_1_io_rdata_0_ldest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_rdata_0_rfWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_rdata_0_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_rdata_0_wflags; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_1_io_rdata_0_commitType; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_1_io_rdata_0_pdest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_rdata_0_ftqIdx_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_1_io_rdata_0_ftqIdx_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_1_io_rdata_0_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_rdata_0_isMove; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_rdata_0_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_1_io_rdata_1_ldest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_rdata_1_rfWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_rdata_1_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_rdata_1_wflags; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_1_io_rdata_1_commitType; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_1_io_rdata_1_pdest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_rdata_1_ftqIdx_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_1_io_rdata_1_ftqIdx_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_1_io_rdata_1_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_rdata_1_isMove; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_1_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_1_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_1_io_wdata_0_ldest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wdata_0_rfWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wdata_0_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wdata_0_wflags; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_1_io_wdata_0_commitType; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_1_io_wdata_0_pdest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wdata_0_ftqIdx_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_1_io_wdata_0_ftqIdx_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_1_io_wdata_0_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wdata_0_isMove; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wdata_0_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_1_io_wdata_1_ldest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wdata_1_rfWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wdata_1_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wdata_1_wflags; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_1_io_wdata_1_commitType; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_1_io_wdata_1_pdest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wdata_1_ftqIdx_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_1_io_wdata_1_ftqIdx_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_1_io_wdata_1_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wdata_1_isMove; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_1_io_wdata_1_isRVC; // @[DataModuleTemplate.scala 120:26]
  reg [4:0] raddr_dup__0; // @[DataModuleTemplate.scala 123:28]
  reg [4:0] raddr_dup__1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup__0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup__1; // @[DataModuleTemplate.scala 124:26]
  reg [4:0] waddr_dup_0; // @[Reg.scala 16:16]
  reg [4:0] waddr_dup_1; // @[Reg.scala 16:16]
  reg [4:0] r_ldest; // @[Reg.scala 16:16]
  reg  r_rfWen; // @[Reg.scala 16:16]
  reg  r_fpWen; // @[Reg.scala 16:16]
  reg  r_wflags; // @[Reg.scala 16:16]
  reg [2:0] r_commitType; // @[Reg.scala 16:16]
  reg [5:0] r_pdest; // @[Reg.scala 16:16]
  reg  r_ftqIdx_flag; // @[Reg.scala 16:16]
  reg [2:0] r_ftqIdx_value; // @[Reg.scala 16:16]
  reg [2:0] r_ftqOffset; // @[Reg.scala 16:16]
  reg  r_isMove; // @[Reg.scala 16:16]
  reg  r_isRVC; // @[Reg.scala 16:16]
  reg [4:0] r_1_ldest; // @[Reg.scala 16:16]
  reg  r_1_rfWen; // @[Reg.scala 16:16]
  reg  r_1_fpWen; // @[Reg.scala 16:16]
  reg  r_1_wflags; // @[Reg.scala 16:16]
  reg [2:0] r_1_commitType; // @[Reg.scala 16:16]
  reg [5:0] r_1_pdest; // @[Reg.scala 16:16]
  reg  r_1_ftqIdx_flag; // @[Reg.scala 16:16]
  reg [2:0] r_1_ftqIdx_value; // @[Reg.scala 16:16]
  reg [2:0] r_1_ftqOffset; // @[Reg.scala 16:16]
  reg  r_1_isMove; // @[Reg.scala 16:16]
  reg  r_1_isRVC; // @[Reg.scala 16:16]
  reg [4:0] raddr_dup_1_0; // @[DataModuleTemplate.scala 123:28]
  reg [4:0] raddr_dup_1_1; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_1_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_1_1; // @[DataModuleTemplate.scala 124:26]
  reg [4:0] waddr_dup_0_1; // @[Reg.scala 16:16]
  reg [4:0] waddr_dup_1_1; // @[Reg.scala 16:16]
  reg [4:0] r_2_ldest; // @[Reg.scala 16:16]
  reg  r_2_rfWen; // @[Reg.scala 16:16]
  reg  r_2_fpWen; // @[Reg.scala 16:16]
  reg  r_2_wflags; // @[Reg.scala 16:16]
  reg [2:0] r_2_commitType; // @[Reg.scala 16:16]
  reg [5:0] r_2_pdest; // @[Reg.scala 16:16]
  reg  r_2_ftqIdx_flag; // @[Reg.scala 16:16]
  reg [2:0] r_2_ftqIdx_value; // @[Reg.scala 16:16]
  reg [2:0] r_2_ftqOffset; // @[Reg.scala 16:16]
  reg  r_2_isMove; // @[Reg.scala 16:16]
  reg  r_2_isRVC; // @[Reg.scala 16:16]
  reg [4:0] r_3_ldest; // @[Reg.scala 16:16]
  reg  r_3_rfWen; // @[Reg.scala 16:16]
  reg  r_3_fpWen; // @[Reg.scala 16:16]
  reg  r_3_wflags; // @[Reg.scala 16:16]
  reg [2:0] r_3_commitType; // @[Reg.scala 16:16]
  reg [5:0] r_3_pdest; // @[Reg.scala 16:16]
  reg  r_3_ftqIdx_flag; // @[Reg.scala 16:16]
  reg [2:0] r_3_ftqIdx_value; // @[Reg.scala 16:16]
  reg [2:0] r_3_ftqOffset; // @[Reg.scala 16:16]
  reg  r_3_isMove; // @[Reg.scala 16:16]
  reg  r_3_isRVC; // @[Reg.scala 16:16]
  reg [4:0] raddr_dup_2; // @[DataModuleTemplate.scala 145:28]
  wire  index_dec_shiftAmount = raddr_dup_2[4]; // @[DataModuleTemplate.scala 110:30]
  wire [1:0] index_dec = 2'h1 << index_dec_shiftAmount; // @[OneHot.scala 64:12]
  wire [2:0] _io_rdata_0_T_11 = index_dec[0] ? dataBanks_0_io_rdata_0_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_12 = index_dec[1] ? dataBanks_1_io_rdata_0_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_14 = index_dec[0] ? dataBanks_0_io_rdata_0_ftqIdx_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_15 = index_dec[1] ? dataBanks_1_io_rdata_0_ftqIdx_value : 3'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_0_T_20 = index_dec[0] ? dataBanks_0_io_rdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_0_T_21 = index_dec[1] ? dataBanks_1_io_rdata_0_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_23 = index_dec[0] ? dataBanks_0_io_rdata_0_commitType : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_0_T_24 = index_dec[1] ? dataBanks_1_io_rdata_0_commitType : 3'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_35 = index_dec[0] ? dataBanks_0_io_rdata_0_ldest : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_36 = index_dec[1] ? dataBanks_1_io_rdata_0_ldest : 5'h0; // @[Mux.scala 27:73]
  reg [4:0] raddr_dup_3; // @[DataModuleTemplate.scala 145:28]
  wire  index_dec_shiftAmount_1 = raddr_dup_3[4]; // @[DataModuleTemplate.scala 110:30]
  wire [1:0] index_dec_1 = 2'h1 << index_dec_shiftAmount_1; // @[OneHot.scala 64:12]
  wire [2:0] _io_rdata_1_T_11 = index_dec_1[0] ? dataBanks_0_io_rdata_1_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_12 = index_dec_1[1] ? dataBanks_1_io_rdata_1_ftqOffset : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_14 = index_dec_1[0] ? dataBanks_0_io_rdata_1_ftqIdx_value : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_15 = index_dec_1[1] ? dataBanks_1_io_rdata_1_ftqIdx_value : 3'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_1_T_20 = index_dec_1[0] ? dataBanks_0_io_rdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_rdata_1_T_21 = index_dec_1[1] ? dataBanks_1_io_rdata_1_pdest : 6'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_23 = index_dec_1[0] ? dataBanks_0_io_rdata_1_commitType : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_rdata_1_T_24 = index_dec_1[1] ? dataBanks_1_io_rdata_1_commitType : 3'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_35 = index_dec_1[0] ? dataBanks_0_io_rdata_1_ldest : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_36 = index_dec_1[1] ? dataBanks_1_io_rdata_1_ldest : 5'h0; // @[Mux.scala 27:73]
  NegedgeDataModule__16entry_1 dataBanks_0 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_0_clock),
    .io_raddr_0(dataBanks_0_io_raddr_0),
    .io_raddr_1(dataBanks_0_io_raddr_1),
    .io_rdata_0_ldest(dataBanks_0_io_rdata_0_ldest),
    .io_rdata_0_rfWen(dataBanks_0_io_rdata_0_rfWen),
    .io_rdata_0_fpWen(dataBanks_0_io_rdata_0_fpWen),
    .io_rdata_0_wflags(dataBanks_0_io_rdata_0_wflags),
    .io_rdata_0_commitType(dataBanks_0_io_rdata_0_commitType),
    .io_rdata_0_pdest(dataBanks_0_io_rdata_0_pdest),
    .io_rdata_0_ftqIdx_flag(dataBanks_0_io_rdata_0_ftqIdx_flag),
    .io_rdata_0_ftqIdx_value(dataBanks_0_io_rdata_0_ftqIdx_value),
    .io_rdata_0_ftqOffset(dataBanks_0_io_rdata_0_ftqOffset),
    .io_rdata_0_isMove(dataBanks_0_io_rdata_0_isMove),
    .io_rdata_0_isRVC(dataBanks_0_io_rdata_0_isRVC),
    .io_rdata_1_ldest(dataBanks_0_io_rdata_1_ldest),
    .io_rdata_1_rfWen(dataBanks_0_io_rdata_1_rfWen),
    .io_rdata_1_fpWen(dataBanks_0_io_rdata_1_fpWen),
    .io_rdata_1_wflags(dataBanks_0_io_rdata_1_wflags),
    .io_rdata_1_commitType(dataBanks_0_io_rdata_1_commitType),
    .io_rdata_1_pdest(dataBanks_0_io_rdata_1_pdest),
    .io_rdata_1_ftqIdx_flag(dataBanks_0_io_rdata_1_ftqIdx_flag),
    .io_rdata_1_ftqIdx_value(dataBanks_0_io_rdata_1_ftqIdx_value),
    .io_rdata_1_ftqOffset(dataBanks_0_io_rdata_1_ftqOffset),
    .io_rdata_1_isMove(dataBanks_0_io_rdata_1_isMove),
    .io_wen_0(dataBanks_0_io_wen_0),
    .io_wen_1(dataBanks_0_io_wen_1),
    .io_waddr_0(dataBanks_0_io_waddr_0),
    .io_waddr_1(dataBanks_0_io_waddr_1),
    .io_wdata_0_ldest(dataBanks_0_io_wdata_0_ldest),
    .io_wdata_0_rfWen(dataBanks_0_io_wdata_0_rfWen),
    .io_wdata_0_fpWen(dataBanks_0_io_wdata_0_fpWen),
    .io_wdata_0_wflags(dataBanks_0_io_wdata_0_wflags),
    .io_wdata_0_commitType(dataBanks_0_io_wdata_0_commitType),
    .io_wdata_0_pdest(dataBanks_0_io_wdata_0_pdest),
    .io_wdata_0_ftqIdx_flag(dataBanks_0_io_wdata_0_ftqIdx_flag),
    .io_wdata_0_ftqIdx_value(dataBanks_0_io_wdata_0_ftqIdx_value),
    .io_wdata_0_ftqOffset(dataBanks_0_io_wdata_0_ftqOffset),
    .io_wdata_0_isMove(dataBanks_0_io_wdata_0_isMove),
    .io_wdata_0_isRVC(dataBanks_0_io_wdata_0_isRVC),
    .io_wdata_1_ldest(dataBanks_0_io_wdata_1_ldest),
    .io_wdata_1_rfWen(dataBanks_0_io_wdata_1_rfWen),
    .io_wdata_1_fpWen(dataBanks_0_io_wdata_1_fpWen),
    .io_wdata_1_wflags(dataBanks_0_io_wdata_1_wflags),
    .io_wdata_1_commitType(dataBanks_0_io_wdata_1_commitType),
    .io_wdata_1_pdest(dataBanks_0_io_wdata_1_pdest),
    .io_wdata_1_ftqIdx_flag(dataBanks_0_io_wdata_1_ftqIdx_flag),
    .io_wdata_1_ftqIdx_value(dataBanks_0_io_wdata_1_ftqIdx_value),
    .io_wdata_1_ftqOffset(dataBanks_0_io_wdata_1_ftqOffset),
    .io_wdata_1_isMove(dataBanks_0_io_wdata_1_isMove),
    .io_wdata_1_isRVC(dataBanks_0_io_wdata_1_isRVC)
  );
  NegedgeDataModule__16entry_1 dataBanks_1 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_1_clock),
    .io_raddr_0(dataBanks_1_io_raddr_0),
    .io_raddr_1(dataBanks_1_io_raddr_1),
    .io_rdata_0_ldest(dataBanks_1_io_rdata_0_ldest),
    .io_rdata_0_rfWen(dataBanks_1_io_rdata_0_rfWen),
    .io_rdata_0_fpWen(dataBanks_1_io_rdata_0_fpWen),
    .io_rdata_0_wflags(dataBanks_1_io_rdata_0_wflags),
    .io_rdata_0_commitType(dataBanks_1_io_rdata_0_commitType),
    .io_rdata_0_pdest(dataBanks_1_io_rdata_0_pdest),
    .io_rdata_0_ftqIdx_flag(dataBanks_1_io_rdata_0_ftqIdx_flag),
    .io_rdata_0_ftqIdx_value(dataBanks_1_io_rdata_0_ftqIdx_value),
    .io_rdata_0_ftqOffset(dataBanks_1_io_rdata_0_ftqOffset),
    .io_rdata_0_isMove(dataBanks_1_io_rdata_0_isMove),
    .io_rdata_0_isRVC(dataBanks_1_io_rdata_0_isRVC),
    .io_rdata_1_ldest(dataBanks_1_io_rdata_1_ldest),
    .io_rdata_1_rfWen(dataBanks_1_io_rdata_1_rfWen),
    .io_rdata_1_fpWen(dataBanks_1_io_rdata_1_fpWen),
    .io_rdata_1_wflags(dataBanks_1_io_rdata_1_wflags),
    .io_rdata_1_commitType(dataBanks_1_io_rdata_1_commitType),
    .io_rdata_1_pdest(dataBanks_1_io_rdata_1_pdest),
    .io_rdata_1_ftqIdx_flag(dataBanks_1_io_rdata_1_ftqIdx_flag),
    .io_rdata_1_ftqIdx_value(dataBanks_1_io_rdata_1_ftqIdx_value),
    .io_rdata_1_ftqOffset(dataBanks_1_io_rdata_1_ftqOffset),
    .io_rdata_1_isMove(dataBanks_1_io_rdata_1_isMove),
    .io_wen_0(dataBanks_1_io_wen_0),
    .io_wen_1(dataBanks_1_io_wen_1),
    .io_waddr_0(dataBanks_1_io_waddr_0),
    .io_waddr_1(dataBanks_1_io_waddr_1),
    .io_wdata_0_ldest(dataBanks_1_io_wdata_0_ldest),
    .io_wdata_0_rfWen(dataBanks_1_io_wdata_0_rfWen),
    .io_wdata_0_fpWen(dataBanks_1_io_wdata_0_fpWen),
    .io_wdata_0_wflags(dataBanks_1_io_wdata_0_wflags),
    .io_wdata_0_commitType(dataBanks_1_io_wdata_0_commitType),
    .io_wdata_0_pdest(dataBanks_1_io_wdata_0_pdest),
    .io_wdata_0_ftqIdx_flag(dataBanks_1_io_wdata_0_ftqIdx_flag),
    .io_wdata_0_ftqIdx_value(dataBanks_1_io_wdata_0_ftqIdx_value),
    .io_wdata_0_ftqOffset(dataBanks_1_io_wdata_0_ftqOffset),
    .io_wdata_0_isMove(dataBanks_1_io_wdata_0_isMove),
    .io_wdata_0_isRVC(dataBanks_1_io_wdata_0_isRVC),
    .io_wdata_1_ldest(dataBanks_1_io_wdata_1_ldest),
    .io_wdata_1_rfWen(dataBanks_1_io_wdata_1_rfWen),
    .io_wdata_1_fpWen(dataBanks_1_io_wdata_1_fpWen),
    .io_wdata_1_wflags(dataBanks_1_io_wdata_1_wflags),
    .io_wdata_1_commitType(dataBanks_1_io_wdata_1_commitType),
    .io_wdata_1_pdest(dataBanks_1_io_wdata_1_pdest),
    .io_wdata_1_ftqIdx_flag(dataBanks_1_io_wdata_1_ftqIdx_flag),
    .io_wdata_1_ftqIdx_value(dataBanks_1_io_wdata_1_ftqIdx_value),
    .io_wdata_1_ftqOffset(dataBanks_1_io_wdata_1_ftqOffset),
    .io_wdata_1_isMove(dataBanks_1_io_wdata_1_isMove),
    .io_wdata_1_isRVC(dataBanks_1_io_wdata_1_isRVC)
  );
  assign io_rdata_0_ldest = _io_rdata_0_T_35 | _io_rdata_0_T_36; // @[Mux.scala 27:73]
  assign io_rdata_0_rfWen = index_dec[0] & dataBanks_0_io_rdata_0_rfWen | index_dec[1] & dataBanks_1_io_rdata_0_rfWen; // @[Mux.scala 27:73]
  assign io_rdata_0_fpWen = index_dec[0] & dataBanks_0_io_rdata_0_fpWen | index_dec[1] & dataBanks_1_io_rdata_0_fpWen; // @[Mux.scala 27:73]
  assign io_rdata_0_wflags = index_dec[0] & dataBanks_0_io_rdata_0_wflags | index_dec[1] & dataBanks_1_io_rdata_0_wflags
    ; // @[Mux.scala 27:73]
  assign io_rdata_0_commitType = _io_rdata_0_T_23 | _io_rdata_0_T_24; // @[Mux.scala 27:73]
  assign io_rdata_0_pdest = _io_rdata_0_T_20 | _io_rdata_0_T_21; // @[Mux.scala 27:73]
  assign io_rdata_0_ftqIdx_flag = index_dec[0] & dataBanks_0_io_rdata_0_ftqIdx_flag | index_dec[1] &
    dataBanks_1_io_rdata_0_ftqIdx_flag; // @[Mux.scala 27:73]
  assign io_rdata_0_ftqIdx_value = _io_rdata_0_T_14 | _io_rdata_0_T_15; // @[Mux.scala 27:73]
  assign io_rdata_0_ftqOffset = _io_rdata_0_T_11 | _io_rdata_0_T_12; // @[Mux.scala 27:73]
  assign io_rdata_0_isMove = index_dec[0] & dataBanks_0_io_rdata_0_isMove | index_dec[1] & dataBanks_1_io_rdata_0_isMove
    ; // @[Mux.scala 27:73]
  assign io_rdata_0_isRVC = index_dec[0] & dataBanks_0_io_rdata_0_isRVC | index_dec[1] & dataBanks_1_io_rdata_0_isRVC; // @[Mux.scala 27:73]
  assign io_rdata_1_ldest = _io_rdata_1_T_35 | _io_rdata_1_T_36; // @[Mux.scala 27:73]
  assign io_rdata_1_rfWen = index_dec_1[0] & dataBanks_0_io_rdata_1_rfWen | index_dec_1[1] &
    dataBanks_1_io_rdata_1_rfWen; // @[Mux.scala 27:73]
  assign io_rdata_1_fpWen = index_dec_1[0] & dataBanks_0_io_rdata_1_fpWen | index_dec_1[1] &
    dataBanks_1_io_rdata_1_fpWen; // @[Mux.scala 27:73]
  assign io_rdata_1_wflags = index_dec_1[0] & dataBanks_0_io_rdata_1_wflags | index_dec_1[1] &
    dataBanks_1_io_rdata_1_wflags; // @[Mux.scala 27:73]
  assign io_rdata_1_commitType = _io_rdata_1_T_23 | _io_rdata_1_T_24; // @[Mux.scala 27:73]
  assign io_rdata_1_pdest = _io_rdata_1_T_20 | _io_rdata_1_T_21; // @[Mux.scala 27:73]
  assign io_rdata_1_ftqIdx_flag = index_dec_1[0] & dataBanks_0_io_rdata_1_ftqIdx_flag | index_dec_1[1] &
    dataBanks_1_io_rdata_1_ftqIdx_flag; // @[Mux.scala 27:73]
  assign io_rdata_1_ftqIdx_value = _io_rdata_1_T_14 | _io_rdata_1_T_15; // @[Mux.scala 27:73]
  assign io_rdata_1_ftqOffset = _io_rdata_1_T_11 | _io_rdata_1_T_12; // @[Mux.scala 27:73]
  assign io_rdata_1_isMove = index_dec_1[0] & dataBanks_0_io_rdata_1_isMove | index_dec_1[1] &
    dataBanks_1_io_rdata_1_isMove; // @[Mux.scala 27:73]
  assign dataBanks_0_clock = clock;
  assign dataBanks_0_io_raddr_0 = raddr_dup__0[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_0_io_raddr_1 = raddr_dup__1[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_0_io_wen_0 = wen_dup__0 & ~waddr_dup_0[4]; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_wen_1 = wen_dup__1 & ~waddr_dup_1[4]; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_waddr_0 = waddr_dup_0[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_0_io_waddr_1 = waddr_dup_1[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_0_io_wdata_0_ldest = r_ldest; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_rfWen = r_rfWen; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_fpWen = r_fpWen; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_wflags = r_wflags; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_commitType = r_commitType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_pdest = r_pdest; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ftqIdx_flag = r_ftqIdx_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ftqIdx_value = r_ftqIdx_value; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ftqOffset = r_ftqOffset; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_isMove = r_isMove; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_isRVC = r_isRVC; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ldest = r_1_ldest; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_rfWen = r_1_rfWen; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_fpWen = r_1_fpWen; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_wflags = r_1_wflags; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_commitType = r_1_commitType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_pdest = r_1_pdest; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ftqIdx_flag = r_1_ftqIdx_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ftqIdx_value = r_1_ftqIdx_value; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ftqOffset = r_1_ftqOffset; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_isMove = r_1_isMove; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_isRVC = r_1_isRVC; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_clock = clock;
  assign dataBanks_1_io_raddr_0 = raddr_dup_1_0[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_1_io_raddr_1 = raddr_dup_1_1[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_1_io_wen_0 = wen_dup_1_0 & waddr_dup_0_1[4]; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_1_io_wen_1 = wen_dup_1_1 & waddr_dup_1_1[4]; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_1_io_waddr_0 = waddr_dup_0_1[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_1_io_waddr_1 = waddr_dup_1_1[3:0]; // @[DataModuleTemplate.scala 106:30]
  assign dataBanks_1_io_wdata_0_ldest = r_2_ldest; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_0_rfWen = r_2_rfWen; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_0_fpWen = r_2_fpWen; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_0_wflags = r_2_wflags; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_0_commitType = r_2_commitType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_0_pdest = r_2_pdest; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_0_ftqIdx_flag = r_2_ftqIdx_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_0_ftqIdx_value = r_2_ftqIdx_value; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_0_ftqOffset = r_2_ftqOffset; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_0_isMove = r_2_isMove; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_0_isRVC = r_2_isRVC; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_1_ldest = r_3_ldest; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_1_rfWen = r_3_rfWen; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_1_fpWen = r_3_fpWen; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_1_wflags = r_3_wflags; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_1_commitType = r_3_commitType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_1_pdest = r_3_pdest; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_1_ftqIdx_flag = r_3_ftqIdx_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_1_ftqIdx_value = r_3_ftqIdx_value; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_1_ftqOffset = r_3_ftqOffset; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_1_isMove = r_3_isMove; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_1_io_wdata_1_isRVC = r_3_isRVC; // @[DataModuleTemplate.scala 136:25]
  always @(posedge clock) begin
    raddr_dup__0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup__0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup__1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ldest <= io_wdata_0_ldest; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_rfWen <= io_wdata_0_rfWen; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_fpWen <= io_wdata_0_fpWen; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_wflags <= io_wdata_0_wflags; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_commitType <= io_wdata_0_commitType; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_pdest <= io_wdata_0_pdest; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ftqIdx_flag <= io_wdata_0_ftqIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ftqIdx_value <= io_wdata_0_ftqIdx_value; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ftqOffset <= io_wdata_0_ftqOffset; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_isMove <= io_wdata_0_isMove; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_isRVC <= io_wdata_0_isRVC; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ldest <= io_wdata_1_ldest; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_rfWen <= io_wdata_1_rfWen; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_fpWen <= io_wdata_1_fpWen; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_wflags <= io_wdata_1_wflags; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_commitType <= io_wdata_1_commitType; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_pdest <= io_wdata_1_pdest; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ftqIdx_flag <= io_wdata_1_ftqIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ftqIdx_value <= io_wdata_1_ftqIdx_value; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ftqOffset <= io_wdata_1_ftqOffset; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_isMove <= io_wdata_1_isMove; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_isRVC <= io_wdata_1_isRVC; // @[Reg.scala 17:22]
    end
    raddr_dup_1_0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup_1_1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    wen_dup_1_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_1_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0_1 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1_1 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_2_ldest <= io_wdata_0_ldest; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_2_rfWen <= io_wdata_0_rfWen; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_2_fpWen <= io_wdata_0_fpWen; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_2_wflags <= io_wdata_0_wflags; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_2_commitType <= io_wdata_0_commitType; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_2_pdest <= io_wdata_0_pdest; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_2_ftqIdx_flag <= io_wdata_0_ftqIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_2_ftqIdx_value <= io_wdata_0_ftqIdx_value; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_2_ftqOffset <= io_wdata_0_ftqOffset; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_2_isMove <= io_wdata_0_isMove; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_2_isRVC <= io_wdata_0_isRVC; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_3_ldest <= io_wdata_1_ldest; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_3_rfWen <= io_wdata_1_rfWen; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_3_fpWen <= io_wdata_1_fpWen; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_3_wflags <= io_wdata_1_wflags; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_3_commitType <= io_wdata_1_commitType; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_3_pdest <= io_wdata_1_pdest; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_3_ftqIdx_flag <= io_wdata_1_ftqIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_3_ftqIdx_value <= io_wdata_1_ftqIdx_value; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_3_ftqOffset <= io_wdata_1_ftqOffset; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_3_isMove <= io_wdata_1_isMove; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_3_isRVC <= io_wdata_1_isRVC; // @[Reg.scala 17:22]
    end
    raddr_dup_2 <= io_raddr_0; // @[DataModuleTemplate.scala 145:28]
    raddr_dup_3 <= io_raddr_1; // @[DataModuleTemplate.scala 145:28]
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
  raddr_dup__0 = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  raddr_dup__1 = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  wen_dup__0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  wen_dup__1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  waddr_dup_0 = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  waddr_dup_1 = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  r_ldest = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  r_rfWen = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  r_fpWen = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  r_wflags = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  r_commitType = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  r_pdest = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  r_ftqIdx_flag = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  r_ftqIdx_value = _RAND_13[2:0];
  _RAND_14 = {1{`RANDOM}};
  r_ftqOffset = _RAND_14[2:0];
  _RAND_15 = {1{`RANDOM}};
  r_isMove = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  r_isRVC = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  r_1_ldest = _RAND_17[4:0];
  _RAND_18 = {1{`RANDOM}};
  r_1_rfWen = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  r_1_fpWen = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  r_1_wflags = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  r_1_commitType = _RAND_21[2:0];
  _RAND_22 = {1{`RANDOM}};
  r_1_pdest = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  r_1_ftqIdx_flag = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  r_1_ftqIdx_value = _RAND_24[2:0];
  _RAND_25 = {1{`RANDOM}};
  r_1_ftqOffset = _RAND_25[2:0];
  _RAND_26 = {1{`RANDOM}};
  r_1_isMove = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  r_1_isRVC = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  raddr_dup_1_0 = _RAND_28[4:0];
  _RAND_29 = {1{`RANDOM}};
  raddr_dup_1_1 = _RAND_29[4:0];
  _RAND_30 = {1{`RANDOM}};
  wen_dup_1_0 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  wen_dup_1_1 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  waddr_dup_0_1 = _RAND_32[4:0];
  _RAND_33 = {1{`RANDOM}};
  waddr_dup_1_1 = _RAND_33[4:0];
  _RAND_34 = {1{`RANDOM}};
  r_2_ldest = _RAND_34[4:0];
  _RAND_35 = {1{`RANDOM}};
  r_2_rfWen = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  r_2_fpWen = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  r_2_wflags = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  r_2_commitType = _RAND_38[2:0];
  _RAND_39 = {1{`RANDOM}};
  r_2_pdest = _RAND_39[5:0];
  _RAND_40 = {1{`RANDOM}};
  r_2_ftqIdx_flag = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  r_2_ftqIdx_value = _RAND_41[2:0];
  _RAND_42 = {1{`RANDOM}};
  r_2_ftqOffset = _RAND_42[2:0];
  _RAND_43 = {1{`RANDOM}};
  r_2_isMove = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  r_2_isRVC = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  r_3_ldest = _RAND_45[4:0];
  _RAND_46 = {1{`RANDOM}};
  r_3_rfWen = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  r_3_fpWen = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  r_3_wflags = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  r_3_commitType = _RAND_49[2:0];
  _RAND_50 = {1{`RANDOM}};
  r_3_pdest = _RAND_50[5:0];
  _RAND_51 = {1{`RANDOM}};
  r_3_ftqIdx_flag = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  r_3_ftqIdx_value = _RAND_52[2:0];
  _RAND_53 = {1{`RANDOM}};
  r_3_ftqOffset = _RAND_53[2:0];
  _RAND_54 = {1{`RANDOM}};
  r_3_isMove = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  r_3_isRVC = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  raddr_dup_2 = _RAND_56[4:0];
  _RAND_57 = {1{`RANDOM}};
  raddr_dup_3 = _RAND_57[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

