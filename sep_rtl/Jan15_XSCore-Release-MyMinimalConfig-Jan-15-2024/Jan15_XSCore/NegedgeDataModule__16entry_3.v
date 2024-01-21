module NegedgeDataModule__16entry_3(
  input        clock,
  input  [3:0] io_raddr_0,
  input  [3:0] io_raddr_1,
  output [4:0] io_rdata_0,
  output [4:0] io_rdata_1,
  input        io_wen_0,
  input        io_wen_1,
  input        io_wen_2,
  input  [3:0] io_waddr_0,
  input  [3:0] io_waddr_1,
  input  [3:0] io_waddr_2,
  input  [4:0] io_wdata_0,
  input  [4:0] io_wdata_1,
  input  [4:0] io_wdata_2
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
`endif // RANDOMIZE_REG_INIT
  reg [4:0] data_0; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_1; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_2; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_3; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_4; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_5; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_6; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_7; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_8; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_9; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_10; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_11; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_12; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_13; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_14; // @[DataModuleTemplate.scala 168:17]
  reg [4:0] data_15; // @[DataModuleTemplate.scala 168:17]
  wire  read_by_0 = io_wen_0 & io_waddr_0 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_1 = io_wen_1 & io_waddr_1 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_2 = io_wen_2 & io_waddr_2 == io_raddr_0; // @[DataModuleTemplate.scala 176:54]
  wire [15:0] addr_dec = 16'h1 << io_raddr_0; // @[OneHot.scala 64:12]
  wire [2:0] _T = {read_by_2,read_by_1,read_by_0}; // @[DataModuleTemplate.scala 178:28]
  wire [4:0] _io_rdata_0_T = read_by_0 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_1 = read_by_1 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_2 = read_by_2 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_3 = _io_rdata_0_T | _io_rdata_0_T_1; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_4 = _io_rdata_0_T_3 | _io_rdata_0_T_2; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_21 = addr_dec[0] ? data_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_22 = addr_dec[1] ? data_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_23 = addr_dec[2] ? data_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_24 = addr_dec[3] ? data_3 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_25 = addr_dec[4] ? data_4 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_26 = addr_dec[5] ? data_5 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_27 = addr_dec[6] ? data_6 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_28 = addr_dec[7] ? data_7 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_29 = addr_dec[8] ? data_8 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_30 = addr_dec[9] ? data_9 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_31 = addr_dec[10] ? data_10 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_32 = addr_dec[11] ? data_11 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_33 = addr_dec[12] ? data_12 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_34 = addr_dec[13] ? data_13 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_35 = addr_dec[14] ? data_14 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_36 = addr_dec[15] ? data_15 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_37 = _io_rdata_0_T_21 | _io_rdata_0_T_22; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_38 = _io_rdata_0_T_37 | _io_rdata_0_T_23; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_39 = _io_rdata_0_T_38 | _io_rdata_0_T_24; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_40 = _io_rdata_0_T_39 | _io_rdata_0_T_25; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_41 = _io_rdata_0_T_40 | _io_rdata_0_T_26; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_42 = _io_rdata_0_T_41 | _io_rdata_0_T_27; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_43 = _io_rdata_0_T_42 | _io_rdata_0_T_28; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_44 = _io_rdata_0_T_43 | _io_rdata_0_T_29; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_45 = _io_rdata_0_T_44 | _io_rdata_0_T_30; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_46 = _io_rdata_0_T_45 | _io_rdata_0_T_31; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_47 = _io_rdata_0_T_46 | _io_rdata_0_T_32; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_48 = _io_rdata_0_T_47 | _io_rdata_0_T_33; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_49 = _io_rdata_0_T_48 | _io_rdata_0_T_34; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_50 = _io_rdata_0_T_49 | _io_rdata_0_T_35; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_0_T_51 = _io_rdata_0_T_50 | _io_rdata_0_T_36; // @[Mux.scala 27:73]
  wire  read_by_0_1 = io_wen_0 & io_waddr_0 == io_raddr_1; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_1_1 = io_wen_1 & io_waddr_1 == io_raddr_1; // @[DataModuleTemplate.scala 176:54]
  wire  read_by_2_1 = io_wen_2 & io_waddr_2 == io_raddr_1; // @[DataModuleTemplate.scala 176:54]
  wire [15:0] addr_dec_1 = 16'h1 << io_raddr_1; // @[OneHot.scala 64:12]
  wire [2:0] _T_2 = {read_by_2_1,read_by_1_1,read_by_0_1}; // @[DataModuleTemplate.scala 178:28]
  wire [4:0] _io_rdata_1_T = read_by_0_1 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_1 = read_by_1_1 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_2 = read_by_2_1 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_3 = _io_rdata_1_T | _io_rdata_1_T_1; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_4 = _io_rdata_1_T_3 | _io_rdata_1_T_2; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_21 = addr_dec_1[0] ? data_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_22 = addr_dec_1[1] ? data_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_23 = addr_dec_1[2] ? data_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_24 = addr_dec_1[3] ? data_3 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_25 = addr_dec_1[4] ? data_4 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_26 = addr_dec_1[5] ? data_5 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_27 = addr_dec_1[6] ? data_6 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_28 = addr_dec_1[7] ? data_7 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_29 = addr_dec_1[8] ? data_8 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_30 = addr_dec_1[9] ? data_9 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_31 = addr_dec_1[10] ? data_10 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_32 = addr_dec_1[11] ? data_11 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_33 = addr_dec_1[12] ? data_12 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_34 = addr_dec_1[13] ? data_13 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_35 = addr_dec_1[14] ? data_14 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_36 = addr_dec_1[15] ? data_15 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_37 = _io_rdata_1_T_21 | _io_rdata_1_T_22; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_38 = _io_rdata_1_T_37 | _io_rdata_1_T_23; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_39 = _io_rdata_1_T_38 | _io_rdata_1_T_24; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_40 = _io_rdata_1_T_39 | _io_rdata_1_T_25; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_41 = _io_rdata_1_T_40 | _io_rdata_1_T_26; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_42 = _io_rdata_1_T_41 | _io_rdata_1_T_27; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_43 = _io_rdata_1_T_42 | _io_rdata_1_T_28; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_44 = _io_rdata_1_T_43 | _io_rdata_1_T_29; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_45 = _io_rdata_1_T_44 | _io_rdata_1_T_30; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_46 = _io_rdata_1_T_45 | _io_rdata_1_T_31; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_47 = _io_rdata_1_T_46 | _io_rdata_1_T_32; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_48 = _io_rdata_1_T_47 | _io_rdata_1_T_33; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_49 = _io_rdata_1_T_48 | _io_rdata_1_T_34; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_50 = _io_rdata_1_T_49 | _io_rdata_1_T_35; // @[Mux.scala 27:73]
  wire [4:0] _io_rdata_1_T_51 = _io_rdata_1_T_50 | _io_rdata_1_T_36; // @[Mux.scala 27:73]
  wire [15:0] waddr_dec_0 = 16'h1 << io_waddr_0; // @[OneHot.scala 57:35]
  wire [15:0] waddr_dec_1 = 16'h1 << io_waddr_1; // @[OneHot.scala 57:35]
  wire [15:0] waddr_dec_2 = 16'h1 << io_waddr_2; // @[OneHot.scala 57:35]
  wire  write_wen_0 = io_wen_0 & waddr_dec_0[0]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1 = io_wen_1 & waddr_dec_1[0]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2 = io_wen_2 & waddr_dec_2[0]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_4 = {write_wen_2,write_wen_1,write_wen_0}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_0_T = write_wen_0 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_0_T_1 = write_wen_1 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_0_T_2 = write_wen_2 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_0_T_3 = _data_0_T | _data_0_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_0_T_4 = _data_0_T_3 | _data_0_T_2; // @[Mux.scala 27:73]
  wire  write_wen_0_1 = io_wen_0 & waddr_dec_0[1]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_1 = io_wen_1 & waddr_dec_1[1]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_1 = io_wen_2 & waddr_dec_2[1]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_6 = {write_wen_2_1,write_wen_1_1,write_wen_0_1}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_1_T = write_wen_0_1 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_1_T_1 = write_wen_1_1 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_1_T_2 = write_wen_2_1 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_1_T_3 = _data_1_T | _data_1_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_1_T_4 = _data_1_T_3 | _data_1_T_2; // @[Mux.scala 27:73]
  wire  write_wen_0_2 = io_wen_0 & waddr_dec_0[2]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_2 = io_wen_1 & waddr_dec_1[2]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_2 = io_wen_2 & waddr_dec_2[2]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_8 = {write_wen_2_2,write_wen_1_2,write_wen_0_2}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_2_T = write_wen_0_2 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_2_T_1 = write_wen_1_2 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_2_T_2 = write_wen_2_2 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_2_T_3 = _data_2_T | _data_2_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_2_T_4 = _data_2_T_3 | _data_2_T_2; // @[Mux.scala 27:73]
  wire  write_wen_0_3 = io_wen_0 & waddr_dec_0[3]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_3 = io_wen_1 & waddr_dec_1[3]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_3 = io_wen_2 & waddr_dec_2[3]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_10 = {write_wen_2_3,write_wen_1_3,write_wen_0_3}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_3_T = write_wen_0_3 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_3_T_1 = write_wen_1_3 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_3_T_2 = write_wen_2_3 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_3_T_3 = _data_3_T | _data_3_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_3_T_4 = _data_3_T_3 | _data_3_T_2; // @[Mux.scala 27:73]
  wire  write_wen_0_4 = io_wen_0 & waddr_dec_0[4]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_4 = io_wen_1 & waddr_dec_1[4]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_4 = io_wen_2 & waddr_dec_2[4]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_12 = {write_wen_2_4,write_wen_1_4,write_wen_0_4}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_4_T = write_wen_0_4 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_4_T_1 = write_wen_1_4 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_4_T_2 = write_wen_2_4 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_4_T_3 = _data_4_T | _data_4_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_4_T_4 = _data_4_T_3 | _data_4_T_2; // @[Mux.scala 27:73]
  wire  write_wen_0_5 = io_wen_0 & waddr_dec_0[5]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_5 = io_wen_1 & waddr_dec_1[5]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_5 = io_wen_2 & waddr_dec_2[5]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_14 = {write_wen_2_5,write_wen_1_5,write_wen_0_5}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_5_T = write_wen_0_5 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_5_T_1 = write_wen_1_5 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_5_T_2 = write_wen_2_5 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_5_T_3 = _data_5_T | _data_5_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_5_T_4 = _data_5_T_3 | _data_5_T_2; // @[Mux.scala 27:73]
  wire  write_wen_0_6 = io_wen_0 & waddr_dec_0[6]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_6 = io_wen_1 & waddr_dec_1[6]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_6 = io_wen_2 & waddr_dec_2[6]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_16 = {write_wen_2_6,write_wen_1_6,write_wen_0_6}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_6_T = write_wen_0_6 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_6_T_1 = write_wen_1_6 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_6_T_2 = write_wen_2_6 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_6_T_3 = _data_6_T | _data_6_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_6_T_4 = _data_6_T_3 | _data_6_T_2; // @[Mux.scala 27:73]
  wire  write_wen_0_7 = io_wen_0 & waddr_dec_0[7]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_7 = io_wen_1 & waddr_dec_1[7]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_7 = io_wen_2 & waddr_dec_2[7]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_18 = {write_wen_2_7,write_wen_1_7,write_wen_0_7}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_7_T = write_wen_0_7 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_7_T_1 = write_wen_1_7 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_7_T_2 = write_wen_2_7 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_7_T_3 = _data_7_T | _data_7_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_7_T_4 = _data_7_T_3 | _data_7_T_2; // @[Mux.scala 27:73]
  wire  write_wen_0_8 = io_wen_0 & waddr_dec_0[8]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_8 = io_wen_1 & waddr_dec_1[8]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_8 = io_wen_2 & waddr_dec_2[8]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_20 = {write_wen_2_8,write_wen_1_8,write_wen_0_8}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_8_T = write_wen_0_8 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_8_T_1 = write_wen_1_8 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_8_T_2 = write_wen_2_8 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_8_T_3 = _data_8_T | _data_8_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_8_T_4 = _data_8_T_3 | _data_8_T_2; // @[Mux.scala 27:73]
  wire  write_wen_0_9 = io_wen_0 & waddr_dec_0[9]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_9 = io_wen_1 & waddr_dec_1[9]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_9 = io_wen_2 & waddr_dec_2[9]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_22 = {write_wen_2_9,write_wen_1_9,write_wen_0_9}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_9_T = write_wen_0_9 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_9_T_1 = write_wen_1_9 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_9_T_2 = write_wen_2_9 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_9_T_3 = _data_9_T | _data_9_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_9_T_4 = _data_9_T_3 | _data_9_T_2; // @[Mux.scala 27:73]
  wire  write_wen_0_10 = io_wen_0 & waddr_dec_0[10]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_10 = io_wen_1 & waddr_dec_1[10]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_10 = io_wen_2 & waddr_dec_2[10]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_24 = {write_wen_2_10,write_wen_1_10,write_wen_0_10}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_10_T = write_wen_0_10 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_10_T_1 = write_wen_1_10 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_10_T_2 = write_wen_2_10 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_10_T_3 = _data_10_T | _data_10_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_10_T_4 = _data_10_T_3 | _data_10_T_2; // @[Mux.scala 27:73]
  wire  write_wen_0_11 = io_wen_0 & waddr_dec_0[11]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_11 = io_wen_1 & waddr_dec_1[11]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_11 = io_wen_2 & waddr_dec_2[11]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_26 = {write_wen_2_11,write_wen_1_11,write_wen_0_11}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_11_T = write_wen_0_11 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_11_T_1 = write_wen_1_11 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_11_T_2 = write_wen_2_11 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_11_T_3 = _data_11_T | _data_11_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_11_T_4 = _data_11_T_3 | _data_11_T_2; // @[Mux.scala 27:73]
  wire  write_wen_0_12 = io_wen_0 & waddr_dec_0[12]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_12 = io_wen_1 & waddr_dec_1[12]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_12 = io_wen_2 & waddr_dec_2[12]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_28 = {write_wen_2_12,write_wen_1_12,write_wen_0_12}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_12_T = write_wen_0_12 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_12_T_1 = write_wen_1_12 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_12_T_2 = write_wen_2_12 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_12_T_3 = _data_12_T | _data_12_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_12_T_4 = _data_12_T_3 | _data_12_T_2; // @[Mux.scala 27:73]
  wire  write_wen_0_13 = io_wen_0 & waddr_dec_0[13]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_13 = io_wen_1 & waddr_dec_1[13]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_13 = io_wen_2 & waddr_dec_2[13]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_30 = {write_wen_2_13,write_wen_1_13,write_wen_0_13}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_13_T = write_wen_0_13 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_13_T_1 = write_wen_1_13 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_13_T_2 = write_wen_2_13 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_13_T_3 = _data_13_T | _data_13_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_13_T_4 = _data_13_T_3 | _data_13_T_2; // @[Mux.scala 27:73]
  wire  write_wen_0_14 = io_wen_0 & waddr_dec_0[14]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_14 = io_wen_1 & waddr_dec_1[14]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_14 = io_wen_2 & waddr_dec_2[14]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_32 = {write_wen_2_14,write_wen_1_14,write_wen_0_14}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_14_T = write_wen_0_14 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_14_T_1 = write_wen_1_14 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_14_T_2 = write_wen_2_14 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_14_T_3 = _data_14_T | _data_14_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_14_T_4 = _data_14_T_3 | _data_14_T_2; // @[Mux.scala 27:73]
  wire  write_wen_0_15 = io_wen_0 & waddr_dec_0[15]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_1_15 = io_wen_1 & waddr_dec_1[15]; // @[DataModuleTemplate.scala 188:57]
  wire  write_wen_2_15 = io_wen_2 & waddr_dec_2[15]; // @[DataModuleTemplate.scala 188:57]
  wire [2:0] _T_34 = {write_wen_2_15,write_wen_1_15,write_wen_0_15}; // @[DataModuleTemplate.scala 189:30]
  wire [4:0] _data_15_T = write_wen_0_15 ? io_wdata_0 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_15_T_1 = write_wen_1_15 ? io_wdata_1 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_15_T_2 = write_wen_2_15 ? io_wdata_2 : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _data_15_T_3 = _data_15_T | _data_15_T_1; // @[Mux.scala 27:73]
  wire [4:0] _data_15_T_4 = _data_15_T_3 | _data_15_T_2; // @[Mux.scala 27:73]
  assign io_rdata_0 = |_T ? _io_rdata_0_T_4 : _io_rdata_0_T_51; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  assign io_rdata_1 = |_T_2 ? _io_rdata_1_T_4 : _io_rdata_1_T_51; // @[DataModuleTemplate.scala 178:40 179:19 181:19]
  always @(negedge clock) begin
    if (|_T_4) begin // @[DataModuleTemplate.scala 189:42]
      data_0 <= _data_0_T_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_6) begin // @[DataModuleTemplate.scala 189:42]
      data_1 <= _data_1_T_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_8) begin // @[DataModuleTemplate.scala 189:42]
      data_2 <= _data_2_T_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_10) begin // @[DataModuleTemplate.scala 189:42]
      data_3 <= _data_3_T_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_12) begin // @[DataModuleTemplate.scala 189:42]
      data_4 <= _data_4_T_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_14) begin // @[DataModuleTemplate.scala 189:42]
      data_5 <= _data_5_T_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_16) begin // @[DataModuleTemplate.scala 189:42]
      data_6 <= _data_6_T_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_18) begin // @[DataModuleTemplate.scala 189:42]
      data_7 <= _data_7_T_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_20) begin // @[DataModuleTemplate.scala 189:42]
      data_8 <= _data_8_T_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_22) begin // @[DataModuleTemplate.scala 189:42]
      data_9 <= _data_9_T_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_24) begin // @[DataModuleTemplate.scala 189:42]
      data_10 <= _data_10_T_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_26) begin // @[DataModuleTemplate.scala 189:42]
      data_11 <= _data_11_T_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_28) begin // @[DataModuleTemplate.scala 189:42]
      data_12 <= _data_12_T_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_30) begin // @[DataModuleTemplate.scala 189:42]
      data_13 <= _data_13_T_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_32) begin // @[DataModuleTemplate.scala 189:42]
      data_14 <= _data_14_T_4; // @[DataModuleTemplate.scala 190:15]
    end
    if (|_T_34) begin // @[DataModuleTemplate.scala 189:42]
      data_15 <= _data_15_T_4; // @[DataModuleTemplate.scala 190:15]
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
  data_0 = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  data_1 = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  data_2 = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  data_3 = _RAND_3[4:0];
  _RAND_4 = {1{`RANDOM}};
  data_4 = _RAND_4[4:0];
  _RAND_5 = {1{`RANDOM}};
  data_5 = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  data_6 = _RAND_6[4:0];
  _RAND_7 = {1{`RANDOM}};
  data_7 = _RAND_7[4:0];
  _RAND_8 = {1{`RANDOM}};
  data_8 = _RAND_8[4:0];
  _RAND_9 = {1{`RANDOM}};
  data_9 = _RAND_9[4:0];
  _RAND_10 = {1{`RANDOM}};
  data_10 = _RAND_10[4:0];
  _RAND_11 = {1{`RANDOM}};
  data_11 = _RAND_11[4:0];
  _RAND_12 = {1{`RANDOM}};
  data_12 = _RAND_12[4:0];
  _RAND_13 = {1{`RANDOM}};
  data_13 = _RAND_13[4:0];
  _RAND_14 = {1{`RANDOM}};
  data_14 = _RAND_14[4:0];
  _RAND_15 = {1{`RANDOM}};
  data_15 = _RAND_15[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

