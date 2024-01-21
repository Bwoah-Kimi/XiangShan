module SQAddrModule(
  input         clock,
  input  [3:0]  io_raddr_0,
  input  [3:0]  io_raddr_1,
  output [35:0] io_rdata_0,
  output [35:0] io_rdata_1,
  output        io_rlineflag_0,
  output        io_rlineflag_1,
  input         io_wen_0,
  input         io_wen_1,
  input  [3:0]  io_waddr_0,
  input  [3:0]  io_waddr_1,
  input  [35:0] io_wdata_0,
  input  [35:0] io_wdata_1,
  input  [15:0] io_wmask_0,
  input  [15:0] io_wmask_1,
  input         io_wlineflag_0,
  input         io_wlineflag_1,
  input  [35:0] io_forwardMdata_0,
  input  [35:0] io_forwardMdata_1,
  input  [15:0] io_forwardDataMask_0,
  input  [15:0] io_forwardDataMask_1,
  output        io_forwardMmask_0_0,
  output        io_forwardMmask_0_1,
  output        io_forwardMmask_0_2,
  output        io_forwardMmask_0_3,
  output        io_forwardMmask_0_4,
  output        io_forwardMmask_0_5,
  output        io_forwardMmask_0_6,
  output        io_forwardMmask_0_7,
  output        io_forwardMmask_0_8,
  output        io_forwardMmask_0_9,
  output        io_forwardMmask_0_10,
  output        io_forwardMmask_0_11,
  output        io_forwardMmask_1_0,
  output        io_forwardMmask_1_1,
  output        io_forwardMmask_1_2,
  output        io_forwardMmask_1_3,
  output        io_forwardMmask_1_4,
  output        io_forwardMmask_1_5,
  output        io_forwardMmask_1_6,
  output        io_forwardMmask_1_7,
  output        io_forwardMmask_1_8,
  output        io_forwardMmask_1_9,
  output        io_forwardMmask_1_10,
  output        io_forwardMmask_1_11
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
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
`endif // RANDOMIZE_REG_INIT
  reg [35:0] data_0; // @[StoreQueueData.scala 53:17]
  reg [35:0] data_1; // @[StoreQueueData.scala 53:17]
  reg [35:0] data_2; // @[StoreQueueData.scala 53:17]
  reg [35:0] data_3; // @[StoreQueueData.scala 53:17]
  reg [35:0] data_4; // @[StoreQueueData.scala 53:17]
  reg [35:0] data_5; // @[StoreQueueData.scala 53:17]
  reg [35:0] data_6; // @[StoreQueueData.scala 53:17]
  reg [35:0] data_7; // @[StoreQueueData.scala 53:17]
  reg [35:0] data_8; // @[StoreQueueData.scala 53:17]
  reg [35:0] data_9; // @[StoreQueueData.scala 53:17]
  reg [35:0] data_10; // @[StoreQueueData.scala 53:17]
  reg [35:0] data_11; // @[StoreQueueData.scala 53:17]
  reg [15:0] mask_0; // @[StoreQueueData.scala 54:17]
  reg [15:0] mask_1; // @[StoreQueueData.scala 54:17]
  reg [15:0] mask_2; // @[StoreQueueData.scala 54:17]
  reg [15:0] mask_3; // @[StoreQueueData.scala 54:17]
  reg [15:0] mask_4; // @[StoreQueueData.scala 54:17]
  reg [15:0] mask_5; // @[StoreQueueData.scala 54:17]
  reg [15:0] mask_6; // @[StoreQueueData.scala 54:17]
  reg [15:0] mask_7; // @[StoreQueueData.scala 54:17]
  reg [15:0] mask_8; // @[StoreQueueData.scala 54:17]
  reg [15:0] mask_9; // @[StoreQueueData.scala 54:17]
  reg [15:0] mask_10; // @[StoreQueueData.scala 54:17]
  reg [15:0] mask_11; // @[StoreQueueData.scala 54:17]
  reg  lineflag_0; // @[StoreQueueData.scala 55:21]
  reg  lineflag_1; // @[StoreQueueData.scala 55:21]
  reg  lineflag_2; // @[StoreQueueData.scala 55:21]
  reg  lineflag_3; // @[StoreQueueData.scala 55:21]
  reg  lineflag_4; // @[StoreQueueData.scala 55:21]
  reg  lineflag_5; // @[StoreQueueData.scala 55:21]
  reg  lineflag_6; // @[StoreQueueData.scala 55:21]
  reg  lineflag_7; // @[StoreQueueData.scala 55:21]
  reg  lineflag_8; // @[StoreQueueData.scala 55:21]
  reg  lineflag_9; // @[StoreQueueData.scala 55:21]
  reg  lineflag_10; // @[StoreQueueData.scala 55:21]
  reg  lineflag_11; // @[StoreQueueData.scala 55:21]
  reg [3:0] io_rdata_0_REG; // @[StoreQueueData.scala 61:32]
  wire [35:0] _GEN_1 = 4'h1 == io_rdata_0_REG ? data_1 : data_0; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_2 = 4'h2 == io_rdata_0_REG ? data_2 : _GEN_1; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_3 = 4'h3 == io_rdata_0_REG ? data_3 : _GEN_2; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_4 = 4'h4 == io_rdata_0_REG ? data_4 : _GEN_3; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_5 = 4'h5 == io_rdata_0_REG ? data_5 : _GEN_4; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_6 = 4'h6 == io_rdata_0_REG ? data_6 : _GEN_5; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_7 = 4'h7 == io_rdata_0_REG ? data_7 : _GEN_6; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_8 = 4'h8 == io_rdata_0_REG ? data_8 : _GEN_7; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_9 = 4'h9 == io_rdata_0_REG ? data_9 : _GEN_8; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_10 = 4'ha == io_rdata_0_REG ? data_10 : _GEN_9; // @[StoreQueueData.scala 61:{17,17}]
  reg [3:0] io_rlineflag_0_REG; // @[StoreQueueData.scala 62:40]
  wire  _GEN_13 = 4'h1 == io_rlineflag_0_REG ? lineflag_1 : lineflag_0; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_14 = 4'h2 == io_rlineflag_0_REG ? lineflag_2 : _GEN_13; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_15 = 4'h3 == io_rlineflag_0_REG ? lineflag_3 : _GEN_14; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_16 = 4'h4 == io_rlineflag_0_REG ? lineflag_4 : _GEN_15; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_17 = 4'h5 == io_rlineflag_0_REG ? lineflag_5 : _GEN_16; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_18 = 4'h6 == io_rlineflag_0_REG ? lineflag_6 : _GEN_17; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_19 = 4'h7 == io_rlineflag_0_REG ? lineflag_7 : _GEN_18; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_20 = 4'h8 == io_rlineflag_0_REG ? lineflag_8 : _GEN_19; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_21 = 4'h9 == io_rlineflag_0_REG ? lineflag_9 : _GEN_20; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_22 = 4'ha == io_rlineflag_0_REG ? lineflag_10 : _GEN_21; // @[StoreQueueData.scala 62:{21,21}]
  reg [3:0] io_rdata_1_REG; // @[StoreQueueData.scala 61:32]
  wire [35:0] _GEN_25 = 4'h1 == io_rdata_1_REG ? data_1 : data_0; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_26 = 4'h2 == io_rdata_1_REG ? data_2 : _GEN_25; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_27 = 4'h3 == io_rdata_1_REG ? data_3 : _GEN_26; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_28 = 4'h4 == io_rdata_1_REG ? data_4 : _GEN_27; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_29 = 4'h5 == io_rdata_1_REG ? data_5 : _GEN_28; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_30 = 4'h6 == io_rdata_1_REG ? data_6 : _GEN_29; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_31 = 4'h7 == io_rdata_1_REG ? data_7 : _GEN_30; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_32 = 4'h8 == io_rdata_1_REG ? data_8 : _GEN_31; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_33 = 4'h9 == io_rdata_1_REG ? data_9 : _GEN_32; // @[StoreQueueData.scala 61:{17,17}]
  wire [35:0] _GEN_34 = 4'ha == io_rdata_1_REG ? data_10 : _GEN_33; // @[StoreQueueData.scala 61:{17,17}]
  reg [3:0] io_rlineflag_1_REG; // @[StoreQueueData.scala 62:40]
  wire  _GEN_37 = 4'h1 == io_rlineflag_1_REG ? lineflag_1 : lineflag_0; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_38 = 4'h2 == io_rlineflag_1_REG ? lineflag_2 : _GEN_37; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_39 = 4'h3 == io_rlineflag_1_REG ? lineflag_3 : _GEN_38; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_40 = 4'h4 == io_rlineflag_1_REG ? lineflag_4 : _GEN_39; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_41 = 4'h5 == io_rlineflag_1_REG ? lineflag_5 : _GEN_40; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_42 = 4'h6 == io_rlineflag_1_REG ? lineflag_6 : _GEN_41; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_43 = 4'h7 == io_rlineflag_1_REG ? lineflag_7 : _GEN_42; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_44 = 4'h8 == io_rlineflag_1_REG ? lineflag_8 : _GEN_43; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_45 = 4'h9 == io_rlineflag_1_REG ? lineflag_9 : _GEN_44; // @[StoreQueueData.scala 62:{21,21}]
  wire  _GEN_46 = 4'ha == io_rlineflag_1_REG ? lineflag_10 : _GEN_45; // @[StoreQueueData.scala 62:{21,21}]
  wire [35:0] _GEN_48 = 4'h0 == io_waddr_0 ? io_wdata_0 : data_0; // @[StoreQueueData.scala 53:17 68:{25,25}]
  wire [35:0] _GEN_49 = 4'h1 == io_waddr_0 ? io_wdata_0 : data_1; // @[StoreQueueData.scala 53:17 68:{25,25}]
  wire [35:0] _GEN_50 = 4'h2 == io_waddr_0 ? io_wdata_0 : data_2; // @[StoreQueueData.scala 53:17 68:{25,25}]
  wire [35:0] _GEN_51 = 4'h3 == io_waddr_0 ? io_wdata_0 : data_3; // @[StoreQueueData.scala 53:17 68:{25,25}]
  wire [35:0] _GEN_52 = 4'h4 == io_waddr_0 ? io_wdata_0 : data_4; // @[StoreQueueData.scala 53:17 68:{25,25}]
  wire [35:0] _GEN_53 = 4'h5 == io_waddr_0 ? io_wdata_0 : data_5; // @[StoreQueueData.scala 53:17 68:{25,25}]
  wire [35:0] _GEN_54 = 4'h6 == io_waddr_0 ? io_wdata_0 : data_6; // @[StoreQueueData.scala 53:17 68:{25,25}]
  wire [35:0] _GEN_55 = 4'h7 == io_waddr_0 ? io_wdata_0 : data_7; // @[StoreQueueData.scala 53:17 68:{25,25}]
  wire [35:0] _GEN_56 = 4'h8 == io_waddr_0 ? io_wdata_0 : data_8; // @[StoreQueueData.scala 53:17 68:{25,25}]
  wire [35:0] _GEN_57 = 4'h9 == io_waddr_0 ? io_wdata_0 : data_9; // @[StoreQueueData.scala 53:17 68:{25,25}]
  wire [35:0] _GEN_58 = 4'ha == io_waddr_0 ? io_wdata_0 : data_10; // @[StoreQueueData.scala 53:17 68:{25,25}]
  wire [35:0] _GEN_59 = 4'hb == io_waddr_0 ? io_wdata_0 : data_11; // @[StoreQueueData.scala 53:17 68:{25,25}]
  wire [15:0] _GEN_60 = 4'h0 == io_waddr_0 ? io_wmask_0 : mask_0; // @[StoreQueueData.scala 54:17 69:{25,25}]
  wire [15:0] _GEN_61 = 4'h1 == io_waddr_0 ? io_wmask_0 : mask_1; // @[StoreQueueData.scala 54:17 69:{25,25}]
  wire [15:0] _GEN_62 = 4'h2 == io_waddr_0 ? io_wmask_0 : mask_2; // @[StoreQueueData.scala 54:17 69:{25,25}]
  wire [15:0] _GEN_63 = 4'h3 == io_waddr_0 ? io_wmask_0 : mask_3; // @[StoreQueueData.scala 54:17 69:{25,25}]
  wire [15:0] _GEN_64 = 4'h4 == io_waddr_0 ? io_wmask_0 : mask_4; // @[StoreQueueData.scala 54:17 69:{25,25}]
  wire [15:0] _GEN_65 = 4'h5 == io_waddr_0 ? io_wmask_0 : mask_5; // @[StoreQueueData.scala 54:17 69:{25,25}]
  wire [15:0] _GEN_66 = 4'h6 == io_waddr_0 ? io_wmask_0 : mask_6; // @[StoreQueueData.scala 54:17 69:{25,25}]
  wire [15:0] _GEN_67 = 4'h7 == io_waddr_0 ? io_wmask_0 : mask_7; // @[StoreQueueData.scala 54:17 69:{25,25}]
  wire [15:0] _GEN_68 = 4'h8 == io_waddr_0 ? io_wmask_0 : mask_8; // @[StoreQueueData.scala 54:17 69:{25,25}]
  wire [15:0] _GEN_69 = 4'h9 == io_waddr_0 ? io_wmask_0 : mask_9; // @[StoreQueueData.scala 54:17 69:{25,25}]
  wire [15:0] _GEN_70 = 4'ha == io_waddr_0 ? io_wmask_0 : mask_10; // @[StoreQueueData.scala 54:17 69:{25,25}]
  wire [15:0] _GEN_71 = 4'hb == io_waddr_0 ? io_wmask_0 : mask_11; // @[StoreQueueData.scala 54:17 69:{25,25}]
  wire  _GEN_72 = 4'h0 == io_waddr_0 ? io_wlineflag_0 : lineflag_0; // @[StoreQueueData.scala 55:21 70:{29,29}]
  wire  _GEN_73 = 4'h1 == io_waddr_0 ? io_wlineflag_0 : lineflag_1; // @[StoreQueueData.scala 55:21 70:{29,29}]
  wire  _GEN_74 = 4'h2 == io_waddr_0 ? io_wlineflag_0 : lineflag_2; // @[StoreQueueData.scala 55:21 70:{29,29}]
  wire  _GEN_75 = 4'h3 == io_waddr_0 ? io_wlineflag_0 : lineflag_3; // @[StoreQueueData.scala 55:21 70:{29,29}]
  wire  _GEN_76 = 4'h4 == io_waddr_0 ? io_wlineflag_0 : lineflag_4; // @[StoreQueueData.scala 55:21 70:{29,29}]
  wire  _GEN_77 = 4'h5 == io_waddr_0 ? io_wlineflag_0 : lineflag_5; // @[StoreQueueData.scala 55:21 70:{29,29}]
  wire  _GEN_78 = 4'h6 == io_waddr_0 ? io_wlineflag_0 : lineflag_6; // @[StoreQueueData.scala 55:21 70:{29,29}]
  wire  _GEN_79 = 4'h7 == io_waddr_0 ? io_wlineflag_0 : lineflag_7; // @[StoreQueueData.scala 55:21 70:{29,29}]
  wire  _GEN_80 = 4'h8 == io_waddr_0 ? io_wlineflag_0 : lineflag_8; // @[StoreQueueData.scala 55:21 70:{29,29}]
  wire  _GEN_81 = 4'h9 == io_waddr_0 ? io_wlineflag_0 : lineflag_9; // @[StoreQueueData.scala 55:21 70:{29,29}]
  wire  _GEN_82 = 4'ha == io_waddr_0 ? io_wlineflag_0 : lineflag_10; // @[StoreQueueData.scala 55:21 70:{29,29}]
  wire  _GEN_83 = 4'hb == io_waddr_0 ? io_wlineflag_0 : lineflag_11; // @[StoreQueueData.scala 55:21 70:{29,29}]
  wire [35:0] _GEN_84 = io_wen_0 ? _GEN_48 : data_0; // @[StoreQueueData.scala 53:17 67:22]
  wire [35:0] _GEN_85 = io_wen_0 ? _GEN_49 : data_1; // @[StoreQueueData.scala 53:17 67:22]
  wire [35:0] _GEN_86 = io_wen_0 ? _GEN_50 : data_2; // @[StoreQueueData.scala 53:17 67:22]
  wire [35:0] _GEN_87 = io_wen_0 ? _GEN_51 : data_3; // @[StoreQueueData.scala 53:17 67:22]
  wire [35:0] _GEN_88 = io_wen_0 ? _GEN_52 : data_4; // @[StoreQueueData.scala 53:17 67:22]
  wire [35:0] _GEN_89 = io_wen_0 ? _GEN_53 : data_5; // @[StoreQueueData.scala 53:17 67:22]
  wire [35:0] _GEN_90 = io_wen_0 ? _GEN_54 : data_6; // @[StoreQueueData.scala 53:17 67:22]
  wire [35:0] _GEN_91 = io_wen_0 ? _GEN_55 : data_7; // @[StoreQueueData.scala 53:17 67:22]
  wire [35:0] _GEN_92 = io_wen_0 ? _GEN_56 : data_8; // @[StoreQueueData.scala 53:17 67:22]
  wire [35:0] _GEN_93 = io_wen_0 ? _GEN_57 : data_9; // @[StoreQueueData.scala 53:17 67:22]
  wire [35:0] _GEN_94 = io_wen_0 ? _GEN_58 : data_10; // @[StoreQueueData.scala 53:17 67:22]
  wire [35:0] _GEN_95 = io_wen_0 ? _GEN_59 : data_11; // @[StoreQueueData.scala 53:17 67:22]
  wire [15:0] _GEN_96 = io_wen_0 ? _GEN_60 : mask_0; // @[StoreQueueData.scala 54:17 67:22]
  wire [15:0] _GEN_97 = io_wen_0 ? _GEN_61 : mask_1; // @[StoreQueueData.scala 54:17 67:22]
  wire [15:0] _GEN_98 = io_wen_0 ? _GEN_62 : mask_2; // @[StoreQueueData.scala 54:17 67:22]
  wire [15:0] _GEN_99 = io_wen_0 ? _GEN_63 : mask_3; // @[StoreQueueData.scala 54:17 67:22]
  wire [15:0] _GEN_100 = io_wen_0 ? _GEN_64 : mask_4; // @[StoreQueueData.scala 54:17 67:22]
  wire [15:0] _GEN_101 = io_wen_0 ? _GEN_65 : mask_5; // @[StoreQueueData.scala 54:17 67:22]
  wire [15:0] _GEN_102 = io_wen_0 ? _GEN_66 : mask_6; // @[StoreQueueData.scala 54:17 67:22]
  wire [15:0] _GEN_103 = io_wen_0 ? _GEN_67 : mask_7; // @[StoreQueueData.scala 54:17 67:22]
  wire [15:0] _GEN_104 = io_wen_0 ? _GEN_68 : mask_8; // @[StoreQueueData.scala 54:17 67:22]
  wire [15:0] _GEN_105 = io_wen_0 ? _GEN_69 : mask_9; // @[StoreQueueData.scala 54:17 67:22]
  wire [15:0] _GEN_106 = io_wen_0 ? _GEN_70 : mask_10; // @[StoreQueueData.scala 54:17 67:22]
  wire [15:0] _GEN_107 = io_wen_0 ? _GEN_71 : mask_11; // @[StoreQueueData.scala 54:17 67:22]
  wire  _GEN_108 = io_wen_0 ? _GEN_72 : lineflag_0; // @[StoreQueueData.scala 55:21 67:22]
  wire  _GEN_109 = io_wen_0 ? _GEN_73 : lineflag_1; // @[StoreQueueData.scala 55:21 67:22]
  wire  _GEN_110 = io_wen_0 ? _GEN_74 : lineflag_2; // @[StoreQueueData.scala 55:21 67:22]
  wire  _GEN_111 = io_wen_0 ? _GEN_75 : lineflag_3; // @[StoreQueueData.scala 55:21 67:22]
  wire  _GEN_112 = io_wen_0 ? _GEN_76 : lineflag_4; // @[StoreQueueData.scala 55:21 67:22]
  wire  _GEN_113 = io_wen_0 ? _GEN_77 : lineflag_5; // @[StoreQueueData.scala 55:21 67:22]
  wire  _GEN_114 = io_wen_0 ? _GEN_78 : lineflag_6; // @[StoreQueueData.scala 55:21 67:22]
  wire  _GEN_115 = io_wen_0 ? _GEN_79 : lineflag_7; // @[StoreQueueData.scala 55:21 67:22]
  wire  _GEN_116 = io_wen_0 ? _GEN_80 : lineflag_8; // @[StoreQueueData.scala 55:21 67:22]
  wire  _GEN_117 = io_wen_0 ? _GEN_81 : lineflag_9; // @[StoreQueueData.scala 55:21 67:22]
  wire  _GEN_118 = io_wen_0 ? _GEN_82 : lineflag_10; // @[StoreQueueData.scala 55:21 67:22]
  wire  _GEN_119 = io_wen_0 ? _GEN_83 : lineflag_11; // @[StoreQueueData.scala 55:21 67:22]
  wire  linehit = io_forwardMdata_0[35:6] == data_0[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_4 = mask_0 & io_forwardDataMask_0; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_5 = |_hit128bit_T_4; // @[StoreQueueData.scala 80:88]
  wire  hit128bit = io_forwardMdata_0[5:4] == data_0[5:4] & _hit128bit_T_5; // @[StoreQueueData.scala 79:134]
  wire  linehit_1 = io_forwardMdata_0[35:6] == data_1[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_11 = mask_1 & io_forwardDataMask_0; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_12 = |_hit128bit_T_11; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_1 = io_forwardMdata_0[5:4] == data_1[5:4] & _hit128bit_T_12; // @[StoreQueueData.scala 79:134]
  wire  linehit_2 = io_forwardMdata_0[35:6] == data_2[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_18 = mask_2 & io_forwardDataMask_0; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_19 = |_hit128bit_T_18; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_2 = io_forwardMdata_0[5:4] == data_2[5:4] & _hit128bit_T_19; // @[StoreQueueData.scala 79:134]
  wire  linehit_3 = io_forwardMdata_0[35:6] == data_3[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_25 = mask_3 & io_forwardDataMask_0; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_26 = |_hit128bit_T_25; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_3 = io_forwardMdata_0[5:4] == data_3[5:4] & _hit128bit_T_26; // @[StoreQueueData.scala 79:134]
  wire  linehit_4 = io_forwardMdata_0[35:6] == data_4[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_32 = mask_4 & io_forwardDataMask_0; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_33 = |_hit128bit_T_32; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_4 = io_forwardMdata_0[5:4] == data_4[5:4] & _hit128bit_T_33; // @[StoreQueueData.scala 79:134]
  wire  linehit_5 = io_forwardMdata_0[35:6] == data_5[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_39 = mask_5 & io_forwardDataMask_0; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_40 = |_hit128bit_T_39; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_5 = io_forwardMdata_0[5:4] == data_5[5:4] & _hit128bit_T_40; // @[StoreQueueData.scala 79:134]
  wire  linehit_6 = io_forwardMdata_0[35:6] == data_6[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_46 = mask_6 & io_forwardDataMask_0; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_47 = |_hit128bit_T_46; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_6 = io_forwardMdata_0[5:4] == data_6[5:4] & _hit128bit_T_47; // @[StoreQueueData.scala 79:134]
  wire  linehit_7 = io_forwardMdata_0[35:6] == data_7[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_53 = mask_7 & io_forwardDataMask_0; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_54 = |_hit128bit_T_53; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_7 = io_forwardMdata_0[5:4] == data_7[5:4] & _hit128bit_T_54; // @[StoreQueueData.scala 79:134]
  wire  linehit_8 = io_forwardMdata_0[35:6] == data_8[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_60 = mask_8 & io_forwardDataMask_0; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_61 = |_hit128bit_T_60; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_8 = io_forwardMdata_0[5:4] == data_8[5:4] & _hit128bit_T_61; // @[StoreQueueData.scala 79:134]
  wire  linehit_9 = io_forwardMdata_0[35:6] == data_9[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_67 = mask_9 & io_forwardDataMask_0; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_68 = |_hit128bit_T_67; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_9 = io_forwardMdata_0[5:4] == data_9[5:4] & _hit128bit_T_68; // @[StoreQueueData.scala 79:134]
  wire  linehit_10 = io_forwardMdata_0[35:6] == data_10[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_74 = mask_10 & io_forwardDataMask_0; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_75 = |_hit128bit_T_74; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_10 = io_forwardMdata_0[5:4] == data_10[5:4] & _hit128bit_T_75; // @[StoreQueueData.scala 79:134]
  wire  linehit_11 = io_forwardMdata_0[35:6] == data_11[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_81 = mask_11 & io_forwardDataMask_0; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_82 = |_hit128bit_T_81; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_11 = io_forwardMdata_0[5:4] == data_11[5:4] & _hit128bit_T_82; // @[StoreQueueData.scala 79:134]
  wire  linehit_12 = io_forwardMdata_1[35:6] == data_0[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_88 = mask_0 & io_forwardDataMask_1; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_89 = |_hit128bit_T_88; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_12 = io_forwardMdata_1[5:4] == data_0[5:4] & _hit128bit_T_89; // @[StoreQueueData.scala 79:134]
  wire  linehit_13 = io_forwardMdata_1[35:6] == data_1[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_95 = mask_1 & io_forwardDataMask_1; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_96 = |_hit128bit_T_95; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_13 = io_forwardMdata_1[5:4] == data_1[5:4] & _hit128bit_T_96; // @[StoreQueueData.scala 79:134]
  wire  linehit_14 = io_forwardMdata_1[35:6] == data_2[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_102 = mask_2 & io_forwardDataMask_1; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_103 = |_hit128bit_T_102; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_14 = io_forwardMdata_1[5:4] == data_2[5:4] & _hit128bit_T_103; // @[StoreQueueData.scala 79:134]
  wire  linehit_15 = io_forwardMdata_1[35:6] == data_3[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_109 = mask_3 & io_forwardDataMask_1; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_110 = |_hit128bit_T_109; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_15 = io_forwardMdata_1[5:4] == data_3[5:4] & _hit128bit_T_110; // @[StoreQueueData.scala 79:134]
  wire  linehit_16 = io_forwardMdata_1[35:6] == data_4[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_116 = mask_4 & io_forwardDataMask_1; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_117 = |_hit128bit_T_116; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_16 = io_forwardMdata_1[5:4] == data_4[5:4] & _hit128bit_T_117; // @[StoreQueueData.scala 79:134]
  wire  linehit_17 = io_forwardMdata_1[35:6] == data_5[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_123 = mask_5 & io_forwardDataMask_1; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_124 = |_hit128bit_T_123; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_17 = io_forwardMdata_1[5:4] == data_5[5:4] & _hit128bit_T_124; // @[StoreQueueData.scala 79:134]
  wire  linehit_18 = io_forwardMdata_1[35:6] == data_6[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_130 = mask_6 & io_forwardDataMask_1; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_131 = |_hit128bit_T_130; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_18 = io_forwardMdata_1[5:4] == data_6[5:4] & _hit128bit_T_131; // @[StoreQueueData.scala 79:134]
  wire  linehit_19 = io_forwardMdata_1[35:6] == data_7[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_137 = mask_7 & io_forwardDataMask_1; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_138 = |_hit128bit_T_137; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_19 = io_forwardMdata_1[5:4] == data_7[5:4] & _hit128bit_T_138; // @[StoreQueueData.scala 79:134]
  wire  linehit_20 = io_forwardMdata_1[35:6] == data_8[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_144 = mask_8 & io_forwardDataMask_1; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_145 = |_hit128bit_T_144; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_20 = io_forwardMdata_1[5:4] == data_8[5:4] & _hit128bit_T_145; // @[StoreQueueData.scala 79:134]
  wire  linehit_21 = io_forwardMdata_1[35:6] == data_9[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_151 = mask_9 & io_forwardDataMask_1; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_152 = |_hit128bit_T_151; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_21 = io_forwardMdata_1[5:4] == data_9[5:4] & _hit128bit_T_152; // @[StoreQueueData.scala 79:134]
  wire  linehit_22 = io_forwardMdata_1[35:6] == data_10[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_158 = mask_10 & io_forwardDataMask_1; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_159 = |_hit128bit_T_158; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_22 = io_forwardMdata_1[5:4] == data_10[5:4] & _hit128bit_T_159; // @[StoreQueueData.scala 79:134]
  wire  linehit_23 = io_forwardMdata_1[35:6] == data_11[35:6]; // @[StoreQueueData.scala 78:71]
  wire [15:0] _hit128bit_T_165 = mask_11 & io_forwardDataMask_1; // @[StoreQueueData.scala 80:63]
  wire  _hit128bit_T_166 = |_hit128bit_T_165; // @[StoreQueueData.scala 80:88]
  wire  hit128bit_23 = io_forwardMdata_1[5:4] == data_11[5:4] & _hit128bit_T_166; // @[StoreQueueData.scala 79:134]
  assign io_rdata_0 = 4'hb == io_rdata_0_REG ? data_11 : _GEN_10; // @[StoreQueueData.scala 61:{17,17}]
  assign io_rdata_1 = 4'hb == io_rdata_1_REG ? data_11 : _GEN_34; // @[StoreQueueData.scala 61:{17,17}]
  assign io_rlineflag_0 = 4'hb == io_rlineflag_0_REG ? lineflag_11 : _GEN_22; // @[StoreQueueData.scala 62:{21,21}]
  assign io_rlineflag_1 = 4'hb == io_rlineflag_1_REG ? lineflag_11 : _GEN_46; // @[StoreQueueData.scala 62:{21,21}]
  assign io_forwardMmask_0_0 = linehit & (hit128bit | lineflag_0); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_0_1 = linehit_1 & (hit128bit_1 | lineflag_1); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_0_2 = linehit_2 & (hit128bit_2 | lineflag_2); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_0_3 = linehit_3 & (hit128bit_3 | lineflag_3); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_0_4 = linehit_4 & (hit128bit_4 | lineflag_4); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_0_5 = linehit_5 & (hit128bit_5 | lineflag_5); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_0_6 = linehit_6 & (hit128bit_6 | lineflag_6); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_0_7 = linehit_7 & (hit128bit_7 | lineflag_7); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_0_8 = linehit_8 & (hit128bit_8 | lineflag_8); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_0_9 = linehit_9 & (hit128bit_9 | lineflag_9); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_0_10 = linehit_10 & (hit128bit_10 | lineflag_10); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_0_11 = linehit_11 & (hit128bit_11 | lineflag_11); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_1_0 = linehit_12 & (hit128bit_12 | lineflag_0); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_1_1 = linehit_13 & (hit128bit_13 | lineflag_1); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_1_2 = linehit_14 & (hit128bit_14 | lineflag_2); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_1_3 = linehit_15 & (hit128bit_15 | lineflag_3); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_1_4 = linehit_16 & (hit128bit_16 | lineflag_4); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_1_5 = linehit_17 & (hit128bit_17 | lineflag_5); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_1_6 = linehit_18 & (hit128bit_18 | lineflag_6); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_1_7 = linehit_19 & (hit128bit_19 | lineflag_7); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_1_8 = linehit_20 & (hit128bit_20 | lineflag_8); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_1_9 = linehit_21 & (hit128bit_21 | lineflag_9); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_1_10 = linehit_22 & (hit128bit_22 | lineflag_10); // @[StoreQueueData.scala 81:40]
  assign io_forwardMmask_1_11 = linehit_23 & (hit128bit_23 | lineflag_11); // @[StoreQueueData.scala 81:40]
  always @(posedge clock) begin
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h0 == io_waddr_1) begin // @[StoreQueueData.scala 68:25]
        data_0 <= io_wdata_1; // @[StoreQueueData.scala 68:25]
      end else begin
        data_0 <= _GEN_84;
      end
    end else begin
      data_0 <= _GEN_84;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h1 == io_waddr_1) begin // @[StoreQueueData.scala 68:25]
        data_1 <= io_wdata_1; // @[StoreQueueData.scala 68:25]
      end else begin
        data_1 <= _GEN_85;
      end
    end else begin
      data_1 <= _GEN_85;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h2 == io_waddr_1) begin // @[StoreQueueData.scala 68:25]
        data_2 <= io_wdata_1; // @[StoreQueueData.scala 68:25]
      end else begin
        data_2 <= _GEN_86;
      end
    end else begin
      data_2 <= _GEN_86;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h3 == io_waddr_1) begin // @[StoreQueueData.scala 68:25]
        data_3 <= io_wdata_1; // @[StoreQueueData.scala 68:25]
      end else begin
        data_3 <= _GEN_87;
      end
    end else begin
      data_3 <= _GEN_87;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h4 == io_waddr_1) begin // @[StoreQueueData.scala 68:25]
        data_4 <= io_wdata_1; // @[StoreQueueData.scala 68:25]
      end else begin
        data_4 <= _GEN_88;
      end
    end else begin
      data_4 <= _GEN_88;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h5 == io_waddr_1) begin // @[StoreQueueData.scala 68:25]
        data_5 <= io_wdata_1; // @[StoreQueueData.scala 68:25]
      end else begin
        data_5 <= _GEN_89;
      end
    end else begin
      data_5 <= _GEN_89;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h6 == io_waddr_1) begin // @[StoreQueueData.scala 68:25]
        data_6 <= io_wdata_1; // @[StoreQueueData.scala 68:25]
      end else begin
        data_6 <= _GEN_90;
      end
    end else begin
      data_6 <= _GEN_90;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h7 == io_waddr_1) begin // @[StoreQueueData.scala 68:25]
        data_7 <= io_wdata_1; // @[StoreQueueData.scala 68:25]
      end else begin
        data_7 <= _GEN_91;
      end
    end else begin
      data_7 <= _GEN_91;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h8 == io_waddr_1) begin // @[StoreQueueData.scala 68:25]
        data_8 <= io_wdata_1; // @[StoreQueueData.scala 68:25]
      end else begin
        data_8 <= _GEN_92;
      end
    end else begin
      data_8 <= _GEN_92;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h9 == io_waddr_1) begin // @[StoreQueueData.scala 68:25]
        data_9 <= io_wdata_1; // @[StoreQueueData.scala 68:25]
      end else begin
        data_9 <= _GEN_93;
      end
    end else begin
      data_9 <= _GEN_93;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'ha == io_waddr_1) begin // @[StoreQueueData.scala 68:25]
        data_10 <= io_wdata_1; // @[StoreQueueData.scala 68:25]
      end else begin
        data_10 <= _GEN_94;
      end
    end else begin
      data_10 <= _GEN_94;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'hb == io_waddr_1) begin // @[StoreQueueData.scala 68:25]
        data_11 <= io_wdata_1; // @[StoreQueueData.scala 68:25]
      end else begin
        data_11 <= _GEN_95;
      end
    end else begin
      data_11 <= _GEN_95;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h0 == io_waddr_1) begin // @[StoreQueueData.scala 69:25]
        mask_0 <= io_wmask_1; // @[StoreQueueData.scala 69:25]
      end else begin
        mask_0 <= _GEN_96;
      end
    end else begin
      mask_0 <= _GEN_96;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h1 == io_waddr_1) begin // @[StoreQueueData.scala 69:25]
        mask_1 <= io_wmask_1; // @[StoreQueueData.scala 69:25]
      end else begin
        mask_1 <= _GEN_97;
      end
    end else begin
      mask_1 <= _GEN_97;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h2 == io_waddr_1) begin // @[StoreQueueData.scala 69:25]
        mask_2 <= io_wmask_1; // @[StoreQueueData.scala 69:25]
      end else begin
        mask_2 <= _GEN_98;
      end
    end else begin
      mask_2 <= _GEN_98;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h3 == io_waddr_1) begin // @[StoreQueueData.scala 69:25]
        mask_3 <= io_wmask_1; // @[StoreQueueData.scala 69:25]
      end else begin
        mask_3 <= _GEN_99;
      end
    end else begin
      mask_3 <= _GEN_99;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h4 == io_waddr_1) begin // @[StoreQueueData.scala 69:25]
        mask_4 <= io_wmask_1; // @[StoreQueueData.scala 69:25]
      end else begin
        mask_4 <= _GEN_100;
      end
    end else begin
      mask_4 <= _GEN_100;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h5 == io_waddr_1) begin // @[StoreQueueData.scala 69:25]
        mask_5 <= io_wmask_1; // @[StoreQueueData.scala 69:25]
      end else begin
        mask_5 <= _GEN_101;
      end
    end else begin
      mask_5 <= _GEN_101;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h6 == io_waddr_1) begin // @[StoreQueueData.scala 69:25]
        mask_6 <= io_wmask_1; // @[StoreQueueData.scala 69:25]
      end else begin
        mask_6 <= _GEN_102;
      end
    end else begin
      mask_6 <= _GEN_102;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h7 == io_waddr_1) begin // @[StoreQueueData.scala 69:25]
        mask_7 <= io_wmask_1; // @[StoreQueueData.scala 69:25]
      end else begin
        mask_7 <= _GEN_103;
      end
    end else begin
      mask_7 <= _GEN_103;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h8 == io_waddr_1) begin // @[StoreQueueData.scala 69:25]
        mask_8 <= io_wmask_1; // @[StoreQueueData.scala 69:25]
      end else begin
        mask_8 <= _GEN_104;
      end
    end else begin
      mask_8 <= _GEN_104;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h9 == io_waddr_1) begin // @[StoreQueueData.scala 69:25]
        mask_9 <= io_wmask_1; // @[StoreQueueData.scala 69:25]
      end else begin
        mask_9 <= _GEN_105;
      end
    end else begin
      mask_9 <= _GEN_105;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'ha == io_waddr_1) begin // @[StoreQueueData.scala 69:25]
        mask_10 <= io_wmask_1; // @[StoreQueueData.scala 69:25]
      end else begin
        mask_10 <= _GEN_106;
      end
    end else begin
      mask_10 <= _GEN_106;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'hb == io_waddr_1) begin // @[StoreQueueData.scala 69:25]
        mask_11 <= io_wmask_1; // @[StoreQueueData.scala 69:25]
      end else begin
        mask_11 <= _GEN_107;
      end
    end else begin
      mask_11 <= _GEN_107;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h0 == io_waddr_1) begin // @[StoreQueueData.scala 70:29]
        lineflag_0 <= io_wlineflag_1; // @[StoreQueueData.scala 70:29]
      end else begin
        lineflag_0 <= _GEN_108;
      end
    end else begin
      lineflag_0 <= _GEN_108;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h1 == io_waddr_1) begin // @[StoreQueueData.scala 70:29]
        lineflag_1 <= io_wlineflag_1; // @[StoreQueueData.scala 70:29]
      end else begin
        lineflag_1 <= _GEN_109;
      end
    end else begin
      lineflag_1 <= _GEN_109;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h2 == io_waddr_1) begin // @[StoreQueueData.scala 70:29]
        lineflag_2 <= io_wlineflag_1; // @[StoreQueueData.scala 70:29]
      end else begin
        lineflag_2 <= _GEN_110;
      end
    end else begin
      lineflag_2 <= _GEN_110;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h3 == io_waddr_1) begin // @[StoreQueueData.scala 70:29]
        lineflag_3 <= io_wlineflag_1; // @[StoreQueueData.scala 70:29]
      end else begin
        lineflag_3 <= _GEN_111;
      end
    end else begin
      lineflag_3 <= _GEN_111;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h4 == io_waddr_1) begin // @[StoreQueueData.scala 70:29]
        lineflag_4 <= io_wlineflag_1; // @[StoreQueueData.scala 70:29]
      end else begin
        lineflag_4 <= _GEN_112;
      end
    end else begin
      lineflag_4 <= _GEN_112;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h5 == io_waddr_1) begin // @[StoreQueueData.scala 70:29]
        lineflag_5 <= io_wlineflag_1; // @[StoreQueueData.scala 70:29]
      end else begin
        lineflag_5 <= _GEN_113;
      end
    end else begin
      lineflag_5 <= _GEN_113;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h6 == io_waddr_1) begin // @[StoreQueueData.scala 70:29]
        lineflag_6 <= io_wlineflag_1; // @[StoreQueueData.scala 70:29]
      end else begin
        lineflag_6 <= _GEN_114;
      end
    end else begin
      lineflag_6 <= _GEN_114;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h7 == io_waddr_1) begin // @[StoreQueueData.scala 70:29]
        lineflag_7 <= io_wlineflag_1; // @[StoreQueueData.scala 70:29]
      end else begin
        lineflag_7 <= _GEN_115;
      end
    end else begin
      lineflag_7 <= _GEN_115;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h8 == io_waddr_1) begin // @[StoreQueueData.scala 70:29]
        lineflag_8 <= io_wlineflag_1; // @[StoreQueueData.scala 70:29]
      end else begin
        lineflag_8 <= _GEN_116;
      end
    end else begin
      lineflag_8 <= _GEN_116;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'h9 == io_waddr_1) begin // @[StoreQueueData.scala 70:29]
        lineflag_9 <= io_wlineflag_1; // @[StoreQueueData.scala 70:29]
      end else begin
        lineflag_9 <= _GEN_117;
      end
    end else begin
      lineflag_9 <= _GEN_117;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'ha == io_waddr_1) begin // @[StoreQueueData.scala 70:29]
        lineflag_10 <= io_wlineflag_1; // @[StoreQueueData.scala 70:29]
      end else begin
        lineflag_10 <= _GEN_118;
      end
    end else begin
      lineflag_10 <= _GEN_118;
    end
    if (io_wen_1) begin // @[StoreQueueData.scala 67:22]
      if (4'hb == io_waddr_1) begin // @[StoreQueueData.scala 70:29]
        lineflag_11 <= io_wlineflag_1; // @[StoreQueueData.scala 70:29]
      end else begin
        lineflag_11 <= _GEN_119;
      end
    end else begin
      lineflag_11 <= _GEN_119;
    end
    io_rdata_0_REG <= io_raddr_0; // @[StoreQueueData.scala 61:32]
    io_rlineflag_0_REG <= io_raddr_0; // @[StoreQueueData.scala 62:40]
    io_rdata_1_REG <= io_raddr_1; // @[StoreQueueData.scala 61:32]
    io_rlineflag_1_REG <= io_raddr_1; // @[StoreQueueData.scala 62:40]
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
  _RAND_0 = {2{`RANDOM}};
  data_0 = _RAND_0[35:0];
  _RAND_1 = {2{`RANDOM}};
  data_1 = _RAND_1[35:0];
  _RAND_2 = {2{`RANDOM}};
  data_2 = _RAND_2[35:0];
  _RAND_3 = {2{`RANDOM}};
  data_3 = _RAND_3[35:0];
  _RAND_4 = {2{`RANDOM}};
  data_4 = _RAND_4[35:0];
  _RAND_5 = {2{`RANDOM}};
  data_5 = _RAND_5[35:0];
  _RAND_6 = {2{`RANDOM}};
  data_6 = _RAND_6[35:0];
  _RAND_7 = {2{`RANDOM}};
  data_7 = _RAND_7[35:0];
  _RAND_8 = {2{`RANDOM}};
  data_8 = _RAND_8[35:0];
  _RAND_9 = {2{`RANDOM}};
  data_9 = _RAND_9[35:0];
  _RAND_10 = {2{`RANDOM}};
  data_10 = _RAND_10[35:0];
  _RAND_11 = {2{`RANDOM}};
  data_11 = _RAND_11[35:0];
  _RAND_12 = {1{`RANDOM}};
  mask_0 = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  mask_1 = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  mask_2 = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  mask_3 = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  mask_4 = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  mask_5 = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  mask_6 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  mask_7 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  mask_8 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  mask_9 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  mask_10 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  mask_11 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  lineflag_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  lineflag_1 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  lineflag_2 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  lineflag_3 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  lineflag_4 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  lineflag_5 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  lineflag_6 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  lineflag_7 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  lineflag_8 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  lineflag_9 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  lineflag_10 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  lineflag_11 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  io_rdata_0_REG = _RAND_36[3:0];
  _RAND_37 = {1{`RANDOM}};
  io_rlineflag_0_REG = _RAND_37[3:0];
  _RAND_38 = {1{`RANDOM}};
  io_rdata_1_REG = _RAND_38[3:0];
  _RAND_39 = {1{`RANDOM}};
  io_rlineflag_1_REG = _RAND_39[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

