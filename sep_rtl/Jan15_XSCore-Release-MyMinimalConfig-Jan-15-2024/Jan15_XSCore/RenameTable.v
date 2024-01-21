module RenameTable(
  input        clock,
  input        reset,
  input        io_redirect,
  input        io_readPorts_0_hold,
  input  [4:0] io_readPorts_0_addr,
  output [5:0] io_readPorts_0_data,
  input        io_readPorts_1_hold,
  input  [4:0] io_readPorts_1_addr,
  output [5:0] io_readPorts_1_data,
  input        io_readPorts_3_hold,
  input  [4:0] io_readPorts_3_addr,
  output [5:0] io_readPorts_3_data,
  input        io_readPorts_4_hold,
  input  [4:0] io_readPorts_4_addr,
  output [5:0] io_readPorts_4_data,
  input        io_specWritePorts_0_wen,
  input  [4:0] io_specWritePorts_0_addr,
  input  [5:0] io_specWritePorts_0_data,
  input        io_specWritePorts_1_wen,
  input  [4:0] io_specWritePorts_1_addr,
  input  [5:0] io_specWritePorts_1_data,
  input        io_archWritePorts_0_wen,
  input  [4:0] io_archWritePorts_0_addr,
  input  [5:0] io_archWritePorts_0_data,
  input        io_archWritePorts_1_wen,
  input  [4:0] io_archWritePorts_1_addr,
  input  [5:0] io_archWritePorts_1_data,
  output [5:0] io_old_pdest_0,
  output [5:0] io_old_pdest_1,
  output       io_need_free_0,
  output       io_need_free_1,
  input        io_snpt_snptEnq,
  input        io_snpt_snptDeq,
  input        io_snpt_useSnpt,
  input  [1:0] io_snpt_snptSelect,
  output [5:0] io_debug_rdata_0,
  output [5:0] io_debug_rdata_1,
  output [5:0] io_debug_rdata_2,
  output [5:0] io_debug_rdata_3,
  output [5:0] io_debug_rdata_4,
  output [5:0] io_debug_rdata_5,
  output [5:0] io_debug_rdata_6,
  output [5:0] io_debug_rdata_7,
  output [5:0] io_debug_rdata_8,
  output [5:0] io_debug_rdata_9,
  output [5:0] io_debug_rdata_10,
  output [5:0] io_debug_rdata_11,
  output [5:0] io_debug_rdata_12,
  output [5:0] io_debug_rdata_13,
  output [5:0] io_debug_rdata_14,
  output [5:0] io_debug_rdata_15,
  output [5:0] io_debug_rdata_16,
  output [5:0] io_debug_rdata_17,
  output [5:0] io_debug_rdata_18,
  output [5:0] io_debug_rdata_19,
  output [5:0] io_debug_rdata_20,
  output [5:0] io_debug_rdata_21,
  output [5:0] io_debug_rdata_22,
  output [5:0] io_debug_rdata_23,
  output [5:0] io_debug_rdata_24,
  output [5:0] io_debug_rdata_25,
  output [5:0] io_debug_rdata_26,
  output [5:0] io_debug_rdata_27,
  output [5:0] io_debug_rdata_28,
  output [5:0] io_debug_rdata_29,
  output [5:0] io_debug_rdata_30,
  output [5:0] io_debug_rdata_31
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
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
`endif // RANDOMIZE_REG_INIT
  wire  snapshots_snapshotGen_clock; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_reset; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_enq; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_0; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_1; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_2; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_3; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_4; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_5; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_6; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_7; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_8; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_9; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_10; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_11; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_12; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_13; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_14; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_15; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_16; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_17; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_18; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_19; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_20; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_21; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_22; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_23; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_24; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_25; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_26; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_27; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_28; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_29; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_30; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_enqData_0_31; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_deq; // @[CtrlBlock.scala 49:29]
  wire  snapshots_snapshotGen_io_flush; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_0; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_1; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_2; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_3; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_4; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_5; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_6; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_7; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_8; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_9; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_10; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_11; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_12; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_13; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_14; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_15; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_16; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_17; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_18; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_19; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_20; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_21; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_22; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_23; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_24; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_25; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_26; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_27; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_28; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_29; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_30; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_0_31; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_0; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_1; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_2; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_3; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_4; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_5; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_6; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_7; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_8; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_9; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_10; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_11; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_12; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_13; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_14; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_15; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_16; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_17; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_18; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_19; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_20; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_21; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_22; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_23; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_24; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_25; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_26; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_27; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_28; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_29; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_30; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_1_31; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_0; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_1; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_2; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_3; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_4; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_5; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_6; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_7; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_8; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_9; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_10; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_11; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_12; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_13; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_14; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_15; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_16; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_17; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_18; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_19; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_20; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_21; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_22; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_23; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_24; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_25; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_26; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_27; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_28; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_29; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_30; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_2_31; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_0; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_1; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_2; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_3; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_4; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_5; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_6; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_7; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_8; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_9; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_10; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_11; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_12; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_13; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_14; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_15; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_16; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_17; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_18; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_19; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_20; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_21; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_22; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_23; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_24; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_25; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_26; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_27; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_28; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_29; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_30; // @[CtrlBlock.scala 49:29]
  wire [5:0] snapshots_snapshotGen_io_snapshots_3_31; // @[CtrlBlock.scala 49:29]
  reg [5:0] spec_table_0; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_1; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_2; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_3; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_4; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_5; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_6; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_7; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_8; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_9; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_10; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_11; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_12; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_13; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_14; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_15; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_16; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_17; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_18; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_19; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_20; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_21; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_22; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_23; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_24; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_25; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_26; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_27; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_28; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_29; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_30; // @[RenameTable.scala 54:27]
  reg [5:0] spec_table_31; // @[RenameTable.scala 54:27]
  reg [5:0] arch_table_0; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_1; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_2; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_3; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_4; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_5; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_6; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_7; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_8; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_9; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_10; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_11; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_12; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_13; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_14; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_15; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_16; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_17; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_18; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_19; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_20; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_21; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_22; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_23; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_24; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_25; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_26; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_27; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_28; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_29; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_30; // @[RenameTable.scala 57:27]
  reg [5:0] arch_table_31; // @[RenameTable.scala 57:27]
  reg [5:0] old_pdest_0; // @[RenameTable.scala 60:26]
  reg [5:0] old_pdest_1; // @[RenameTable.scala 60:26]
  reg  need_free_0; // @[RenameTable.scala 61:26]
  reg  need_free_1; // @[RenameTable.scala 61:26]
  reg  t1_redirect; // @[RenameTable.scala 68:28]
  reg  t1_snpt_useSnpt; // @[RenameTable.scala 73:24]
  reg [1:0] t1_snpt_snptSelect; // @[RenameTable.scala 73:24]
  wire [5:0] _GEN_198 = snapshots_snapshotGen_io_snapshots_0_0; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_199 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_0 : _GEN_198; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_200 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_0 : _GEN_199; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_201 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_0 : _GEN_200; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_0_T = t1_snpt_useSnpt ? _GEN_201 : arch_table_0; // @[RenameTable.scala 85:10]
  reg  t1_wSpec_1_wen; // @[RenameTable.scala 71:25]
  reg [4:0] t1_wSpec_1_addr; // @[RenameTable.scala 71:25]
  wire [31:0] _t1_wSpec_addr_T_1 = 32'h1 << t1_wSpec_1_addr; // @[OneHot.scala 57:35]
  wire [31:0] t1_wSpec_addr_1 = t1_wSpec_1_wen ? _t1_wSpec_addr_T_1 : 32'h0; // @[RenameTable.scala 78:44]
  wire  matchVec_1 = t1_wSpec_addr_1[0]; // @[RenameTable.scala 80:44]
  reg  t1_wSpec_0_wen; // @[RenameTable.scala 71:25]
  reg [4:0] t1_wSpec_0_addr; // @[RenameTable.scala 71:25]
  wire [31:0] _t1_wSpec_addr_T = 32'h1 << t1_wSpec_0_addr; // @[OneHot.scala 57:35]
  wire [31:0] t1_wSpec_addr_0 = t1_wSpec_0_wen ? _t1_wSpec_addr_T : 32'h0; // @[RenameTable.scala 78:44]
  wire  matchVec_0 = t1_wSpec_addr_0[0]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_0_T_1 = {matchVec_1,matchVec_0}; // @[RenameTable.scala 86:29]
  reg [5:0] t1_wSpec_1_data; // @[RenameTable.scala 71:25]
  reg [5:0] t1_wSpec_0_data; // @[RenameTable.scala 71:25]
  wire [5:0] wMatch = matchVec_1 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_0_T_3 = |_spec_table_next_0_T_1 ? wMatch : spec_table_0; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_0 = t1_redirect ? _spec_table_next_0_T : _spec_table_next_0_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_202 = snapshots_snapshotGen_io_snapshots_0_1; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_203 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_1 : _GEN_202; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_204 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_1 : _GEN_203; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_205 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_1 : _GEN_204; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_1_T = t1_snpt_useSnpt ? _GEN_205 : arch_table_1; // @[RenameTable.scala 85:10]
  wire  matchVec_1_1 = t1_wSpec_addr_1[1]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_1 = t1_wSpec_addr_0[1]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_1_T_1 = {matchVec_1_1,matchVec_0_1}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_1 = matchVec_1_1 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_1_T_3 = |_spec_table_next_1_T_1 ? wMatch_1 : spec_table_1; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_1 = t1_redirect ? _spec_table_next_1_T : _spec_table_next_1_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_1 = 5'h1 == io_readPorts_0_addr ? spec_table_next_1 : spec_table_next_0; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_206 = snapshots_snapshotGen_io_snapshots_0_2; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_207 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_2 : _GEN_206; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_208 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_2 : _GEN_207; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_209 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_2 : _GEN_208; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_2_T = t1_snpt_useSnpt ? _GEN_209 : arch_table_2; // @[RenameTable.scala 85:10]
  wire  matchVec_1_2 = t1_wSpec_addr_1[2]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_2 = t1_wSpec_addr_0[2]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_2_T_1 = {matchVec_1_2,matchVec_0_2}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_2 = matchVec_1_2 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_2_T_3 = |_spec_table_next_2_T_1 ? wMatch_2 : spec_table_2; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_2 = t1_redirect ? _spec_table_next_2_T : _spec_table_next_2_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_2 = 5'h2 == io_readPorts_0_addr ? spec_table_next_2 : _GEN_1; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_210 = snapshots_snapshotGen_io_snapshots_0_3; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_211 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_3 : _GEN_210; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_212 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_3 : _GEN_211; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_213 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_3 : _GEN_212; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_3_T = t1_snpt_useSnpt ? _GEN_213 : arch_table_3; // @[RenameTable.scala 85:10]
  wire  matchVec_1_3 = t1_wSpec_addr_1[3]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_3 = t1_wSpec_addr_0[3]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_3_T_1 = {matchVec_1_3,matchVec_0_3}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_3 = matchVec_1_3 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_3_T_3 = |_spec_table_next_3_T_1 ? wMatch_3 : spec_table_3; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_3 = t1_redirect ? _spec_table_next_3_T : _spec_table_next_3_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_3 = 5'h3 == io_readPorts_0_addr ? spec_table_next_3 : _GEN_2; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_214 = snapshots_snapshotGen_io_snapshots_0_4; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_215 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_4 : _GEN_214; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_216 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_4 : _GEN_215; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_217 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_4 : _GEN_216; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_4_T = t1_snpt_useSnpt ? _GEN_217 : arch_table_4; // @[RenameTable.scala 85:10]
  wire  matchVec_1_4 = t1_wSpec_addr_1[4]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_4 = t1_wSpec_addr_0[4]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_4_T_1 = {matchVec_1_4,matchVec_0_4}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_4 = matchVec_1_4 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_4_T_3 = |_spec_table_next_4_T_1 ? wMatch_4 : spec_table_4; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_4 = t1_redirect ? _spec_table_next_4_T : _spec_table_next_4_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_4 = 5'h4 == io_readPorts_0_addr ? spec_table_next_4 : _GEN_3; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_218 = snapshots_snapshotGen_io_snapshots_0_5; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_219 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_5 : _GEN_218; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_220 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_5 : _GEN_219; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_221 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_5 : _GEN_220; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_5_T = t1_snpt_useSnpt ? _GEN_221 : arch_table_5; // @[RenameTable.scala 85:10]
  wire  matchVec_1_5 = t1_wSpec_addr_1[5]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_5 = t1_wSpec_addr_0[5]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_5_T_1 = {matchVec_1_5,matchVec_0_5}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_5 = matchVec_1_5 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_5_T_3 = |_spec_table_next_5_T_1 ? wMatch_5 : spec_table_5; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_5 = t1_redirect ? _spec_table_next_5_T : _spec_table_next_5_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_5 = 5'h5 == io_readPorts_0_addr ? spec_table_next_5 : _GEN_4; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_222 = snapshots_snapshotGen_io_snapshots_0_6; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_223 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_6 : _GEN_222; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_224 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_6 : _GEN_223; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_225 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_6 : _GEN_224; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_6_T = t1_snpt_useSnpt ? _GEN_225 : arch_table_6; // @[RenameTable.scala 85:10]
  wire  matchVec_1_6 = t1_wSpec_addr_1[6]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_6 = t1_wSpec_addr_0[6]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_6_T_1 = {matchVec_1_6,matchVec_0_6}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_6 = matchVec_1_6 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_6_T_3 = |_spec_table_next_6_T_1 ? wMatch_6 : spec_table_6; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_6 = t1_redirect ? _spec_table_next_6_T : _spec_table_next_6_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_6 = 5'h6 == io_readPorts_0_addr ? spec_table_next_6 : _GEN_5; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_226 = snapshots_snapshotGen_io_snapshots_0_7; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_227 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_7 : _GEN_226; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_228 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_7 : _GEN_227; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_229 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_7 : _GEN_228; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_7_T = t1_snpt_useSnpt ? _GEN_229 : arch_table_7; // @[RenameTable.scala 85:10]
  wire  matchVec_1_7 = t1_wSpec_addr_1[7]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_7 = t1_wSpec_addr_0[7]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_7_T_1 = {matchVec_1_7,matchVec_0_7}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_7 = matchVec_1_7 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_7_T_3 = |_spec_table_next_7_T_1 ? wMatch_7 : spec_table_7; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_7 = t1_redirect ? _spec_table_next_7_T : _spec_table_next_7_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_7 = 5'h7 == io_readPorts_0_addr ? spec_table_next_7 : _GEN_6; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_230 = snapshots_snapshotGen_io_snapshots_0_8; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_231 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_8 : _GEN_230; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_232 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_8 : _GEN_231; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_233 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_8 : _GEN_232; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_8_T = t1_snpt_useSnpt ? _GEN_233 : arch_table_8; // @[RenameTable.scala 85:10]
  wire  matchVec_1_8 = t1_wSpec_addr_1[8]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_8 = t1_wSpec_addr_0[8]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_8_T_1 = {matchVec_1_8,matchVec_0_8}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_8 = matchVec_1_8 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_8_T_3 = |_spec_table_next_8_T_1 ? wMatch_8 : spec_table_8; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_8 = t1_redirect ? _spec_table_next_8_T : _spec_table_next_8_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_8 = 5'h8 == io_readPorts_0_addr ? spec_table_next_8 : _GEN_7; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_234 = snapshots_snapshotGen_io_snapshots_0_9; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_235 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_9 : _GEN_234; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_236 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_9 : _GEN_235; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_237 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_9 : _GEN_236; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_9_T = t1_snpt_useSnpt ? _GEN_237 : arch_table_9; // @[RenameTable.scala 85:10]
  wire  matchVec_1_9 = t1_wSpec_addr_1[9]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_9 = t1_wSpec_addr_0[9]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_9_T_1 = {matchVec_1_9,matchVec_0_9}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_9 = matchVec_1_9 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_9_T_3 = |_spec_table_next_9_T_1 ? wMatch_9 : spec_table_9; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_9 = t1_redirect ? _spec_table_next_9_T : _spec_table_next_9_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_9 = 5'h9 == io_readPorts_0_addr ? spec_table_next_9 : _GEN_8; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_238 = snapshots_snapshotGen_io_snapshots_0_10; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_239 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_10 : _GEN_238; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_240 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_10 : _GEN_239; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_241 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_10 : _GEN_240; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_10_T = t1_snpt_useSnpt ? _GEN_241 : arch_table_10; // @[RenameTable.scala 85:10]
  wire  matchVec_1_10 = t1_wSpec_addr_1[10]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_10 = t1_wSpec_addr_0[10]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_10_T_1 = {matchVec_1_10,matchVec_0_10}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_10 = matchVec_1_10 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_10_T_3 = |_spec_table_next_10_T_1 ? wMatch_10 : spec_table_10; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_10 = t1_redirect ? _spec_table_next_10_T : _spec_table_next_10_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_10 = 5'ha == io_readPorts_0_addr ? spec_table_next_10 : _GEN_9; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_242 = snapshots_snapshotGen_io_snapshots_0_11; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_243 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_11 : _GEN_242; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_244 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_11 : _GEN_243; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_245 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_11 : _GEN_244; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_11_T = t1_snpt_useSnpt ? _GEN_245 : arch_table_11; // @[RenameTable.scala 85:10]
  wire  matchVec_1_11 = t1_wSpec_addr_1[11]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_11 = t1_wSpec_addr_0[11]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_11_T_1 = {matchVec_1_11,matchVec_0_11}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_11 = matchVec_1_11 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_11_T_3 = |_spec_table_next_11_T_1 ? wMatch_11 : spec_table_11; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_11 = t1_redirect ? _spec_table_next_11_T : _spec_table_next_11_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_11 = 5'hb == io_readPorts_0_addr ? spec_table_next_11 : _GEN_10; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_246 = snapshots_snapshotGen_io_snapshots_0_12; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_247 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_12 : _GEN_246; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_248 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_12 : _GEN_247; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_249 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_12 : _GEN_248; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_12_T = t1_snpt_useSnpt ? _GEN_249 : arch_table_12; // @[RenameTable.scala 85:10]
  wire  matchVec_1_12 = t1_wSpec_addr_1[12]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_12 = t1_wSpec_addr_0[12]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_12_T_1 = {matchVec_1_12,matchVec_0_12}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_12 = matchVec_1_12 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_12_T_3 = |_spec_table_next_12_T_1 ? wMatch_12 : spec_table_12; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_12 = t1_redirect ? _spec_table_next_12_T : _spec_table_next_12_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_12 = 5'hc == io_readPorts_0_addr ? spec_table_next_12 : _GEN_11; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_250 = snapshots_snapshotGen_io_snapshots_0_13; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_251 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_13 : _GEN_250; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_252 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_13 : _GEN_251; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_253 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_13 : _GEN_252; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_13_T = t1_snpt_useSnpt ? _GEN_253 : arch_table_13; // @[RenameTable.scala 85:10]
  wire  matchVec_1_13 = t1_wSpec_addr_1[13]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_13 = t1_wSpec_addr_0[13]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_13_T_1 = {matchVec_1_13,matchVec_0_13}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_13 = matchVec_1_13 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_13_T_3 = |_spec_table_next_13_T_1 ? wMatch_13 : spec_table_13; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_13 = t1_redirect ? _spec_table_next_13_T : _spec_table_next_13_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_13 = 5'hd == io_readPorts_0_addr ? spec_table_next_13 : _GEN_12; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_254 = snapshots_snapshotGen_io_snapshots_0_14; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_255 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_14 : _GEN_254; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_256 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_14 : _GEN_255; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_257 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_14 : _GEN_256; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_14_T = t1_snpt_useSnpt ? _GEN_257 : arch_table_14; // @[RenameTable.scala 85:10]
  wire  matchVec_1_14 = t1_wSpec_addr_1[14]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_14 = t1_wSpec_addr_0[14]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_14_T_1 = {matchVec_1_14,matchVec_0_14}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_14 = matchVec_1_14 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_14_T_3 = |_spec_table_next_14_T_1 ? wMatch_14 : spec_table_14; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_14 = t1_redirect ? _spec_table_next_14_T : _spec_table_next_14_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_14 = 5'he == io_readPorts_0_addr ? spec_table_next_14 : _GEN_13; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_258 = snapshots_snapshotGen_io_snapshots_0_15; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_259 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_15 : _GEN_258; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_260 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_15 : _GEN_259; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_261 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_15 : _GEN_260; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_15_T = t1_snpt_useSnpt ? _GEN_261 : arch_table_15; // @[RenameTable.scala 85:10]
  wire  matchVec_1_15 = t1_wSpec_addr_1[15]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_15 = t1_wSpec_addr_0[15]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_15_T_1 = {matchVec_1_15,matchVec_0_15}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_15 = matchVec_1_15 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_15_T_3 = |_spec_table_next_15_T_1 ? wMatch_15 : spec_table_15; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_15 = t1_redirect ? _spec_table_next_15_T : _spec_table_next_15_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_15 = 5'hf == io_readPorts_0_addr ? spec_table_next_15 : _GEN_14; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_262 = snapshots_snapshotGen_io_snapshots_0_16; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_263 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_16 : _GEN_262; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_264 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_16 : _GEN_263; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_265 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_16 : _GEN_264; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_16_T = t1_snpt_useSnpt ? _GEN_265 : arch_table_16; // @[RenameTable.scala 85:10]
  wire  matchVec_1_16 = t1_wSpec_addr_1[16]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_16 = t1_wSpec_addr_0[16]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_16_T_1 = {matchVec_1_16,matchVec_0_16}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_16 = matchVec_1_16 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_16_T_3 = |_spec_table_next_16_T_1 ? wMatch_16 : spec_table_16; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_16 = t1_redirect ? _spec_table_next_16_T : _spec_table_next_16_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_16 = 5'h10 == io_readPorts_0_addr ? spec_table_next_16 : _GEN_15; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_266 = snapshots_snapshotGen_io_snapshots_0_17; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_267 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_17 : _GEN_266; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_268 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_17 : _GEN_267; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_269 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_17 : _GEN_268; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_17_T = t1_snpt_useSnpt ? _GEN_269 : arch_table_17; // @[RenameTable.scala 85:10]
  wire  matchVec_1_17 = t1_wSpec_addr_1[17]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_17 = t1_wSpec_addr_0[17]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_17_T_1 = {matchVec_1_17,matchVec_0_17}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_17 = matchVec_1_17 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_17_T_3 = |_spec_table_next_17_T_1 ? wMatch_17 : spec_table_17; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_17 = t1_redirect ? _spec_table_next_17_T : _spec_table_next_17_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_17 = 5'h11 == io_readPorts_0_addr ? spec_table_next_17 : _GEN_16; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_270 = snapshots_snapshotGen_io_snapshots_0_18; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_271 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_18 : _GEN_270; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_272 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_18 : _GEN_271; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_273 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_18 : _GEN_272; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_18_T = t1_snpt_useSnpt ? _GEN_273 : arch_table_18; // @[RenameTable.scala 85:10]
  wire  matchVec_1_18 = t1_wSpec_addr_1[18]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_18 = t1_wSpec_addr_0[18]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_18_T_1 = {matchVec_1_18,matchVec_0_18}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_18 = matchVec_1_18 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_18_T_3 = |_spec_table_next_18_T_1 ? wMatch_18 : spec_table_18; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_18 = t1_redirect ? _spec_table_next_18_T : _spec_table_next_18_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_18 = 5'h12 == io_readPorts_0_addr ? spec_table_next_18 : _GEN_17; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_274 = snapshots_snapshotGen_io_snapshots_0_19; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_275 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_19 : _GEN_274; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_276 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_19 : _GEN_275; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_277 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_19 : _GEN_276; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_19_T = t1_snpt_useSnpt ? _GEN_277 : arch_table_19; // @[RenameTable.scala 85:10]
  wire  matchVec_1_19 = t1_wSpec_addr_1[19]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_19 = t1_wSpec_addr_0[19]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_19_T_1 = {matchVec_1_19,matchVec_0_19}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_19 = matchVec_1_19 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_19_T_3 = |_spec_table_next_19_T_1 ? wMatch_19 : spec_table_19; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_19 = t1_redirect ? _spec_table_next_19_T : _spec_table_next_19_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_19 = 5'h13 == io_readPorts_0_addr ? spec_table_next_19 : _GEN_18; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_278 = snapshots_snapshotGen_io_snapshots_0_20; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_279 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_20 : _GEN_278; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_280 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_20 : _GEN_279; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_281 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_20 : _GEN_280; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_20_T = t1_snpt_useSnpt ? _GEN_281 : arch_table_20; // @[RenameTable.scala 85:10]
  wire  matchVec_1_20 = t1_wSpec_addr_1[20]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_20 = t1_wSpec_addr_0[20]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_20_T_1 = {matchVec_1_20,matchVec_0_20}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_20 = matchVec_1_20 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_20_T_3 = |_spec_table_next_20_T_1 ? wMatch_20 : spec_table_20; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_20 = t1_redirect ? _spec_table_next_20_T : _spec_table_next_20_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_20 = 5'h14 == io_readPorts_0_addr ? spec_table_next_20 : _GEN_19; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_282 = snapshots_snapshotGen_io_snapshots_0_21; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_283 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_21 : _GEN_282; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_284 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_21 : _GEN_283; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_285 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_21 : _GEN_284; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_21_T = t1_snpt_useSnpt ? _GEN_285 : arch_table_21; // @[RenameTable.scala 85:10]
  wire  matchVec_1_21 = t1_wSpec_addr_1[21]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_21 = t1_wSpec_addr_0[21]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_21_T_1 = {matchVec_1_21,matchVec_0_21}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_21 = matchVec_1_21 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_21_T_3 = |_spec_table_next_21_T_1 ? wMatch_21 : spec_table_21; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_21 = t1_redirect ? _spec_table_next_21_T : _spec_table_next_21_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_21 = 5'h15 == io_readPorts_0_addr ? spec_table_next_21 : _GEN_20; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_286 = snapshots_snapshotGen_io_snapshots_0_22; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_287 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_22 : _GEN_286; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_288 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_22 : _GEN_287; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_289 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_22 : _GEN_288; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_22_T = t1_snpt_useSnpt ? _GEN_289 : arch_table_22; // @[RenameTable.scala 85:10]
  wire  matchVec_1_22 = t1_wSpec_addr_1[22]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_22 = t1_wSpec_addr_0[22]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_22_T_1 = {matchVec_1_22,matchVec_0_22}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_22 = matchVec_1_22 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_22_T_3 = |_spec_table_next_22_T_1 ? wMatch_22 : spec_table_22; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_22 = t1_redirect ? _spec_table_next_22_T : _spec_table_next_22_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_22 = 5'h16 == io_readPorts_0_addr ? spec_table_next_22 : _GEN_21; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_290 = snapshots_snapshotGen_io_snapshots_0_23; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_291 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_23 : _GEN_290; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_292 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_23 : _GEN_291; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_293 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_23 : _GEN_292; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_23_T = t1_snpt_useSnpt ? _GEN_293 : arch_table_23; // @[RenameTable.scala 85:10]
  wire  matchVec_1_23 = t1_wSpec_addr_1[23]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_23 = t1_wSpec_addr_0[23]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_23_T_1 = {matchVec_1_23,matchVec_0_23}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_23 = matchVec_1_23 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_23_T_3 = |_spec_table_next_23_T_1 ? wMatch_23 : spec_table_23; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_23 = t1_redirect ? _spec_table_next_23_T : _spec_table_next_23_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_23 = 5'h17 == io_readPorts_0_addr ? spec_table_next_23 : _GEN_22; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_294 = snapshots_snapshotGen_io_snapshots_0_24; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_295 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_24 : _GEN_294; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_296 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_24 : _GEN_295; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_297 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_24 : _GEN_296; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_24_T = t1_snpt_useSnpt ? _GEN_297 : arch_table_24; // @[RenameTable.scala 85:10]
  wire  matchVec_1_24 = t1_wSpec_addr_1[24]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_24 = t1_wSpec_addr_0[24]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_24_T_1 = {matchVec_1_24,matchVec_0_24}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_24 = matchVec_1_24 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_24_T_3 = |_spec_table_next_24_T_1 ? wMatch_24 : spec_table_24; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_24 = t1_redirect ? _spec_table_next_24_T : _spec_table_next_24_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_24 = 5'h18 == io_readPorts_0_addr ? spec_table_next_24 : _GEN_23; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_298 = snapshots_snapshotGen_io_snapshots_0_25; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_299 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_25 : _GEN_298; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_300 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_25 : _GEN_299; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_301 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_25 : _GEN_300; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_25_T = t1_snpt_useSnpt ? _GEN_301 : arch_table_25; // @[RenameTable.scala 85:10]
  wire  matchVec_1_25 = t1_wSpec_addr_1[25]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_25 = t1_wSpec_addr_0[25]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_25_T_1 = {matchVec_1_25,matchVec_0_25}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_25 = matchVec_1_25 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_25_T_3 = |_spec_table_next_25_T_1 ? wMatch_25 : spec_table_25; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_25 = t1_redirect ? _spec_table_next_25_T : _spec_table_next_25_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_25 = 5'h19 == io_readPorts_0_addr ? spec_table_next_25 : _GEN_24; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_302 = snapshots_snapshotGen_io_snapshots_0_26; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_303 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_26 : _GEN_302; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_304 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_26 : _GEN_303; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_305 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_26 : _GEN_304; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_26_T = t1_snpt_useSnpt ? _GEN_305 : arch_table_26; // @[RenameTable.scala 85:10]
  wire  matchVec_1_26 = t1_wSpec_addr_1[26]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_26 = t1_wSpec_addr_0[26]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_26_T_1 = {matchVec_1_26,matchVec_0_26}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_26 = matchVec_1_26 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_26_T_3 = |_spec_table_next_26_T_1 ? wMatch_26 : spec_table_26; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_26 = t1_redirect ? _spec_table_next_26_T : _spec_table_next_26_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_26 = 5'h1a == io_readPorts_0_addr ? spec_table_next_26 : _GEN_25; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_306 = snapshots_snapshotGen_io_snapshots_0_27; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_307 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_27 : _GEN_306; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_308 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_27 : _GEN_307; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_309 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_27 : _GEN_308; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_27_T = t1_snpt_useSnpt ? _GEN_309 : arch_table_27; // @[RenameTable.scala 85:10]
  wire  matchVec_1_27 = t1_wSpec_addr_1[27]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_27 = t1_wSpec_addr_0[27]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_27_T_1 = {matchVec_1_27,matchVec_0_27}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_27 = matchVec_1_27 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_27_T_3 = |_spec_table_next_27_T_1 ? wMatch_27 : spec_table_27; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_27 = t1_redirect ? _spec_table_next_27_T : _spec_table_next_27_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_27 = 5'h1b == io_readPorts_0_addr ? spec_table_next_27 : _GEN_26; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_310 = snapshots_snapshotGen_io_snapshots_0_28; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_311 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_28 : _GEN_310; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_312 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_28 : _GEN_311; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_313 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_28 : _GEN_312; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_28_T = t1_snpt_useSnpt ? _GEN_313 : arch_table_28; // @[RenameTable.scala 85:10]
  wire  matchVec_1_28 = t1_wSpec_addr_1[28]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_28 = t1_wSpec_addr_0[28]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_28_T_1 = {matchVec_1_28,matchVec_0_28}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_28 = matchVec_1_28 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_28_T_3 = |_spec_table_next_28_T_1 ? wMatch_28 : spec_table_28; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_28 = t1_redirect ? _spec_table_next_28_T : _spec_table_next_28_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_28 = 5'h1c == io_readPorts_0_addr ? spec_table_next_28 : _GEN_27; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_314 = snapshots_snapshotGen_io_snapshots_0_29; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_315 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_29 : _GEN_314; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_316 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_29 : _GEN_315; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_317 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_29 : _GEN_316; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_29_T = t1_snpt_useSnpt ? _GEN_317 : arch_table_29; // @[RenameTable.scala 85:10]
  wire  matchVec_1_29 = t1_wSpec_addr_1[29]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_29 = t1_wSpec_addr_0[29]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_29_T_1 = {matchVec_1_29,matchVec_0_29}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_29 = matchVec_1_29 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_29_T_3 = |_spec_table_next_29_T_1 ? wMatch_29 : spec_table_29; // @[RenameTable.scala 86:10]
  wire [5:0] spec_table_next_29 = t1_redirect ? _spec_table_next_29_T : _spec_table_next_29_T_3; // @[RenameTable.scala 83:16]
  wire [5:0] _GEN_318 = snapshots_snapshotGen_io_snapshots_0_30; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_319 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_30 : _GEN_318; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_320 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_30 : _GEN_319; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_321 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_30 : _GEN_320; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _spec_table_next_30_T = t1_snpt_useSnpt ? _GEN_321 : arch_table_30; // @[RenameTable.scala 85:10]
  wire  matchVec_1_30 = t1_wSpec_addr_1[30]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_30 = t1_wSpec_addr_0[30]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_30_T_1 = {matchVec_1_30,matchVec_0_30}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_30 = matchVec_1_30 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [5:0] _spec_table_next_30_T_3 = |_spec_table_next_30_T_1 ? wMatch_30 : spec_table_30; // @[RenameTable.scala 86:10]
  wire [5:0] _GEN_322 = snapshots_snapshotGen_io_snapshots_0_31; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_323 = 2'h1 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_1_31 : _GEN_322; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_324 = 2'h2 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_2_31 : _GEN_323; // @[RenameTable.scala 85:{10,10}]
  wire [5:0] _GEN_325 = 2'h3 == t1_snpt_snptSelect ? snapshots_snapshotGen_io_snapshots_3_31 : _GEN_324; // @[RenameTable.scala 85:{10,10}]
  wire  matchVec_1_31 = t1_wSpec_addr_1[31]; // @[RenameTable.scala 80:44]
  wire  matchVec_0_31 = t1_wSpec_addr_0[31]; // @[RenameTable.scala 80:44]
  wire [1:0] _spec_table_next_31_T_1 = {matchVec_1_31,matchVec_0_31}; // @[RenameTable.scala 86:29]
  wire [5:0] wMatch_31 = matchVec_1_31 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  reg [5:0] t1_rdata_0; // @[RenameTable.scala 69:47]
  wire [5:0] _GEN_33 = 5'h1 == io_readPorts_1_addr ? spec_table_next_1 : spec_table_next_0; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_34 = 5'h2 == io_readPorts_1_addr ? spec_table_next_2 : _GEN_33; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_35 = 5'h3 == io_readPorts_1_addr ? spec_table_next_3 : _GEN_34; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_36 = 5'h4 == io_readPorts_1_addr ? spec_table_next_4 : _GEN_35; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_37 = 5'h5 == io_readPorts_1_addr ? spec_table_next_5 : _GEN_36; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_38 = 5'h6 == io_readPorts_1_addr ? spec_table_next_6 : _GEN_37; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_39 = 5'h7 == io_readPorts_1_addr ? spec_table_next_7 : _GEN_38; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_40 = 5'h8 == io_readPorts_1_addr ? spec_table_next_8 : _GEN_39; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_41 = 5'h9 == io_readPorts_1_addr ? spec_table_next_9 : _GEN_40; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_42 = 5'ha == io_readPorts_1_addr ? spec_table_next_10 : _GEN_41; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_43 = 5'hb == io_readPorts_1_addr ? spec_table_next_11 : _GEN_42; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_44 = 5'hc == io_readPorts_1_addr ? spec_table_next_12 : _GEN_43; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_45 = 5'hd == io_readPorts_1_addr ? spec_table_next_13 : _GEN_44; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_46 = 5'he == io_readPorts_1_addr ? spec_table_next_14 : _GEN_45; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_47 = 5'hf == io_readPorts_1_addr ? spec_table_next_15 : _GEN_46; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_48 = 5'h10 == io_readPorts_1_addr ? spec_table_next_16 : _GEN_47; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_49 = 5'h11 == io_readPorts_1_addr ? spec_table_next_17 : _GEN_48; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_50 = 5'h12 == io_readPorts_1_addr ? spec_table_next_18 : _GEN_49; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_51 = 5'h13 == io_readPorts_1_addr ? spec_table_next_19 : _GEN_50; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_52 = 5'h14 == io_readPorts_1_addr ? spec_table_next_20 : _GEN_51; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_53 = 5'h15 == io_readPorts_1_addr ? spec_table_next_21 : _GEN_52; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_54 = 5'h16 == io_readPorts_1_addr ? spec_table_next_22 : _GEN_53; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_55 = 5'h17 == io_readPorts_1_addr ? spec_table_next_23 : _GEN_54; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_56 = 5'h18 == io_readPorts_1_addr ? spec_table_next_24 : _GEN_55; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_57 = 5'h19 == io_readPorts_1_addr ? spec_table_next_25 : _GEN_56; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_58 = 5'h1a == io_readPorts_1_addr ? spec_table_next_26 : _GEN_57; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_59 = 5'h1b == io_readPorts_1_addr ? spec_table_next_27 : _GEN_58; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_60 = 5'h1c == io_readPorts_1_addr ? spec_table_next_28 : _GEN_59; // @[RenameTable.scala 69:{51,51}]
  reg [5:0] t1_rdata_1; // @[RenameTable.scala 69:47]
  wire [5:0] _GEN_97 = 5'h1 == io_readPorts_3_addr ? spec_table_next_1 : spec_table_next_0; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_98 = 5'h2 == io_readPorts_3_addr ? spec_table_next_2 : _GEN_97; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_99 = 5'h3 == io_readPorts_3_addr ? spec_table_next_3 : _GEN_98; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_100 = 5'h4 == io_readPorts_3_addr ? spec_table_next_4 : _GEN_99; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_101 = 5'h5 == io_readPorts_3_addr ? spec_table_next_5 : _GEN_100; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_102 = 5'h6 == io_readPorts_3_addr ? spec_table_next_6 : _GEN_101; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_103 = 5'h7 == io_readPorts_3_addr ? spec_table_next_7 : _GEN_102; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_104 = 5'h8 == io_readPorts_3_addr ? spec_table_next_8 : _GEN_103; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_105 = 5'h9 == io_readPorts_3_addr ? spec_table_next_9 : _GEN_104; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_106 = 5'ha == io_readPorts_3_addr ? spec_table_next_10 : _GEN_105; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_107 = 5'hb == io_readPorts_3_addr ? spec_table_next_11 : _GEN_106; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_108 = 5'hc == io_readPorts_3_addr ? spec_table_next_12 : _GEN_107; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_109 = 5'hd == io_readPorts_3_addr ? spec_table_next_13 : _GEN_108; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_110 = 5'he == io_readPorts_3_addr ? spec_table_next_14 : _GEN_109; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_111 = 5'hf == io_readPorts_3_addr ? spec_table_next_15 : _GEN_110; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_112 = 5'h10 == io_readPorts_3_addr ? spec_table_next_16 : _GEN_111; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_113 = 5'h11 == io_readPorts_3_addr ? spec_table_next_17 : _GEN_112; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_114 = 5'h12 == io_readPorts_3_addr ? spec_table_next_18 : _GEN_113; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_115 = 5'h13 == io_readPorts_3_addr ? spec_table_next_19 : _GEN_114; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_116 = 5'h14 == io_readPorts_3_addr ? spec_table_next_20 : _GEN_115; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_117 = 5'h15 == io_readPorts_3_addr ? spec_table_next_21 : _GEN_116; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_118 = 5'h16 == io_readPorts_3_addr ? spec_table_next_22 : _GEN_117; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_119 = 5'h17 == io_readPorts_3_addr ? spec_table_next_23 : _GEN_118; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_120 = 5'h18 == io_readPorts_3_addr ? spec_table_next_24 : _GEN_119; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_121 = 5'h19 == io_readPorts_3_addr ? spec_table_next_25 : _GEN_120; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_122 = 5'h1a == io_readPorts_3_addr ? spec_table_next_26 : _GEN_121; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_123 = 5'h1b == io_readPorts_3_addr ? spec_table_next_27 : _GEN_122; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_124 = 5'h1c == io_readPorts_3_addr ? spec_table_next_28 : _GEN_123; // @[RenameTable.scala 69:{51,51}]
  reg [5:0] t1_rdata_3; // @[RenameTable.scala 69:47]
  wire [5:0] _GEN_129 = 5'h1 == io_readPorts_4_addr ? spec_table_next_1 : spec_table_next_0; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_130 = 5'h2 == io_readPorts_4_addr ? spec_table_next_2 : _GEN_129; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_131 = 5'h3 == io_readPorts_4_addr ? spec_table_next_3 : _GEN_130; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_132 = 5'h4 == io_readPorts_4_addr ? spec_table_next_4 : _GEN_131; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_133 = 5'h5 == io_readPorts_4_addr ? spec_table_next_5 : _GEN_132; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_134 = 5'h6 == io_readPorts_4_addr ? spec_table_next_6 : _GEN_133; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_135 = 5'h7 == io_readPorts_4_addr ? spec_table_next_7 : _GEN_134; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_136 = 5'h8 == io_readPorts_4_addr ? spec_table_next_8 : _GEN_135; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_137 = 5'h9 == io_readPorts_4_addr ? spec_table_next_9 : _GEN_136; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_138 = 5'ha == io_readPorts_4_addr ? spec_table_next_10 : _GEN_137; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_139 = 5'hb == io_readPorts_4_addr ? spec_table_next_11 : _GEN_138; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_140 = 5'hc == io_readPorts_4_addr ? spec_table_next_12 : _GEN_139; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_141 = 5'hd == io_readPorts_4_addr ? spec_table_next_13 : _GEN_140; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_142 = 5'he == io_readPorts_4_addr ? spec_table_next_14 : _GEN_141; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_143 = 5'hf == io_readPorts_4_addr ? spec_table_next_15 : _GEN_142; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_144 = 5'h10 == io_readPorts_4_addr ? spec_table_next_16 : _GEN_143; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_145 = 5'h11 == io_readPorts_4_addr ? spec_table_next_17 : _GEN_144; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_146 = 5'h12 == io_readPorts_4_addr ? spec_table_next_18 : _GEN_145; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_147 = 5'h13 == io_readPorts_4_addr ? spec_table_next_19 : _GEN_146; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_148 = 5'h14 == io_readPorts_4_addr ? spec_table_next_20 : _GEN_147; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_149 = 5'h15 == io_readPorts_4_addr ? spec_table_next_21 : _GEN_148; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_150 = 5'h16 == io_readPorts_4_addr ? spec_table_next_22 : _GEN_149; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_151 = 5'h17 == io_readPorts_4_addr ? spec_table_next_23 : _GEN_150; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_152 = 5'h18 == io_readPorts_4_addr ? spec_table_next_24 : _GEN_151; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_153 = 5'h19 == io_readPorts_4_addr ? spec_table_next_25 : _GEN_152; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_154 = 5'h1a == io_readPorts_4_addr ? spec_table_next_26 : _GEN_153; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_155 = 5'h1b == io_readPorts_4_addr ? spec_table_next_27 : _GEN_154; // @[RenameTable.scala 69:{51,51}]
  wire [5:0] _GEN_156 = 5'h1c == io_readPorts_4_addr ? spec_table_next_28 : _GEN_155; // @[RenameTable.scala 69:{51,51}]
  reg [5:0] t1_rdata_4; // @[RenameTable.scala 69:47]
  wire  _t1_raddr_T = ~io_readPorts_0_hold; // @[RenameTable.scala 70:58]
  reg [4:0] t1_raddr_0; // @[Reg.scala 16:16]
  wire  _t1_raddr_T_1 = ~io_readPorts_1_hold; // @[RenameTable.scala 70:58]
  reg [4:0] t1_raddr_1; // @[Reg.scala 16:16]
  wire  _t1_raddr_T_3 = ~io_readPorts_3_hold; // @[RenameTable.scala 70:58]
  reg [4:0] t1_raddr_3; // @[Reg.scala 16:16]
  wire  _t1_raddr_T_4 = ~io_readPorts_4_hold; // @[RenameTable.scala 70:58]
  reg [4:0] t1_raddr_4; // @[Reg.scala 16:16]
  reg  t1_snpt_snptEnq; // @[RenameTable.scala 73:24]
  reg  t1_snpt_snptDeq; // @[RenameTable.scala 73:24]
  wire  _t0_bypass_T_2 = io_readPorts_0_hold ? io_specWritePorts_0_addr == t1_raddr_0 : io_specWritePorts_0_addr ==
    io_readPorts_0_addr; // @[RenameTable.scala 94:60]
  wire  t0_bypass_0 = io_specWritePorts_0_wen & _t0_bypass_T_2; // @[RenameTable.scala 94:54]
  wire  _t0_bypass_T_5 = io_readPorts_0_hold ? io_specWritePorts_1_addr == t1_raddr_0 : io_specWritePorts_1_addr ==
    io_readPorts_0_addr; // @[RenameTable.scala 94:60]
  wire  t0_bypass_1 = io_specWritePorts_1_wen & _t0_bypass_T_5; // @[RenameTable.scala 94:54]
  reg  t1_bypass__0; // @[RenameTable.scala 95:28]
  reg  t1_bypass__1; // @[RenameTable.scala 95:28]
  wire [5:0] bypass_data = t1_bypass__1 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_readPorts_0_data_T = {t1_bypass__1,t1_bypass__0}; // @[RenameTable.scala 97:29]
  wire  _t0_bypass_T_8 = io_readPorts_1_hold ? io_specWritePorts_0_addr == t1_raddr_1 : io_specWritePorts_0_addr ==
    io_readPorts_1_addr; // @[RenameTable.scala 94:60]
  wire  t0_bypass_0_1 = io_specWritePorts_0_wen & _t0_bypass_T_8; // @[RenameTable.scala 94:54]
  wire  _t0_bypass_T_11 = io_readPorts_1_hold ? io_specWritePorts_1_addr == t1_raddr_1 : io_specWritePorts_1_addr ==
    io_readPorts_1_addr; // @[RenameTable.scala 94:60]
  wire  t0_bypass_1_1 = io_specWritePorts_1_wen & _t0_bypass_T_11; // @[RenameTable.scala 94:54]
  reg  t1_bypass_1_0; // @[RenameTable.scala 95:28]
  reg  t1_bypass_1_1; // @[RenameTable.scala 95:28]
  wire [5:0] bypass_data_1 = t1_bypass_1_1 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_readPorts_1_data_T = {t1_bypass_1_1,t1_bypass_1_0}; // @[RenameTable.scala 97:29]
  wire  _t0_bypass_T_20 = io_readPorts_3_hold ? io_specWritePorts_0_addr == t1_raddr_3 : io_specWritePorts_0_addr ==
    io_readPorts_3_addr; // @[RenameTable.scala 94:60]
  wire  t0_bypass_0_3 = io_specWritePorts_0_wen & _t0_bypass_T_20; // @[RenameTable.scala 94:54]
  wire  _t0_bypass_T_23 = io_readPorts_3_hold ? io_specWritePorts_1_addr == t1_raddr_3 : io_specWritePorts_1_addr ==
    io_readPorts_3_addr; // @[RenameTable.scala 94:60]
  wire  t0_bypass_1_3 = io_specWritePorts_1_wen & _t0_bypass_T_23; // @[RenameTable.scala 94:54]
  reg  t1_bypass_3_0; // @[RenameTable.scala 95:28]
  reg  t1_bypass_3_1; // @[RenameTable.scala 95:28]
  wire [5:0] bypass_data_3 = t1_bypass_3_1 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_readPorts_3_data_T = {t1_bypass_3_1,t1_bypass_3_0}; // @[RenameTable.scala 97:29]
  wire  _t0_bypass_T_26 = io_readPorts_4_hold ? io_specWritePorts_0_addr == t1_raddr_4 : io_specWritePorts_0_addr ==
    io_readPorts_4_addr; // @[RenameTable.scala 94:60]
  wire  t0_bypass_0_4 = io_specWritePorts_0_wen & _t0_bypass_T_26; // @[RenameTable.scala 94:54]
  wire  _t0_bypass_T_29 = io_readPorts_4_hold ? io_specWritePorts_1_addr == t1_raddr_4 : io_specWritePorts_1_addr ==
    io_readPorts_4_addr; // @[RenameTable.scala 94:60]
  wire  t0_bypass_1_4 = io_specWritePorts_1_wen & _t0_bypass_T_29; // @[RenameTable.scala 94:54]
  reg  t1_bypass_4_0; // @[RenameTable.scala 95:28]
  reg  t1_bypass_4_1; // @[RenameTable.scala 95:28]
  wire [5:0] bypass_data_4 = t1_bypass_4_1 ? t1_wSpec_1_data : t1_wSpec_0_data; // @[ParallelMux.scala 90:77]
  wire [1:0] _io_readPorts_4_data_T = {t1_bypass_4_1,t1_bypass_4_0}; // @[RenameTable.scala 97:29]
  wire [5:0] _GEN_326 = 5'h0 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_0; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_327 = 5'h1 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_1; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_328 = 5'h2 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_2; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_329 = 5'h3 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_3; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_330 = 5'h4 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_4; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_331 = 5'h5 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_5; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_332 = 5'h6 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_6; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_333 = 5'h7 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_7; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_334 = 5'h8 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_8; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_335 = 5'h9 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_9; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_336 = 5'ha == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_10; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_337 = 5'hb == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_11; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_338 = 5'hc == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_12; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_339 = 5'hd == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_13; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_340 = 5'he == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_14; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_341 = 5'hf == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_15; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_342 = 5'h10 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_16; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_343 = 5'h11 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_17; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_344 = 5'h12 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_18; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_345 = 5'h13 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_19; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_346 = 5'h14 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_20; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_347 = 5'h15 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_21; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_348 = 5'h16 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_22; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_349 = 5'h17 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_23; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_350 = 5'h18 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_24; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_351 = 5'h19 == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_25; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_352 = 5'h1a == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_26; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_353 = 5'h1b == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_27; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_354 = 5'h1c == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_28; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_355 = 5'h1d == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_29; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_356 = 5'h1e == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_30; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_357 = 5'h1f == io_archWritePorts_0_addr ? io_archWritePorts_0_data : arch_table_31; // @[RenameTable.scala 102:{31,31}]
  wire [5:0] _GEN_358 = io_archWritePorts_0_wen ? _GEN_326 : arch_table_0; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_359 = io_archWritePorts_0_wen ? _GEN_327 : arch_table_1; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_360 = io_archWritePorts_0_wen ? _GEN_328 : arch_table_2; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_361 = io_archWritePorts_0_wen ? _GEN_329 : arch_table_3; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_362 = io_archWritePorts_0_wen ? _GEN_330 : arch_table_4; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_363 = io_archWritePorts_0_wen ? _GEN_331 : arch_table_5; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_364 = io_archWritePorts_0_wen ? _GEN_332 : arch_table_6; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_365 = io_archWritePorts_0_wen ? _GEN_333 : arch_table_7; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_366 = io_archWritePorts_0_wen ? _GEN_334 : arch_table_8; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_367 = io_archWritePorts_0_wen ? _GEN_335 : arch_table_9; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_368 = io_archWritePorts_0_wen ? _GEN_336 : arch_table_10; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_369 = io_archWritePorts_0_wen ? _GEN_337 : arch_table_11; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_370 = io_archWritePorts_0_wen ? _GEN_338 : arch_table_12; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_371 = io_archWritePorts_0_wen ? _GEN_339 : arch_table_13; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_372 = io_archWritePorts_0_wen ? _GEN_340 : arch_table_14; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_373 = io_archWritePorts_0_wen ? _GEN_341 : arch_table_15; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_374 = io_archWritePorts_0_wen ? _GEN_342 : arch_table_16; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_375 = io_archWritePorts_0_wen ? _GEN_343 : arch_table_17; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_376 = io_archWritePorts_0_wen ? _GEN_344 : arch_table_18; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_377 = io_archWritePorts_0_wen ? _GEN_345 : arch_table_19; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_378 = io_archWritePorts_0_wen ? _GEN_346 : arch_table_20; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_379 = io_archWritePorts_0_wen ? _GEN_347 : arch_table_21; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_380 = io_archWritePorts_0_wen ? _GEN_348 : arch_table_22; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_381 = io_archWritePorts_0_wen ? _GEN_349 : arch_table_23; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_382 = io_archWritePorts_0_wen ? _GEN_350 : arch_table_24; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_383 = io_archWritePorts_0_wen ? _GEN_351 : arch_table_25; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_384 = io_archWritePorts_0_wen ? _GEN_352 : arch_table_26; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_385 = io_archWritePorts_0_wen ? _GEN_353 : arch_table_27; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_386 = io_archWritePorts_0_wen ? _GEN_354 : arch_table_28; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_387 = io_archWritePorts_0_wen ? _GEN_355 : arch_table_29; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_388 = io_archWritePorts_0_wen ? _GEN_356 : arch_table_30; // @[RenameTable.scala 101:18]
  wire [5:0] _GEN_389 = io_archWritePorts_0_wen ? _GEN_357 : arch_table_31; // @[RenameTable.scala 101:18]
  wire [5:0] arch_mask = {io_archWritePorts_0_wen,io_archWritePorts_0_wen,io_archWritePorts_0_wen,
    io_archWritePorts_0_wen,io_archWritePorts_0_wen,io_archWritePorts_0_wen}; // @[RenameTable.scala 104:57]
  wire [5:0] _GEN_391 = 5'h1 == io_archWritePorts_0_addr ? arch_table_1 : arch_table_0; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_392 = 5'h2 == io_archWritePorts_0_addr ? arch_table_2 : _GEN_391; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_393 = 5'h3 == io_archWritePorts_0_addr ? arch_table_3 : _GEN_392; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_394 = 5'h4 == io_archWritePorts_0_addr ? arch_table_4 : _GEN_393; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_395 = 5'h5 == io_archWritePorts_0_addr ? arch_table_5 : _GEN_394; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_396 = 5'h6 == io_archWritePorts_0_addr ? arch_table_6 : _GEN_395; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_397 = 5'h7 == io_archWritePorts_0_addr ? arch_table_7 : _GEN_396; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_398 = 5'h8 == io_archWritePorts_0_addr ? arch_table_8 : _GEN_397; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_399 = 5'h9 == io_archWritePorts_0_addr ? arch_table_9 : _GEN_398; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_400 = 5'ha == io_archWritePorts_0_addr ? arch_table_10 : _GEN_399; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_401 = 5'hb == io_archWritePorts_0_addr ? arch_table_11 : _GEN_400; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_402 = 5'hc == io_archWritePorts_0_addr ? arch_table_12 : _GEN_401; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_403 = 5'hd == io_archWritePorts_0_addr ? arch_table_13 : _GEN_402; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_404 = 5'he == io_archWritePorts_0_addr ? arch_table_14 : _GEN_403; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_405 = 5'hf == io_archWritePorts_0_addr ? arch_table_15 : _GEN_404; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_406 = 5'h10 == io_archWritePorts_0_addr ? arch_table_16 : _GEN_405; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_407 = 5'h11 == io_archWritePorts_0_addr ? arch_table_17 : _GEN_406; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_408 = 5'h12 == io_archWritePorts_0_addr ? arch_table_18 : _GEN_407; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_409 = 5'h13 == io_archWritePorts_0_addr ? arch_table_19 : _GEN_408; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_410 = 5'h14 == io_archWritePorts_0_addr ? arch_table_20 : _GEN_409; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_411 = 5'h15 == io_archWritePorts_0_addr ? arch_table_21 : _GEN_410; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_412 = 5'h16 == io_archWritePorts_0_addr ? arch_table_22 : _GEN_411; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_413 = 5'h17 == io_archWritePorts_0_addr ? arch_table_23 : _GEN_412; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_414 = 5'h18 == io_archWritePorts_0_addr ? arch_table_24 : _GEN_413; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_415 = 5'h19 == io_archWritePorts_0_addr ? arch_table_25 : _GEN_414; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_416 = 5'h1a == io_archWritePorts_0_addr ? arch_table_26 : _GEN_415; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_417 = 5'h1b == io_archWritePorts_0_addr ? arch_table_27 : _GEN_416; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_418 = 5'h1c == io_archWritePorts_0_addr ? arch_table_28 : _GEN_417; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_419 = 5'h1d == io_archWritePorts_0_addr ? arch_table_29 : _GEN_418; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_420 = 5'h1e == io_archWritePorts_0_addr ? arch_table_30 : _GEN_419; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_421 = 5'h1f == io_archWritePorts_0_addr ? arch_table_31 : _GEN_420; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] arch_mask_1 = {io_archWritePorts_1_wen,io_archWritePorts_1_wen,io_archWritePorts_1_wen,
    io_archWritePorts_1_wen,io_archWritePorts_1_wen,io_archWritePorts_1_wen}; // @[RenameTable.scala 104:57]
  wire [5:0] _GEN_487 = 5'h1 == io_archWritePorts_1_addr ? arch_table_1 : arch_table_0; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_488 = 5'h2 == io_archWritePorts_1_addr ? arch_table_2 : _GEN_487; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_489 = 5'h3 == io_archWritePorts_1_addr ? arch_table_3 : _GEN_488; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_490 = 5'h4 == io_archWritePorts_1_addr ? arch_table_4 : _GEN_489; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_491 = 5'h5 == io_archWritePorts_1_addr ? arch_table_5 : _GEN_490; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_492 = 5'h6 == io_archWritePorts_1_addr ? arch_table_6 : _GEN_491; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_493 = 5'h7 == io_archWritePorts_1_addr ? arch_table_7 : _GEN_492; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_494 = 5'h8 == io_archWritePorts_1_addr ? arch_table_8 : _GEN_493; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_495 = 5'h9 == io_archWritePorts_1_addr ? arch_table_9 : _GEN_494; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_496 = 5'ha == io_archWritePorts_1_addr ? arch_table_10 : _GEN_495; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_497 = 5'hb == io_archWritePorts_1_addr ? arch_table_11 : _GEN_496; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_498 = 5'hc == io_archWritePorts_1_addr ? arch_table_12 : _GEN_497; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_499 = 5'hd == io_archWritePorts_1_addr ? arch_table_13 : _GEN_498; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_500 = 5'he == io_archWritePorts_1_addr ? arch_table_14 : _GEN_499; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_501 = 5'hf == io_archWritePorts_1_addr ? arch_table_15 : _GEN_500; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_502 = 5'h10 == io_archWritePorts_1_addr ? arch_table_16 : _GEN_501; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_503 = 5'h11 == io_archWritePorts_1_addr ? arch_table_17 : _GEN_502; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_504 = 5'h12 == io_archWritePorts_1_addr ? arch_table_18 : _GEN_503; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_505 = 5'h13 == io_archWritePorts_1_addr ? arch_table_19 : _GEN_504; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_506 = 5'h14 == io_archWritePorts_1_addr ? arch_table_20 : _GEN_505; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_507 = 5'h15 == io_archWritePorts_1_addr ? arch_table_21 : _GEN_506; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_508 = 5'h16 == io_archWritePorts_1_addr ? arch_table_22 : _GEN_507; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_509 = 5'h17 == io_archWritePorts_1_addr ? arch_table_23 : _GEN_508; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_510 = 5'h18 == io_archWritePorts_1_addr ? arch_table_24 : _GEN_509; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_511 = 5'h19 == io_archWritePorts_1_addr ? arch_table_25 : _GEN_510; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_512 = 5'h1a == io_archWritePorts_1_addr ? arch_table_26 : _GEN_511; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_513 = 5'h1b == io_archWritePorts_1_addr ? arch_table_27 : _GEN_512; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_514 = 5'h1c == io_archWritePorts_1_addr ? arch_table_28 : _GEN_513; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_515 = 5'h1d == io_archWritePorts_1_addr ? arch_table_29 : _GEN_514; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_516 = 5'h1e == io_archWritePorts_1_addr ? arch_table_30 : _GEN_515; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _GEN_517 = 5'h1f == io_archWritePorts_1_addr ? arch_table_31 : _GEN_516; // @[RenameTable.scala 106:{34,34}]
  wire [5:0] _old_pdest_1_T = _GEN_517 & arch_mask_1; // @[RenameTable.scala 106:34]
  wire  _old_pdest_1_T_2 = io_archWritePorts_0_wen & io_archWritePorts_0_addr == io_archWritePorts_1_addr; // @[RenameTable.scala 107:65]
  wire [5:0] _old_pdest_1_T_3 = io_archWritePorts_0_data & arch_mask_1; // @[RenameTable.scala 107:94]
  wire [7:0] need_free_0_lo_lo = {arch_table_7 != old_pdest_0,arch_table_6 != old_pdest_0,arch_table_5 != old_pdest_0,
    arch_table_4 != old_pdest_0,arch_table_3 != old_pdest_0,arch_table_2 != old_pdest_0,arch_table_1 != old_pdest_0,
    arch_table_0 != old_pdest_0}; // @[RenameTable.scala 114:48]
  wire [15:0] need_free_0_lo = {arch_table_15 != old_pdest_0,arch_table_14 != old_pdest_0,arch_table_13 != old_pdest_0,
    arch_table_12 != old_pdest_0,arch_table_11 != old_pdest_0,arch_table_10 != old_pdest_0,arch_table_9 != old_pdest_0,
    arch_table_8 != old_pdest_0,need_free_0_lo_lo}; // @[RenameTable.scala 114:48]
  wire [7:0] need_free_0_hi_lo = {arch_table_23 != old_pdest_0,arch_table_22 != old_pdest_0,arch_table_21 != old_pdest_0
    ,arch_table_20 != old_pdest_0,arch_table_19 != old_pdest_0,arch_table_18 != old_pdest_0,arch_table_17 != old_pdest_0
    ,arch_table_16 != old_pdest_0}; // @[RenameTable.scala 114:48]
  wire [31:0] _need_free_0_T_32 = {arch_table_31 != old_pdest_0,arch_table_30 != old_pdest_0,arch_table_29 !=
    old_pdest_0,arch_table_28 != old_pdest_0,arch_table_27 != old_pdest_0,arch_table_26 != old_pdest_0,arch_table_25 !=
    old_pdest_0,arch_table_24 != old_pdest_0,need_free_0_hi_lo,need_free_0_lo}; // @[RenameTable.scala 114:48]
  wire  hasDuplicate_0 = old_pdest_0 == old_pdest_1; // @[RenameTable.scala 112:48]
  wire  blockedByDup = |hasDuplicate_0; // @[RenameTable.scala 113:78]
  wire [7:0] need_free_1_lo_lo = {arch_table_7 != old_pdest_1,arch_table_6 != old_pdest_1,arch_table_5 != old_pdest_1,
    arch_table_4 != old_pdest_1,arch_table_3 != old_pdest_1,arch_table_2 != old_pdest_1,arch_table_1 != old_pdest_1,
    arch_table_0 != old_pdest_1}; // @[RenameTable.scala 114:48]
  wire [15:0] need_free_1_lo = {arch_table_15 != old_pdest_1,arch_table_14 != old_pdest_1,arch_table_13 != old_pdest_1,
    arch_table_12 != old_pdest_1,arch_table_11 != old_pdest_1,arch_table_10 != old_pdest_1,arch_table_9 != old_pdest_1,
    arch_table_8 != old_pdest_1,need_free_1_lo_lo}; // @[RenameTable.scala 114:48]
  wire [7:0] need_free_1_hi_lo = {arch_table_23 != old_pdest_1,arch_table_22 != old_pdest_1,arch_table_21 != old_pdest_1
    ,arch_table_20 != old_pdest_1,arch_table_19 != old_pdest_1,arch_table_18 != old_pdest_1,arch_table_17 != old_pdest_1
    ,arch_table_16 != old_pdest_1}; // @[RenameTable.scala 114:48]
  wire [31:0] _need_free_1_T_32 = {arch_table_31 != old_pdest_1,arch_table_30 != old_pdest_1,arch_table_29 !=
    old_pdest_1,arch_table_28 != old_pdest_1,arch_table_27 != old_pdest_1,arch_table_26 != old_pdest_1,arch_table_25 !=
    old_pdest_1,arch_table_24 != old_pdest_1,need_free_1_hi_lo,need_free_1_lo}; // @[RenameTable.scala 114:48]
  SnapshotGenerator_1 snapshots_snapshotGen ( // @[CtrlBlock.scala 49:29]
    .clock(snapshots_snapshotGen_clock),
    .reset(snapshots_snapshotGen_reset),
    .io_enq(snapshots_snapshotGen_io_enq),
    .io_enqData_0_0(snapshots_snapshotGen_io_enqData_0_0),
    .io_enqData_0_1(snapshots_snapshotGen_io_enqData_0_1),
    .io_enqData_0_2(snapshots_snapshotGen_io_enqData_0_2),
    .io_enqData_0_3(snapshots_snapshotGen_io_enqData_0_3),
    .io_enqData_0_4(snapshots_snapshotGen_io_enqData_0_4),
    .io_enqData_0_5(snapshots_snapshotGen_io_enqData_0_5),
    .io_enqData_0_6(snapshots_snapshotGen_io_enqData_0_6),
    .io_enqData_0_7(snapshots_snapshotGen_io_enqData_0_7),
    .io_enqData_0_8(snapshots_snapshotGen_io_enqData_0_8),
    .io_enqData_0_9(snapshots_snapshotGen_io_enqData_0_9),
    .io_enqData_0_10(snapshots_snapshotGen_io_enqData_0_10),
    .io_enqData_0_11(snapshots_snapshotGen_io_enqData_0_11),
    .io_enqData_0_12(snapshots_snapshotGen_io_enqData_0_12),
    .io_enqData_0_13(snapshots_snapshotGen_io_enqData_0_13),
    .io_enqData_0_14(snapshots_snapshotGen_io_enqData_0_14),
    .io_enqData_0_15(snapshots_snapshotGen_io_enqData_0_15),
    .io_enqData_0_16(snapshots_snapshotGen_io_enqData_0_16),
    .io_enqData_0_17(snapshots_snapshotGen_io_enqData_0_17),
    .io_enqData_0_18(snapshots_snapshotGen_io_enqData_0_18),
    .io_enqData_0_19(snapshots_snapshotGen_io_enqData_0_19),
    .io_enqData_0_20(snapshots_snapshotGen_io_enqData_0_20),
    .io_enqData_0_21(snapshots_snapshotGen_io_enqData_0_21),
    .io_enqData_0_22(snapshots_snapshotGen_io_enqData_0_22),
    .io_enqData_0_23(snapshots_snapshotGen_io_enqData_0_23),
    .io_enqData_0_24(snapshots_snapshotGen_io_enqData_0_24),
    .io_enqData_0_25(snapshots_snapshotGen_io_enqData_0_25),
    .io_enqData_0_26(snapshots_snapshotGen_io_enqData_0_26),
    .io_enqData_0_27(snapshots_snapshotGen_io_enqData_0_27),
    .io_enqData_0_28(snapshots_snapshotGen_io_enqData_0_28),
    .io_enqData_0_29(snapshots_snapshotGen_io_enqData_0_29),
    .io_enqData_0_30(snapshots_snapshotGen_io_enqData_0_30),
    .io_enqData_0_31(snapshots_snapshotGen_io_enqData_0_31),
    .io_deq(snapshots_snapshotGen_io_deq),
    .io_flush(snapshots_snapshotGen_io_flush),
    .io_snapshots_0_0(snapshots_snapshotGen_io_snapshots_0_0),
    .io_snapshots_0_1(snapshots_snapshotGen_io_snapshots_0_1),
    .io_snapshots_0_2(snapshots_snapshotGen_io_snapshots_0_2),
    .io_snapshots_0_3(snapshots_snapshotGen_io_snapshots_0_3),
    .io_snapshots_0_4(snapshots_snapshotGen_io_snapshots_0_4),
    .io_snapshots_0_5(snapshots_snapshotGen_io_snapshots_0_5),
    .io_snapshots_0_6(snapshots_snapshotGen_io_snapshots_0_6),
    .io_snapshots_0_7(snapshots_snapshotGen_io_snapshots_0_7),
    .io_snapshots_0_8(snapshots_snapshotGen_io_snapshots_0_8),
    .io_snapshots_0_9(snapshots_snapshotGen_io_snapshots_0_9),
    .io_snapshots_0_10(snapshots_snapshotGen_io_snapshots_0_10),
    .io_snapshots_0_11(snapshots_snapshotGen_io_snapshots_0_11),
    .io_snapshots_0_12(snapshots_snapshotGen_io_snapshots_0_12),
    .io_snapshots_0_13(snapshots_snapshotGen_io_snapshots_0_13),
    .io_snapshots_0_14(snapshots_snapshotGen_io_snapshots_0_14),
    .io_snapshots_0_15(snapshots_snapshotGen_io_snapshots_0_15),
    .io_snapshots_0_16(snapshots_snapshotGen_io_snapshots_0_16),
    .io_snapshots_0_17(snapshots_snapshotGen_io_snapshots_0_17),
    .io_snapshots_0_18(snapshots_snapshotGen_io_snapshots_0_18),
    .io_snapshots_0_19(snapshots_snapshotGen_io_snapshots_0_19),
    .io_snapshots_0_20(snapshots_snapshotGen_io_snapshots_0_20),
    .io_snapshots_0_21(snapshots_snapshotGen_io_snapshots_0_21),
    .io_snapshots_0_22(snapshots_snapshotGen_io_snapshots_0_22),
    .io_snapshots_0_23(snapshots_snapshotGen_io_snapshots_0_23),
    .io_snapshots_0_24(snapshots_snapshotGen_io_snapshots_0_24),
    .io_snapshots_0_25(snapshots_snapshotGen_io_snapshots_0_25),
    .io_snapshots_0_26(snapshots_snapshotGen_io_snapshots_0_26),
    .io_snapshots_0_27(snapshots_snapshotGen_io_snapshots_0_27),
    .io_snapshots_0_28(snapshots_snapshotGen_io_snapshots_0_28),
    .io_snapshots_0_29(snapshots_snapshotGen_io_snapshots_0_29),
    .io_snapshots_0_30(snapshots_snapshotGen_io_snapshots_0_30),
    .io_snapshots_0_31(snapshots_snapshotGen_io_snapshots_0_31),
    .io_snapshots_1_0(snapshots_snapshotGen_io_snapshots_1_0),
    .io_snapshots_1_1(snapshots_snapshotGen_io_snapshots_1_1),
    .io_snapshots_1_2(snapshots_snapshotGen_io_snapshots_1_2),
    .io_snapshots_1_3(snapshots_snapshotGen_io_snapshots_1_3),
    .io_snapshots_1_4(snapshots_snapshotGen_io_snapshots_1_4),
    .io_snapshots_1_5(snapshots_snapshotGen_io_snapshots_1_5),
    .io_snapshots_1_6(snapshots_snapshotGen_io_snapshots_1_6),
    .io_snapshots_1_7(snapshots_snapshotGen_io_snapshots_1_7),
    .io_snapshots_1_8(snapshots_snapshotGen_io_snapshots_1_8),
    .io_snapshots_1_9(snapshots_snapshotGen_io_snapshots_1_9),
    .io_snapshots_1_10(snapshots_snapshotGen_io_snapshots_1_10),
    .io_snapshots_1_11(snapshots_snapshotGen_io_snapshots_1_11),
    .io_snapshots_1_12(snapshots_snapshotGen_io_snapshots_1_12),
    .io_snapshots_1_13(snapshots_snapshotGen_io_snapshots_1_13),
    .io_snapshots_1_14(snapshots_snapshotGen_io_snapshots_1_14),
    .io_snapshots_1_15(snapshots_snapshotGen_io_snapshots_1_15),
    .io_snapshots_1_16(snapshots_snapshotGen_io_snapshots_1_16),
    .io_snapshots_1_17(snapshots_snapshotGen_io_snapshots_1_17),
    .io_snapshots_1_18(snapshots_snapshotGen_io_snapshots_1_18),
    .io_snapshots_1_19(snapshots_snapshotGen_io_snapshots_1_19),
    .io_snapshots_1_20(snapshots_snapshotGen_io_snapshots_1_20),
    .io_snapshots_1_21(snapshots_snapshotGen_io_snapshots_1_21),
    .io_snapshots_1_22(snapshots_snapshotGen_io_snapshots_1_22),
    .io_snapshots_1_23(snapshots_snapshotGen_io_snapshots_1_23),
    .io_snapshots_1_24(snapshots_snapshotGen_io_snapshots_1_24),
    .io_snapshots_1_25(snapshots_snapshotGen_io_snapshots_1_25),
    .io_snapshots_1_26(snapshots_snapshotGen_io_snapshots_1_26),
    .io_snapshots_1_27(snapshots_snapshotGen_io_snapshots_1_27),
    .io_snapshots_1_28(snapshots_snapshotGen_io_snapshots_1_28),
    .io_snapshots_1_29(snapshots_snapshotGen_io_snapshots_1_29),
    .io_snapshots_1_30(snapshots_snapshotGen_io_snapshots_1_30),
    .io_snapshots_1_31(snapshots_snapshotGen_io_snapshots_1_31),
    .io_snapshots_2_0(snapshots_snapshotGen_io_snapshots_2_0),
    .io_snapshots_2_1(snapshots_snapshotGen_io_snapshots_2_1),
    .io_snapshots_2_2(snapshots_snapshotGen_io_snapshots_2_2),
    .io_snapshots_2_3(snapshots_snapshotGen_io_snapshots_2_3),
    .io_snapshots_2_4(snapshots_snapshotGen_io_snapshots_2_4),
    .io_snapshots_2_5(snapshots_snapshotGen_io_snapshots_2_5),
    .io_snapshots_2_6(snapshots_snapshotGen_io_snapshots_2_6),
    .io_snapshots_2_7(snapshots_snapshotGen_io_snapshots_2_7),
    .io_snapshots_2_8(snapshots_snapshotGen_io_snapshots_2_8),
    .io_snapshots_2_9(snapshots_snapshotGen_io_snapshots_2_9),
    .io_snapshots_2_10(snapshots_snapshotGen_io_snapshots_2_10),
    .io_snapshots_2_11(snapshots_snapshotGen_io_snapshots_2_11),
    .io_snapshots_2_12(snapshots_snapshotGen_io_snapshots_2_12),
    .io_snapshots_2_13(snapshots_snapshotGen_io_snapshots_2_13),
    .io_snapshots_2_14(snapshots_snapshotGen_io_snapshots_2_14),
    .io_snapshots_2_15(snapshots_snapshotGen_io_snapshots_2_15),
    .io_snapshots_2_16(snapshots_snapshotGen_io_snapshots_2_16),
    .io_snapshots_2_17(snapshots_snapshotGen_io_snapshots_2_17),
    .io_snapshots_2_18(snapshots_snapshotGen_io_snapshots_2_18),
    .io_snapshots_2_19(snapshots_snapshotGen_io_snapshots_2_19),
    .io_snapshots_2_20(snapshots_snapshotGen_io_snapshots_2_20),
    .io_snapshots_2_21(snapshots_snapshotGen_io_snapshots_2_21),
    .io_snapshots_2_22(snapshots_snapshotGen_io_snapshots_2_22),
    .io_snapshots_2_23(snapshots_snapshotGen_io_snapshots_2_23),
    .io_snapshots_2_24(snapshots_snapshotGen_io_snapshots_2_24),
    .io_snapshots_2_25(snapshots_snapshotGen_io_snapshots_2_25),
    .io_snapshots_2_26(snapshots_snapshotGen_io_snapshots_2_26),
    .io_snapshots_2_27(snapshots_snapshotGen_io_snapshots_2_27),
    .io_snapshots_2_28(snapshots_snapshotGen_io_snapshots_2_28),
    .io_snapshots_2_29(snapshots_snapshotGen_io_snapshots_2_29),
    .io_snapshots_2_30(snapshots_snapshotGen_io_snapshots_2_30),
    .io_snapshots_2_31(snapshots_snapshotGen_io_snapshots_2_31),
    .io_snapshots_3_0(snapshots_snapshotGen_io_snapshots_3_0),
    .io_snapshots_3_1(snapshots_snapshotGen_io_snapshots_3_1),
    .io_snapshots_3_2(snapshots_snapshotGen_io_snapshots_3_2),
    .io_snapshots_3_3(snapshots_snapshotGen_io_snapshots_3_3),
    .io_snapshots_3_4(snapshots_snapshotGen_io_snapshots_3_4),
    .io_snapshots_3_5(snapshots_snapshotGen_io_snapshots_3_5),
    .io_snapshots_3_6(snapshots_snapshotGen_io_snapshots_3_6),
    .io_snapshots_3_7(snapshots_snapshotGen_io_snapshots_3_7),
    .io_snapshots_3_8(snapshots_snapshotGen_io_snapshots_3_8),
    .io_snapshots_3_9(snapshots_snapshotGen_io_snapshots_3_9),
    .io_snapshots_3_10(snapshots_snapshotGen_io_snapshots_3_10),
    .io_snapshots_3_11(snapshots_snapshotGen_io_snapshots_3_11),
    .io_snapshots_3_12(snapshots_snapshotGen_io_snapshots_3_12),
    .io_snapshots_3_13(snapshots_snapshotGen_io_snapshots_3_13),
    .io_snapshots_3_14(snapshots_snapshotGen_io_snapshots_3_14),
    .io_snapshots_3_15(snapshots_snapshotGen_io_snapshots_3_15),
    .io_snapshots_3_16(snapshots_snapshotGen_io_snapshots_3_16),
    .io_snapshots_3_17(snapshots_snapshotGen_io_snapshots_3_17),
    .io_snapshots_3_18(snapshots_snapshotGen_io_snapshots_3_18),
    .io_snapshots_3_19(snapshots_snapshotGen_io_snapshots_3_19),
    .io_snapshots_3_20(snapshots_snapshotGen_io_snapshots_3_20),
    .io_snapshots_3_21(snapshots_snapshotGen_io_snapshots_3_21),
    .io_snapshots_3_22(snapshots_snapshotGen_io_snapshots_3_22),
    .io_snapshots_3_23(snapshots_snapshotGen_io_snapshots_3_23),
    .io_snapshots_3_24(snapshots_snapshotGen_io_snapshots_3_24),
    .io_snapshots_3_25(snapshots_snapshotGen_io_snapshots_3_25),
    .io_snapshots_3_26(snapshots_snapshotGen_io_snapshots_3_26),
    .io_snapshots_3_27(snapshots_snapshotGen_io_snapshots_3_27),
    .io_snapshots_3_28(snapshots_snapshotGen_io_snapshots_3_28),
    .io_snapshots_3_29(snapshots_snapshotGen_io_snapshots_3_29),
    .io_snapshots_3_30(snapshots_snapshotGen_io_snapshots_3_30),
    .io_snapshots_3_31(snapshots_snapshotGen_io_snapshots_3_31)
  );
  assign io_readPorts_0_data = |_io_readPorts_0_data_T ? bypass_data : t1_rdata_0; // @[RenameTable.scala 97:18]
  assign io_readPorts_1_data = |_io_readPorts_1_data_T ? bypass_data_1 : t1_rdata_1; // @[RenameTable.scala 97:18]
  assign io_readPorts_3_data = |_io_readPorts_3_data_T ? bypass_data_3 : t1_rdata_3; // @[RenameTable.scala 97:18]
  assign io_readPorts_4_data = |_io_readPorts_4_data_T ? bypass_data_4 : t1_rdata_4; // @[RenameTable.scala 97:18]
  assign io_old_pdest_0 = old_pdest_0; // @[RenameTable.scala 117:16]
  assign io_old_pdest_1 = old_pdest_1; // @[RenameTable.scala 117:16]
  assign io_need_free_0 = need_free_0; // @[RenameTable.scala 118:16]
  assign io_need_free_1 = need_free_1; // @[RenameTable.scala 118:16]
`ifndef SYNTHESIS
  assign io_debug_rdata_0 = arch_table_0; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_0 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_1 = arch_table_1; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_1 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_2 = arch_table_2; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_2 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_3 = arch_table_3; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_3 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_4 = arch_table_4; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_4 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_5 = arch_table_5; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_5 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_6 = arch_table_6; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_6 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_7 = arch_table_7; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_7 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_8 = arch_table_8; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_8 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_9 = arch_table_9; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_9 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_10 = arch_table_10; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_10 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_11 = arch_table_11; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_11 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_12 = arch_table_12; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_12 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_13 = arch_table_13; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_13 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_14 = arch_table_14; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_14 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_15 = arch_table_15; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_15 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_16 = arch_table_16; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_16 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_17 = arch_table_17; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_17 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_18 = arch_table_18; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_18 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_19 = arch_table_19; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_19 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_20 = arch_table_20; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_20 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_21 = arch_table_21; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_21 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_22 = arch_table_22; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_22 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_23 = arch_table_23; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_23 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_24 = arch_table_24; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_24 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_25 = arch_table_25; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_25 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_26 = arch_table_26; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_26 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_27 = arch_table_27; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_27 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_28 = arch_table_28; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_28 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_29 = arch_table_29; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_29 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_30 = arch_table_30; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_30 = 0;
`endif
`ifndef SYNTHESIS
  assign io_debug_rdata_31 = arch_table_31; // @[RenameTable.scala 119:18]
`else
  assign io_debug_rdata_31 = 0;
`endif
  assign snapshots_snapshotGen_clock = clock;
  assign snapshots_snapshotGen_reset = reset;
  assign snapshots_snapshotGen_io_enq = t1_snpt_snptEnq; // @[CtrlBlock.scala 50:24]
  assign snapshots_snapshotGen_io_enqData_0_0 = spec_table_0; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_1 = spec_table_1; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_2 = spec_table_2; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_3 = spec_table_3; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_4 = spec_table_4; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_5 = spec_table_5; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_6 = spec_table_6; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_7 = spec_table_7; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_8 = spec_table_8; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_9 = spec_table_9; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_10 = spec_table_10; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_11 = spec_table_11; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_12 = spec_table_12; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_13 = spec_table_13; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_14 = spec_table_14; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_15 = spec_table_15; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_16 = spec_table_16; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_17 = spec_table_17; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_18 = spec_table_18; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_19 = spec_table_19; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_20 = spec_table_20; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_21 = spec_table_21; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_22 = spec_table_22; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_23 = spec_table_23; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_24 = spec_table_24; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_25 = spec_table_25; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_26 = spec_table_26; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_27 = spec_table_27; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_28 = spec_table_28; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_29 = spec_table_29; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_30 = spec_table_30; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_enqData_0_31 = spec_table_31; // @[CtrlBlock.scala 51:33]
  assign snapshots_snapshotGen_io_deq = t1_snpt_snptDeq; // @[CtrlBlock.scala 52:24]
  assign snapshots_snapshotGen_io_flush = t1_redirect; // @[CtrlBlock.scala 53:26]
  always @(posedge clock) begin
    if (io_redirect) begin // @[RenameTable.scala 71:29]
      t1_wSpec_1_wen <= 1'h0;
    end else begin
      t1_wSpec_1_wen <= io_specWritePorts_1_wen;
    end
    if (io_redirect) begin // @[RenameTable.scala 71:29]
      t1_wSpec_1_addr <= 5'h0;
    end else begin
      t1_wSpec_1_addr <= io_specWritePorts_1_addr;
    end
    if (io_redirect) begin // @[RenameTable.scala 71:29]
      t1_wSpec_0_wen <= 1'h0;
    end else begin
      t1_wSpec_0_wen <= io_specWritePorts_0_wen;
    end
    if (io_redirect) begin // @[RenameTable.scala 71:29]
      t1_wSpec_0_addr <= 5'h0;
    end else begin
      t1_wSpec_0_addr <= io_specWritePorts_0_addr;
    end
    if (io_redirect) begin // @[RenameTable.scala 71:29]
      t1_wSpec_1_data <= 6'h0;
    end else begin
      t1_wSpec_1_data <= io_specWritePorts_1_data;
    end
    if (io_redirect) begin // @[RenameTable.scala 71:29]
      t1_wSpec_0_data <= 6'h0;
    end else begin
      t1_wSpec_0_data <= io_specWritePorts_0_data;
    end
    if (io_readPorts_0_hold) begin // @[RenameTable.scala 69:51]
      t1_rdata_0 <= io_readPorts_0_data;
    end else if (5'h1f == io_readPorts_0_addr) begin // @[RenameTable.scala 69:51]
      if (t1_redirect) begin // @[RenameTable.scala 83:16]
        if (t1_snpt_useSnpt) begin // @[RenameTable.scala 85:10]
          t1_rdata_0 <= _GEN_325;
        end else begin
          t1_rdata_0 <= arch_table_31;
        end
      end else if (|_spec_table_next_31_T_1) begin // @[RenameTable.scala 86:10]
        t1_rdata_0 <= wMatch_31;
      end else begin
        t1_rdata_0 <= spec_table_31;
      end
    end else if (5'h1e == io_readPorts_0_addr) begin // @[RenameTable.scala 69:51]
      if (t1_redirect) begin // @[RenameTable.scala 83:16]
        t1_rdata_0 <= _spec_table_next_30_T;
      end else begin
        t1_rdata_0 <= _spec_table_next_30_T_3;
      end
    end else if (5'h1d == io_readPorts_0_addr) begin // @[RenameTable.scala 69:51]
      t1_rdata_0 <= spec_table_next_29; // @[RenameTable.scala 69:51]
    end else begin
      t1_rdata_0 <= _GEN_28;
    end
    if (io_readPorts_1_hold) begin // @[RenameTable.scala 69:51]
      t1_rdata_1 <= io_readPorts_1_data;
    end else if (5'h1f == io_readPorts_1_addr) begin // @[RenameTable.scala 69:51]
      if (t1_redirect) begin // @[RenameTable.scala 83:16]
        if (t1_snpt_useSnpt) begin // @[RenameTable.scala 85:10]
          t1_rdata_1 <= _GEN_325;
        end else begin
          t1_rdata_1 <= arch_table_31;
        end
      end else if (|_spec_table_next_31_T_1) begin // @[RenameTable.scala 86:10]
        t1_rdata_1 <= wMatch_31;
      end else begin
        t1_rdata_1 <= spec_table_31;
      end
    end else if (5'h1e == io_readPorts_1_addr) begin // @[RenameTable.scala 69:51]
      if (t1_redirect) begin // @[RenameTable.scala 83:16]
        t1_rdata_1 <= _spec_table_next_30_T;
      end else begin
        t1_rdata_1 <= _spec_table_next_30_T_3;
      end
    end else if (5'h1d == io_readPorts_1_addr) begin // @[RenameTable.scala 69:51]
      t1_rdata_1 <= spec_table_next_29; // @[RenameTable.scala 69:51]
    end else begin
      t1_rdata_1 <= _GEN_60;
    end
    if (io_readPorts_3_hold) begin // @[RenameTable.scala 69:51]
      t1_rdata_3 <= io_readPorts_3_data;
    end else if (5'h1f == io_readPorts_3_addr) begin // @[RenameTable.scala 69:51]
      if (t1_redirect) begin // @[RenameTable.scala 83:16]
        if (t1_snpt_useSnpt) begin // @[RenameTable.scala 85:10]
          t1_rdata_3 <= _GEN_325;
        end else begin
          t1_rdata_3 <= arch_table_31;
        end
      end else if (|_spec_table_next_31_T_1) begin // @[RenameTable.scala 86:10]
        t1_rdata_3 <= wMatch_31;
      end else begin
        t1_rdata_3 <= spec_table_31;
      end
    end else if (5'h1e == io_readPorts_3_addr) begin // @[RenameTable.scala 69:51]
      if (t1_redirect) begin // @[RenameTable.scala 83:16]
        t1_rdata_3 <= _spec_table_next_30_T;
      end else begin
        t1_rdata_3 <= _spec_table_next_30_T_3;
      end
    end else if (5'h1d == io_readPorts_3_addr) begin // @[RenameTable.scala 69:51]
      t1_rdata_3 <= spec_table_next_29; // @[RenameTable.scala 69:51]
    end else begin
      t1_rdata_3 <= _GEN_124;
    end
    if (io_readPorts_4_hold) begin // @[RenameTable.scala 69:51]
      t1_rdata_4 <= io_readPorts_4_data;
    end else if (5'h1f == io_readPorts_4_addr) begin // @[RenameTable.scala 69:51]
      if (t1_redirect) begin // @[RenameTable.scala 83:16]
        if (t1_snpt_useSnpt) begin // @[RenameTable.scala 85:10]
          t1_rdata_4 <= _GEN_325;
        end else begin
          t1_rdata_4 <= arch_table_31;
        end
      end else if (|_spec_table_next_31_T_1) begin // @[RenameTable.scala 86:10]
        t1_rdata_4 <= wMatch_31;
      end else begin
        t1_rdata_4 <= spec_table_31;
      end
    end else if (5'h1e == io_readPorts_4_addr) begin // @[RenameTable.scala 69:51]
      if (t1_redirect) begin // @[RenameTable.scala 83:16]
        t1_rdata_4 <= _spec_table_next_30_T;
      end else begin
        t1_rdata_4 <= _spec_table_next_30_T_3;
      end
    end else if (5'h1d == io_readPorts_4_addr) begin // @[RenameTable.scala 69:51]
      t1_rdata_4 <= spec_table_next_29; // @[RenameTable.scala 69:51]
    end else begin
      t1_rdata_4 <= _GEN_156;
    end
    if (_t1_raddr_T) begin // @[Reg.scala 17:18]
      t1_raddr_0 <= io_readPorts_0_addr; // @[Reg.scala 17:22]
    end
    if (_t1_raddr_T_1) begin // @[Reg.scala 17:18]
      t1_raddr_1 <= io_readPorts_1_addr; // @[Reg.scala 17:22]
    end
    if (_t1_raddr_T_3) begin // @[Reg.scala 17:18]
      t1_raddr_3 <= io_readPorts_3_addr; // @[Reg.scala 17:22]
    end
    if (_t1_raddr_T_4) begin // @[Reg.scala 17:18]
      t1_raddr_4 <= io_readPorts_4_addr; // @[Reg.scala 17:22]
    end
    if (io_redirect) begin // @[RenameTable.scala 95:32]
      t1_bypass__0 <= 1'h0;
    end else begin
      t1_bypass__0 <= t0_bypass_0;
    end
    if (io_redirect) begin // @[RenameTable.scala 95:32]
      t1_bypass__1 <= 1'h0;
    end else begin
      t1_bypass__1 <= t0_bypass_1;
    end
    if (io_redirect) begin // @[RenameTable.scala 95:32]
      t1_bypass_1_0 <= 1'h0;
    end else begin
      t1_bypass_1_0 <= t0_bypass_0_1;
    end
    if (io_redirect) begin // @[RenameTable.scala 95:32]
      t1_bypass_1_1 <= 1'h0;
    end else begin
      t1_bypass_1_1 <= t0_bypass_1_1;
    end
    if (io_redirect) begin // @[RenameTable.scala 95:32]
      t1_bypass_3_0 <= 1'h0;
    end else begin
      t1_bypass_3_0 <= t0_bypass_0_3;
    end
    if (io_redirect) begin // @[RenameTable.scala 95:32]
      t1_bypass_3_1 <= 1'h0;
    end else begin
      t1_bypass_3_1 <= t0_bypass_1_3;
    end
    if (io_redirect) begin // @[RenameTable.scala 95:32]
      t1_bypass_4_0 <= 1'h0;
    end else begin
      t1_bypass_4_0 <= t0_bypass_0_4;
    end
    if (io_redirect) begin // @[RenameTable.scala 95:32]
      t1_bypass_4_1 <= 1'h0;
    end else begin
      t1_bypass_4_1 <= t0_bypass_1_4;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_0 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_0 <= snapshots_snapshotGen_io_snapshots_3_0;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_0 <= snapshots_snapshotGen_io_snapshots_2_0;
        end else begin
          spec_table_0 <= _GEN_199;
        end
      end else begin
        spec_table_0 <= arch_table_0;
      end
    end else if (|_spec_table_next_0_T_1) begin
      if (matchVec_1) begin
        spec_table_0 <= t1_wSpec_1_data;
      end else begin
        spec_table_0 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_1 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_1 <= snapshots_snapshotGen_io_snapshots_3_1;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_1 <= snapshots_snapshotGen_io_snapshots_2_1;
        end else begin
          spec_table_1 <= _GEN_203;
        end
      end else begin
        spec_table_1 <= arch_table_1;
      end
    end else if (|_spec_table_next_1_T_1) begin
      if (matchVec_1_1) begin
        spec_table_1 <= t1_wSpec_1_data;
      end else begin
        spec_table_1 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_2 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_2 <= snapshots_snapshotGen_io_snapshots_3_2;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_2 <= snapshots_snapshotGen_io_snapshots_2_2;
        end else begin
          spec_table_2 <= _GEN_207;
        end
      end else begin
        spec_table_2 <= arch_table_2;
      end
    end else if (|_spec_table_next_2_T_1) begin
      if (matchVec_1_2) begin
        spec_table_2 <= t1_wSpec_1_data;
      end else begin
        spec_table_2 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_3 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_3 <= snapshots_snapshotGen_io_snapshots_3_3;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_3 <= snapshots_snapshotGen_io_snapshots_2_3;
        end else begin
          spec_table_3 <= _GEN_211;
        end
      end else begin
        spec_table_3 <= arch_table_3;
      end
    end else if (|_spec_table_next_3_T_1) begin
      if (matchVec_1_3) begin
        spec_table_3 <= t1_wSpec_1_data;
      end else begin
        spec_table_3 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_4 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_4 <= snapshots_snapshotGen_io_snapshots_3_4;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_4 <= snapshots_snapshotGen_io_snapshots_2_4;
        end else begin
          spec_table_4 <= _GEN_215;
        end
      end else begin
        spec_table_4 <= arch_table_4;
      end
    end else if (|_spec_table_next_4_T_1) begin
      if (matchVec_1_4) begin
        spec_table_4 <= t1_wSpec_1_data;
      end else begin
        spec_table_4 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_5 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_5 <= snapshots_snapshotGen_io_snapshots_3_5;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_5 <= snapshots_snapshotGen_io_snapshots_2_5;
        end else begin
          spec_table_5 <= _GEN_219;
        end
      end else begin
        spec_table_5 <= arch_table_5;
      end
    end else if (|_spec_table_next_5_T_1) begin
      if (matchVec_1_5) begin
        spec_table_5 <= t1_wSpec_1_data;
      end else begin
        spec_table_5 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_6 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_6 <= snapshots_snapshotGen_io_snapshots_3_6;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_6 <= snapshots_snapshotGen_io_snapshots_2_6;
        end else begin
          spec_table_6 <= _GEN_223;
        end
      end else begin
        spec_table_6 <= arch_table_6;
      end
    end else if (|_spec_table_next_6_T_1) begin
      if (matchVec_1_6) begin
        spec_table_6 <= t1_wSpec_1_data;
      end else begin
        spec_table_6 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_7 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_7 <= snapshots_snapshotGen_io_snapshots_3_7;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_7 <= snapshots_snapshotGen_io_snapshots_2_7;
        end else begin
          spec_table_7 <= _GEN_227;
        end
      end else begin
        spec_table_7 <= arch_table_7;
      end
    end else if (|_spec_table_next_7_T_1) begin
      if (matchVec_1_7) begin
        spec_table_7 <= t1_wSpec_1_data;
      end else begin
        spec_table_7 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_8 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_8 <= snapshots_snapshotGen_io_snapshots_3_8;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_8 <= snapshots_snapshotGen_io_snapshots_2_8;
        end else begin
          spec_table_8 <= _GEN_231;
        end
      end else begin
        spec_table_8 <= arch_table_8;
      end
    end else if (|_spec_table_next_8_T_1) begin
      if (matchVec_1_8) begin
        spec_table_8 <= t1_wSpec_1_data;
      end else begin
        spec_table_8 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_9 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_9 <= snapshots_snapshotGen_io_snapshots_3_9;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_9 <= snapshots_snapshotGen_io_snapshots_2_9;
        end else begin
          spec_table_9 <= _GEN_235;
        end
      end else begin
        spec_table_9 <= arch_table_9;
      end
    end else if (|_spec_table_next_9_T_1) begin
      if (matchVec_1_9) begin
        spec_table_9 <= t1_wSpec_1_data;
      end else begin
        spec_table_9 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_10 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_10 <= snapshots_snapshotGen_io_snapshots_3_10;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_10 <= snapshots_snapshotGen_io_snapshots_2_10;
        end else begin
          spec_table_10 <= _GEN_239;
        end
      end else begin
        spec_table_10 <= arch_table_10;
      end
    end else if (|_spec_table_next_10_T_1) begin
      if (matchVec_1_10) begin
        spec_table_10 <= t1_wSpec_1_data;
      end else begin
        spec_table_10 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_11 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_11 <= snapshots_snapshotGen_io_snapshots_3_11;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_11 <= snapshots_snapshotGen_io_snapshots_2_11;
        end else begin
          spec_table_11 <= _GEN_243;
        end
      end else begin
        spec_table_11 <= arch_table_11;
      end
    end else if (|_spec_table_next_11_T_1) begin
      if (matchVec_1_11) begin
        spec_table_11 <= t1_wSpec_1_data;
      end else begin
        spec_table_11 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_12 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_12 <= snapshots_snapshotGen_io_snapshots_3_12;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_12 <= snapshots_snapshotGen_io_snapshots_2_12;
        end else begin
          spec_table_12 <= _GEN_247;
        end
      end else begin
        spec_table_12 <= arch_table_12;
      end
    end else if (|_spec_table_next_12_T_1) begin
      if (matchVec_1_12) begin
        spec_table_12 <= t1_wSpec_1_data;
      end else begin
        spec_table_12 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_13 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_13 <= snapshots_snapshotGen_io_snapshots_3_13;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_13 <= snapshots_snapshotGen_io_snapshots_2_13;
        end else begin
          spec_table_13 <= _GEN_251;
        end
      end else begin
        spec_table_13 <= arch_table_13;
      end
    end else if (|_spec_table_next_13_T_1) begin
      if (matchVec_1_13) begin
        spec_table_13 <= t1_wSpec_1_data;
      end else begin
        spec_table_13 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_14 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_14 <= snapshots_snapshotGen_io_snapshots_3_14;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_14 <= snapshots_snapshotGen_io_snapshots_2_14;
        end else begin
          spec_table_14 <= _GEN_255;
        end
      end else begin
        spec_table_14 <= arch_table_14;
      end
    end else if (|_spec_table_next_14_T_1) begin
      if (matchVec_1_14) begin
        spec_table_14 <= t1_wSpec_1_data;
      end else begin
        spec_table_14 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_15 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_15 <= snapshots_snapshotGen_io_snapshots_3_15;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_15 <= snapshots_snapshotGen_io_snapshots_2_15;
        end else begin
          spec_table_15 <= _GEN_259;
        end
      end else begin
        spec_table_15 <= arch_table_15;
      end
    end else if (|_spec_table_next_15_T_1) begin
      if (matchVec_1_15) begin
        spec_table_15 <= t1_wSpec_1_data;
      end else begin
        spec_table_15 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_16 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_16 <= snapshots_snapshotGen_io_snapshots_3_16;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_16 <= snapshots_snapshotGen_io_snapshots_2_16;
        end else begin
          spec_table_16 <= _GEN_263;
        end
      end else begin
        spec_table_16 <= arch_table_16;
      end
    end else if (|_spec_table_next_16_T_1) begin
      if (matchVec_1_16) begin
        spec_table_16 <= t1_wSpec_1_data;
      end else begin
        spec_table_16 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_17 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_17 <= snapshots_snapshotGen_io_snapshots_3_17;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_17 <= snapshots_snapshotGen_io_snapshots_2_17;
        end else begin
          spec_table_17 <= _GEN_267;
        end
      end else begin
        spec_table_17 <= arch_table_17;
      end
    end else if (|_spec_table_next_17_T_1) begin
      if (matchVec_1_17) begin
        spec_table_17 <= t1_wSpec_1_data;
      end else begin
        spec_table_17 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_18 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_18 <= snapshots_snapshotGen_io_snapshots_3_18;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_18 <= snapshots_snapshotGen_io_snapshots_2_18;
        end else begin
          spec_table_18 <= _GEN_271;
        end
      end else begin
        spec_table_18 <= arch_table_18;
      end
    end else if (|_spec_table_next_18_T_1) begin
      if (matchVec_1_18) begin
        spec_table_18 <= t1_wSpec_1_data;
      end else begin
        spec_table_18 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_19 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_19 <= snapshots_snapshotGen_io_snapshots_3_19;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_19 <= snapshots_snapshotGen_io_snapshots_2_19;
        end else begin
          spec_table_19 <= _GEN_275;
        end
      end else begin
        spec_table_19 <= arch_table_19;
      end
    end else if (|_spec_table_next_19_T_1) begin
      if (matchVec_1_19) begin
        spec_table_19 <= t1_wSpec_1_data;
      end else begin
        spec_table_19 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_20 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_20 <= snapshots_snapshotGen_io_snapshots_3_20;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_20 <= snapshots_snapshotGen_io_snapshots_2_20;
        end else begin
          spec_table_20 <= _GEN_279;
        end
      end else begin
        spec_table_20 <= arch_table_20;
      end
    end else if (|_spec_table_next_20_T_1) begin
      if (matchVec_1_20) begin
        spec_table_20 <= t1_wSpec_1_data;
      end else begin
        spec_table_20 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_21 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_21 <= snapshots_snapshotGen_io_snapshots_3_21;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_21 <= snapshots_snapshotGen_io_snapshots_2_21;
        end else begin
          spec_table_21 <= _GEN_283;
        end
      end else begin
        spec_table_21 <= arch_table_21;
      end
    end else if (|_spec_table_next_21_T_1) begin
      if (matchVec_1_21) begin
        spec_table_21 <= t1_wSpec_1_data;
      end else begin
        spec_table_21 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_22 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_22 <= snapshots_snapshotGen_io_snapshots_3_22;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_22 <= snapshots_snapshotGen_io_snapshots_2_22;
        end else begin
          spec_table_22 <= _GEN_287;
        end
      end else begin
        spec_table_22 <= arch_table_22;
      end
    end else if (|_spec_table_next_22_T_1) begin
      if (matchVec_1_22) begin
        spec_table_22 <= t1_wSpec_1_data;
      end else begin
        spec_table_22 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_23 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_23 <= snapshots_snapshotGen_io_snapshots_3_23;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_23 <= snapshots_snapshotGen_io_snapshots_2_23;
        end else begin
          spec_table_23 <= _GEN_291;
        end
      end else begin
        spec_table_23 <= arch_table_23;
      end
    end else if (|_spec_table_next_23_T_1) begin
      if (matchVec_1_23) begin
        spec_table_23 <= t1_wSpec_1_data;
      end else begin
        spec_table_23 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_24 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_24 <= snapshots_snapshotGen_io_snapshots_3_24;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_24 <= snapshots_snapshotGen_io_snapshots_2_24;
        end else begin
          spec_table_24 <= _GEN_295;
        end
      end else begin
        spec_table_24 <= arch_table_24;
      end
    end else if (|_spec_table_next_24_T_1) begin
      if (matchVec_1_24) begin
        spec_table_24 <= t1_wSpec_1_data;
      end else begin
        spec_table_24 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_25 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_25 <= snapshots_snapshotGen_io_snapshots_3_25;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_25 <= snapshots_snapshotGen_io_snapshots_2_25;
        end else begin
          spec_table_25 <= _GEN_299;
        end
      end else begin
        spec_table_25 <= arch_table_25;
      end
    end else if (|_spec_table_next_25_T_1) begin
      if (matchVec_1_25) begin
        spec_table_25 <= t1_wSpec_1_data;
      end else begin
        spec_table_25 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_26 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_26 <= snapshots_snapshotGen_io_snapshots_3_26;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_26 <= snapshots_snapshotGen_io_snapshots_2_26;
        end else begin
          spec_table_26 <= _GEN_303;
        end
      end else begin
        spec_table_26 <= arch_table_26;
      end
    end else if (|_spec_table_next_26_T_1) begin
      if (matchVec_1_26) begin
        spec_table_26 <= t1_wSpec_1_data;
      end else begin
        spec_table_26 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_27 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_27 <= snapshots_snapshotGen_io_snapshots_3_27;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_27 <= snapshots_snapshotGen_io_snapshots_2_27;
        end else begin
          spec_table_27 <= _GEN_307;
        end
      end else begin
        spec_table_27 <= arch_table_27;
      end
    end else if (|_spec_table_next_27_T_1) begin
      if (matchVec_1_27) begin
        spec_table_27 <= t1_wSpec_1_data;
      end else begin
        spec_table_27 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_28 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_28 <= snapshots_snapshotGen_io_snapshots_3_28;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_28 <= snapshots_snapshotGen_io_snapshots_2_28;
        end else begin
          spec_table_28 <= _GEN_311;
        end
      end else begin
        spec_table_28 <= arch_table_28;
      end
    end else if (|_spec_table_next_28_T_1) begin
      if (matchVec_1_28) begin
        spec_table_28 <= t1_wSpec_1_data;
      end else begin
        spec_table_28 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_29 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_29 <= snapshots_snapshotGen_io_snapshots_3_29;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_29 <= snapshots_snapshotGen_io_snapshots_2_29;
        end else begin
          spec_table_29 <= _GEN_315;
        end
      end else begin
        spec_table_29 <= arch_table_29;
      end
    end else if (|_spec_table_next_29_T_1) begin
      if (matchVec_1_29) begin
        spec_table_29 <= t1_wSpec_1_data;
      end else begin
        spec_table_29 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_30 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_30 <= snapshots_snapshotGen_io_snapshots_3_30;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_30 <= snapshots_snapshotGen_io_snapshots_2_30;
        end else begin
          spec_table_30 <= _GEN_319;
        end
      end else begin
        spec_table_30 <= arch_table_30;
      end
    end else if (|_spec_table_next_30_T_1) begin
      if (matchVec_1_30) begin
        spec_table_30 <= t1_wSpec_1_data;
      end else begin
        spec_table_30 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 83:16]
      spec_table_31 <= 6'h0; // @[RenameTable.scala 85:{10,10,10,10,10}]
    end else if (t1_redirect) begin // @[RenameTable.scala 86:10]
      if (t1_snpt_useSnpt) begin // @[ParallelMux.scala 90:77]
        if (2'h3 == t1_snpt_snptSelect) begin
          spec_table_31 <= snapshots_snapshotGen_io_snapshots_3_31;
        end else if (2'h2 == t1_snpt_snptSelect) begin
          spec_table_31 <= snapshots_snapshotGen_io_snapshots_2_31;
        end else begin
          spec_table_31 <= _GEN_323;
        end
      end else begin
        spec_table_31 <= arch_table_31;
      end
    end else if (|_spec_table_next_31_T_1) begin
      if (matchVec_1_31) begin
        spec_table_31 <= t1_wSpec_1_data;
      end else begin
        spec_table_31 <= t1_wSpec_0_data;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_0 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h0 == io_archWritePorts_1_addr) begin
        arch_table_0 <= io_archWritePorts_1_data;
      end else begin
        arch_table_0 <= _GEN_358;
      end
    end else begin
      arch_table_0 <= _GEN_358;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_1 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h1 == io_archWritePorts_1_addr) begin
        arch_table_1 <= io_archWritePorts_1_data;
      end else begin
        arch_table_1 <= _GEN_359;
      end
    end else begin
      arch_table_1 <= _GEN_359;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_2 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h2 == io_archWritePorts_1_addr) begin
        arch_table_2 <= io_archWritePorts_1_data;
      end else begin
        arch_table_2 <= _GEN_360;
      end
    end else begin
      arch_table_2 <= _GEN_360;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_3 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h3 == io_archWritePorts_1_addr) begin
        arch_table_3 <= io_archWritePorts_1_data;
      end else begin
        arch_table_3 <= _GEN_361;
      end
    end else begin
      arch_table_3 <= _GEN_361;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_4 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h4 == io_archWritePorts_1_addr) begin
        arch_table_4 <= io_archWritePorts_1_data;
      end else begin
        arch_table_4 <= _GEN_362;
      end
    end else begin
      arch_table_4 <= _GEN_362;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_5 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h5 == io_archWritePorts_1_addr) begin
        arch_table_5 <= io_archWritePorts_1_data;
      end else begin
        arch_table_5 <= _GEN_363;
      end
    end else begin
      arch_table_5 <= _GEN_363;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_6 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h6 == io_archWritePorts_1_addr) begin
        arch_table_6 <= io_archWritePorts_1_data;
      end else begin
        arch_table_6 <= _GEN_364;
      end
    end else begin
      arch_table_6 <= _GEN_364;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_7 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h7 == io_archWritePorts_1_addr) begin
        arch_table_7 <= io_archWritePorts_1_data;
      end else begin
        arch_table_7 <= _GEN_365;
      end
    end else begin
      arch_table_7 <= _GEN_365;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_8 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h8 == io_archWritePorts_1_addr) begin
        arch_table_8 <= io_archWritePorts_1_data;
      end else begin
        arch_table_8 <= _GEN_366;
      end
    end else begin
      arch_table_8 <= _GEN_366;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_9 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h9 == io_archWritePorts_1_addr) begin
        arch_table_9 <= io_archWritePorts_1_data;
      end else begin
        arch_table_9 <= _GEN_367;
      end
    end else begin
      arch_table_9 <= _GEN_367;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_10 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'ha == io_archWritePorts_1_addr) begin
        arch_table_10 <= io_archWritePorts_1_data;
      end else begin
        arch_table_10 <= _GEN_368;
      end
    end else begin
      arch_table_10 <= _GEN_368;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_11 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'hb == io_archWritePorts_1_addr) begin
        arch_table_11 <= io_archWritePorts_1_data;
      end else begin
        arch_table_11 <= _GEN_369;
      end
    end else begin
      arch_table_11 <= _GEN_369;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_12 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'hc == io_archWritePorts_1_addr) begin
        arch_table_12 <= io_archWritePorts_1_data;
      end else begin
        arch_table_12 <= _GEN_370;
      end
    end else begin
      arch_table_12 <= _GEN_370;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_13 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'hd == io_archWritePorts_1_addr) begin
        arch_table_13 <= io_archWritePorts_1_data;
      end else begin
        arch_table_13 <= _GEN_371;
      end
    end else begin
      arch_table_13 <= _GEN_371;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_14 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'he == io_archWritePorts_1_addr) begin
        arch_table_14 <= io_archWritePorts_1_data;
      end else begin
        arch_table_14 <= _GEN_372;
      end
    end else begin
      arch_table_14 <= _GEN_372;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_15 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'hf == io_archWritePorts_1_addr) begin
        arch_table_15 <= io_archWritePorts_1_data;
      end else begin
        arch_table_15 <= _GEN_373;
      end
    end else begin
      arch_table_15 <= _GEN_373;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_16 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h10 == io_archWritePorts_1_addr) begin
        arch_table_16 <= io_archWritePorts_1_data;
      end else begin
        arch_table_16 <= _GEN_374;
      end
    end else begin
      arch_table_16 <= _GEN_374;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_17 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h11 == io_archWritePorts_1_addr) begin
        arch_table_17 <= io_archWritePorts_1_data;
      end else begin
        arch_table_17 <= _GEN_375;
      end
    end else begin
      arch_table_17 <= _GEN_375;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_18 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h12 == io_archWritePorts_1_addr) begin
        arch_table_18 <= io_archWritePorts_1_data;
      end else begin
        arch_table_18 <= _GEN_376;
      end
    end else begin
      arch_table_18 <= _GEN_376;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_19 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h13 == io_archWritePorts_1_addr) begin
        arch_table_19 <= io_archWritePorts_1_data;
      end else begin
        arch_table_19 <= _GEN_377;
      end
    end else begin
      arch_table_19 <= _GEN_377;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_20 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h14 == io_archWritePorts_1_addr) begin
        arch_table_20 <= io_archWritePorts_1_data;
      end else begin
        arch_table_20 <= _GEN_378;
      end
    end else begin
      arch_table_20 <= _GEN_378;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_21 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h15 == io_archWritePorts_1_addr) begin
        arch_table_21 <= io_archWritePorts_1_data;
      end else begin
        arch_table_21 <= _GEN_379;
      end
    end else begin
      arch_table_21 <= _GEN_379;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_22 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h16 == io_archWritePorts_1_addr) begin
        arch_table_22 <= io_archWritePorts_1_data;
      end else begin
        arch_table_22 <= _GEN_380;
      end
    end else begin
      arch_table_22 <= _GEN_380;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_23 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h17 == io_archWritePorts_1_addr) begin
        arch_table_23 <= io_archWritePorts_1_data;
      end else begin
        arch_table_23 <= _GEN_381;
      end
    end else begin
      arch_table_23 <= _GEN_381;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_24 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h18 == io_archWritePorts_1_addr) begin
        arch_table_24 <= io_archWritePorts_1_data;
      end else begin
        arch_table_24 <= _GEN_382;
      end
    end else begin
      arch_table_24 <= _GEN_382;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_25 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h19 == io_archWritePorts_1_addr) begin
        arch_table_25 <= io_archWritePorts_1_data;
      end else begin
        arch_table_25 <= _GEN_383;
      end
    end else begin
      arch_table_25 <= _GEN_383;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_26 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h1a == io_archWritePorts_1_addr) begin
        arch_table_26 <= io_archWritePorts_1_data;
      end else begin
        arch_table_26 <= _GEN_384;
      end
    end else begin
      arch_table_26 <= _GEN_384;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_27 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h1b == io_archWritePorts_1_addr) begin
        arch_table_27 <= io_archWritePorts_1_data;
      end else begin
        arch_table_27 <= _GEN_385;
      end
    end else begin
      arch_table_27 <= _GEN_385;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_28 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h1c == io_archWritePorts_1_addr) begin
        arch_table_28 <= io_archWritePorts_1_data;
      end else begin
        arch_table_28 <= _GEN_386;
      end
    end else begin
      arch_table_28 <= _GEN_386;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_29 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h1d == io_archWritePorts_1_addr) begin
        arch_table_29 <= io_archWritePorts_1_data;
      end else begin
        arch_table_29 <= _GEN_387;
      end
    end else begin
      arch_table_29 <= _GEN_387;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_30 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h1e == io_archWritePorts_1_addr) begin
        arch_table_30 <= io_archWritePorts_1_data;
      end else begin
        arch_table_30 <= _GEN_388;
      end
    end else begin
      arch_table_30 <= _GEN_388;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 101:18]
      arch_table_31 <= 6'h0; // @[RenameTable.scala 102:{31,31}]
    end else if (io_archWritePorts_1_wen) begin
      if (5'h1f == io_archWritePorts_1_addr) begin
        arch_table_31 <= io_archWritePorts_1_data;
      end else begin
        arch_table_31 <= _GEN_389;
      end
    end else begin
      arch_table_31 <= _GEN_389;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 106:34]
      old_pdest_0 <= 6'h0;
    end else begin
      old_pdest_0 <= _GEN_421 & arch_mask;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Mux.scala 101:16]
      old_pdest_1 <= 6'h0;
    end else if (_old_pdest_1_T_2) begin
      old_pdest_1 <= _old_pdest_1_T_3;
    end else begin
      old_pdest_1 <= _old_pdest_1_T;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 114:55]
      need_free_0 <= 1'h0;
    end else begin
      need_free_0 <= &_need_free_0_T_32;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 114:60]
      need_free_1 <= 1'h0;
    end else begin
      need_free_1 <= &_need_free_1_T_32 & ~blockedByDup;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 68:28]
      t1_redirect <= 1'h0; // @[RenameTable.scala 68:28]
    end else begin
      t1_redirect <= io_redirect; // @[RenameTable.scala 68:28]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 73:24]
      t1_snpt_useSnpt <= 1'h0; // @[RenameTable.scala 73:24]
    end else begin
      t1_snpt_useSnpt <= io_snpt_useSnpt; // @[RenameTable.scala 73:24]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 73:24]
      t1_snpt_snptSelect <= 2'h0; // @[RenameTable.scala 73:24]
    end else begin
      t1_snpt_snptSelect <= io_snpt_snptSelect; // @[RenameTable.scala 73:24]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 73:24]
      t1_snpt_snptEnq <= 1'h0; // @[RenameTable.scala 73:24]
    end else begin
      t1_snpt_snptEnq <= io_snpt_snptEnq; // @[RenameTable.scala 73:24]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[RenameTable.scala 73:24]
      t1_snpt_snptDeq <= 1'h0; // @[RenameTable.scala 73:24]
    end else begin
      t1_snpt_snptDeq <= io_snpt_snptDeq; // @[RenameTable.scala 73:24]
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
  spec_table_0 = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  spec_table_1 = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  spec_table_2 = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  spec_table_3 = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  spec_table_4 = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  spec_table_5 = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  spec_table_6 = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  spec_table_7 = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  spec_table_8 = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  spec_table_9 = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  spec_table_10 = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  spec_table_11 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  spec_table_12 = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  spec_table_13 = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  spec_table_14 = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  spec_table_15 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  spec_table_16 = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  spec_table_17 = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  spec_table_18 = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  spec_table_19 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  spec_table_20 = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  spec_table_21 = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  spec_table_22 = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  spec_table_23 = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  spec_table_24 = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  spec_table_25 = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  spec_table_26 = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  spec_table_27 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  spec_table_28 = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  spec_table_29 = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  spec_table_30 = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  spec_table_31 = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  arch_table_0 = _RAND_32[5:0];
  _RAND_33 = {1{`RANDOM}};
  arch_table_1 = _RAND_33[5:0];
  _RAND_34 = {1{`RANDOM}};
  arch_table_2 = _RAND_34[5:0];
  _RAND_35 = {1{`RANDOM}};
  arch_table_3 = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  arch_table_4 = _RAND_36[5:0];
  _RAND_37 = {1{`RANDOM}};
  arch_table_5 = _RAND_37[5:0];
  _RAND_38 = {1{`RANDOM}};
  arch_table_6 = _RAND_38[5:0];
  _RAND_39 = {1{`RANDOM}};
  arch_table_7 = _RAND_39[5:0];
  _RAND_40 = {1{`RANDOM}};
  arch_table_8 = _RAND_40[5:0];
  _RAND_41 = {1{`RANDOM}};
  arch_table_9 = _RAND_41[5:0];
  _RAND_42 = {1{`RANDOM}};
  arch_table_10 = _RAND_42[5:0];
  _RAND_43 = {1{`RANDOM}};
  arch_table_11 = _RAND_43[5:0];
  _RAND_44 = {1{`RANDOM}};
  arch_table_12 = _RAND_44[5:0];
  _RAND_45 = {1{`RANDOM}};
  arch_table_13 = _RAND_45[5:0];
  _RAND_46 = {1{`RANDOM}};
  arch_table_14 = _RAND_46[5:0];
  _RAND_47 = {1{`RANDOM}};
  arch_table_15 = _RAND_47[5:0];
  _RAND_48 = {1{`RANDOM}};
  arch_table_16 = _RAND_48[5:0];
  _RAND_49 = {1{`RANDOM}};
  arch_table_17 = _RAND_49[5:0];
  _RAND_50 = {1{`RANDOM}};
  arch_table_18 = _RAND_50[5:0];
  _RAND_51 = {1{`RANDOM}};
  arch_table_19 = _RAND_51[5:0];
  _RAND_52 = {1{`RANDOM}};
  arch_table_20 = _RAND_52[5:0];
  _RAND_53 = {1{`RANDOM}};
  arch_table_21 = _RAND_53[5:0];
  _RAND_54 = {1{`RANDOM}};
  arch_table_22 = _RAND_54[5:0];
  _RAND_55 = {1{`RANDOM}};
  arch_table_23 = _RAND_55[5:0];
  _RAND_56 = {1{`RANDOM}};
  arch_table_24 = _RAND_56[5:0];
  _RAND_57 = {1{`RANDOM}};
  arch_table_25 = _RAND_57[5:0];
  _RAND_58 = {1{`RANDOM}};
  arch_table_26 = _RAND_58[5:0];
  _RAND_59 = {1{`RANDOM}};
  arch_table_27 = _RAND_59[5:0];
  _RAND_60 = {1{`RANDOM}};
  arch_table_28 = _RAND_60[5:0];
  _RAND_61 = {1{`RANDOM}};
  arch_table_29 = _RAND_61[5:0];
  _RAND_62 = {1{`RANDOM}};
  arch_table_30 = _RAND_62[5:0];
  _RAND_63 = {1{`RANDOM}};
  arch_table_31 = _RAND_63[5:0];
  _RAND_64 = {1{`RANDOM}};
  old_pdest_0 = _RAND_64[5:0];
  _RAND_65 = {1{`RANDOM}};
  old_pdest_1 = _RAND_65[5:0];
  _RAND_66 = {1{`RANDOM}};
  need_free_0 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  need_free_1 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  t1_redirect = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  t1_snpt_useSnpt = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  t1_snpt_snptSelect = _RAND_70[1:0];
  _RAND_71 = {1{`RANDOM}};
  t1_wSpec_1_wen = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  t1_wSpec_1_addr = _RAND_72[4:0];
  _RAND_73 = {1{`RANDOM}};
  t1_wSpec_0_wen = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  t1_wSpec_0_addr = _RAND_74[4:0];
  _RAND_75 = {1{`RANDOM}};
  t1_wSpec_1_data = _RAND_75[5:0];
  _RAND_76 = {1{`RANDOM}};
  t1_wSpec_0_data = _RAND_76[5:0];
  _RAND_77 = {1{`RANDOM}};
  t1_rdata_0 = _RAND_77[5:0];
  _RAND_78 = {1{`RANDOM}};
  t1_rdata_1 = _RAND_78[5:0];
  _RAND_79 = {1{`RANDOM}};
  t1_rdata_3 = _RAND_79[5:0];
  _RAND_80 = {1{`RANDOM}};
  t1_rdata_4 = _RAND_80[5:0];
  _RAND_81 = {1{`RANDOM}};
  t1_raddr_0 = _RAND_81[4:0];
  _RAND_82 = {1{`RANDOM}};
  t1_raddr_1 = _RAND_82[4:0];
  _RAND_83 = {1{`RANDOM}};
  t1_raddr_3 = _RAND_83[4:0];
  _RAND_84 = {1{`RANDOM}};
  t1_raddr_4 = _RAND_84[4:0];
  _RAND_85 = {1{`RANDOM}};
  t1_snpt_snptEnq = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  t1_snpt_snptDeq = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  t1_bypass__0 = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  t1_bypass__1 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  t1_bypass_1_0 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  t1_bypass_1_1 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  t1_bypass_3_0 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  t1_bypass_3_1 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  t1_bypass_4_0 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  t1_bypass_4_1 = _RAND_94[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    spec_table_0 = 6'h0;
  end
  if (reset) begin
    spec_table_1 = 6'h0;
  end
  if (reset) begin
    spec_table_2 = 6'h0;
  end
  if (reset) begin
    spec_table_3 = 6'h0;
  end
  if (reset) begin
    spec_table_4 = 6'h0;
  end
  if (reset) begin
    spec_table_5 = 6'h0;
  end
  if (reset) begin
    spec_table_6 = 6'h0;
  end
  if (reset) begin
    spec_table_7 = 6'h0;
  end
  if (reset) begin
    spec_table_8 = 6'h0;
  end
  if (reset) begin
    spec_table_9 = 6'h0;
  end
  if (reset) begin
    spec_table_10 = 6'h0;
  end
  if (reset) begin
    spec_table_11 = 6'h0;
  end
  if (reset) begin
    spec_table_12 = 6'h0;
  end
  if (reset) begin
    spec_table_13 = 6'h0;
  end
  if (reset) begin
    spec_table_14 = 6'h0;
  end
  if (reset) begin
    spec_table_15 = 6'h0;
  end
  if (reset) begin
    spec_table_16 = 6'h0;
  end
  if (reset) begin
    spec_table_17 = 6'h0;
  end
  if (reset) begin
    spec_table_18 = 6'h0;
  end
  if (reset) begin
    spec_table_19 = 6'h0;
  end
  if (reset) begin
    spec_table_20 = 6'h0;
  end
  if (reset) begin
    spec_table_21 = 6'h0;
  end
  if (reset) begin
    spec_table_22 = 6'h0;
  end
  if (reset) begin
    spec_table_23 = 6'h0;
  end
  if (reset) begin
    spec_table_24 = 6'h0;
  end
  if (reset) begin
    spec_table_25 = 6'h0;
  end
  if (reset) begin
    spec_table_26 = 6'h0;
  end
  if (reset) begin
    spec_table_27 = 6'h0;
  end
  if (reset) begin
    spec_table_28 = 6'h0;
  end
  if (reset) begin
    spec_table_29 = 6'h0;
  end
  if (reset) begin
    spec_table_30 = 6'h0;
  end
  if (reset) begin
    spec_table_31 = 6'h0;
  end
  if (reset) begin
    arch_table_0 = 6'h0;
  end
  if (reset) begin
    arch_table_1 = 6'h0;
  end
  if (reset) begin
    arch_table_2 = 6'h0;
  end
  if (reset) begin
    arch_table_3 = 6'h0;
  end
  if (reset) begin
    arch_table_4 = 6'h0;
  end
  if (reset) begin
    arch_table_5 = 6'h0;
  end
  if (reset) begin
    arch_table_6 = 6'h0;
  end
  if (reset) begin
    arch_table_7 = 6'h0;
  end
  if (reset) begin
    arch_table_8 = 6'h0;
  end
  if (reset) begin
    arch_table_9 = 6'h0;
  end
  if (reset) begin
    arch_table_10 = 6'h0;
  end
  if (reset) begin
    arch_table_11 = 6'h0;
  end
  if (reset) begin
    arch_table_12 = 6'h0;
  end
  if (reset) begin
    arch_table_13 = 6'h0;
  end
  if (reset) begin
    arch_table_14 = 6'h0;
  end
  if (reset) begin
    arch_table_15 = 6'h0;
  end
  if (reset) begin
    arch_table_16 = 6'h0;
  end
  if (reset) begin
    arch_table_17 = 6'h0;
  end
  if (reset) begin
    arch_table_18 = 6'h0;
  end
  if (reset) begin
    arch_table_19 = 6'h0;
  end
  if (reset) begin
    arch_table_20 = 6'h0;
  end
  if (reset) begin
    arch_table_21 = 6'h0;
  end
  if (reset) begin
    arch_table_22 = 6'h0;
  end
  if (reset) begin
    arch_table_23 = 6'h0;
  end
  if (reset) begin
    arch_table_24 = 6'h0;
  end
  if (reset) begin
    arch_table_25 = 6'h0;
  end
  if (reset) begin
    arch_table_26 = 6'h0;
  end
  if (reset) begin
    arch_table_27 = 6'h0;
  end
  if (reset) begin
    arch_table_28 = 6'h0;
  end
  if (reset) begin
    arch_table_29 = 6'h0;
  end
  if (reset) begin
    arch_table_30 = 6'h0;
  end
  if (reset) begin
    arch_table_31 = 6'h0;
  end
  if (reset) begin
    old_pdest_0 = 6'h0;
  end
  if (reset) begin
    old_pdest_1 = 6'h0;
  end
  if (reset) begin
    need_free_0 = 1'h0;
  end
  if (reset) begin
    need_free_1 = 1'h0;
  end
  if (reset) begin
    t1_redirect = 1'h0;
  end
  if (reset) begin
    t1_snpt_useSnpt = 1'h0;
  end
  if (reset) begin
    t1_snpt_snptSelect = 2'h0;
  end
  if (reset) begin
    t1_snpt_snptEnq = 1'h0;
  end
  if (reset) begin
    t1_snpt_snptDeq = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

