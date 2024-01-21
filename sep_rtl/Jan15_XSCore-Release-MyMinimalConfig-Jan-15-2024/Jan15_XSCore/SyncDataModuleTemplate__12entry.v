module SyncDataModuleTemplate__12entry(
  input         clock,
  input  [3:0]  io_raddr_0,
  input  [3:0]  io_raddr_1,
  input  [3:0]  io_raddr_2,
  input  [3:0]  io_raddr_3,
  input  [3:0]  io_raddr_4,
  input  [3:0]  io_raddr_5,
  input  [3:0]  io_raddr_6,
  input  [3:0]  io_raddr_7,
  output        io_rdata_0_cf_trigger_backendEn_0,
  output        io_rdata_0_cf_trigger_backendEn_1,
  output        io_rdata_0_cf_pd_isRVC,
  output [1:0]  io_rdata_0_cf_pd_brType,
  output        io_rdata_0_cf_pd_isCall,
  output        io_rdata_0_cf_pd_isRet,
  output        io_rdata_0_cf_pred_taken,
  output        io_rdata_0_cf_storeSetHit,
  output        io_rdata_0_cf_loadWaitStrict,
  output [4:0]  io_rdata_0_cf_ssid,
  output        io_rdata_0_cf_ftqPtr_flag,
  output [2:0]  io_rdata_0_cf_ftqPtr_value,
  output [2:0]  io_rdata_0_cf_ftqOffset,
  output        io_rdata_0_ctrl_fpu_isAddSub,
  output        io_rdata_0_ctrl_fpu_typeTagIn,
  output        io_rdata_0_ctrl_fpu_typeTagOut,
  output        io_rdata_0_ctrl_fpu_fromInt,
  output        io_rdata_0_ctrl_fpu_wflags,
  output        io_rdata_0_ctrl_fpu_fpWen,
  output [1:0]  io_rdata_0_ctrl_fpu_fmaCmd,
  output        io_rdata_0_ctrl_fpu_div,
  output        io_rdata_0_ctrl_fpu_sqrt,
  output        io_rdata_0_ctrl_fpu_fcvt,
  output [1:0]  io_rdata_0_ctrl_fpu_typ,
  output [1:0]  io_rdata_0_ctrl_fpu_fmt,
  output        io_rdata_0_ctrl_fpu_ren3,
  output [2:0]  io_rdata_0_ctrl_fpu_rm,
  output        io_rdata_1_cf_trigger_backendEn_0,
  output        io_rdata_1_cf_trigger_backendEn_1,
  output        io_rdata_1_cf_pd_isRVC,
  output [1:0]  io_rdata_1_cf_pd_brType,
  output        io_rdata_1_cf_pd_isCall,
  output        io_rdata_1_cf_pd_isRet,
  output        io_rdata_1_cf_pred_taken,
  output        io_rdata_1_cf_storeSetHit,
  output        io_rdata_1_cf_loadWaitStrict,
  output [4:0]  io_rdata_1_cf_ssid,
  output        io_rdata_1_cf_ftqPtr_flag,
  output [2:0]  io_rdata_1_cf_ftqPtr_value,
  output [2:0]  io_rdata_1_cf_ftqOffset,
  output        io_rdata_2_cf_trigger_backendEn_0,
  output        io_rdata_2_cf_trigger_backendEn_1,
  output        io_rdata_2_cf_pd_isRVC,
  output [1:0]  io_rdata_2_cf_pd_brType,
  output        io_rdata_2_cf_pd_isCall,
  output        io_rdata_2_cf_pd_isRet,
  output        io_rdata_2_cf_pred_taken,
  output        io_rdata_2_cf_storeSetHit,
  output        io_rdata_2_cf_loadWaitStrict,
  output [4:0]  io_rdata_2_cf_ssid,
  output        io_rdata_2_cf_ftqPtr_flag,
  output [2:0]  io_rdata_2_cf_ftqPtr_value,
  output [2:0]  io_rdata_2_cf_ftqOffset,
  output        io_rdata_3_cf_trigger_backendEn_0,
  output        io_rdata_3_cf_trigger_backendEn_1,
  output        io_rdata_3_cf_pd_isRVC,
  output [1:0]  io_rdata_3_cf_pd_brType,
  output        io_rdata_3_cf_pd_isCall,
  output        io_rdata_3_cf_pd_isRet,
  output        io_rdata_3_cf_pred_taken,
  output        io_rdata_3_cf_storeSetHit,
  output        io_rdata_3_cf_loadWaitStrict,
  output [4:0]  io_rdata_3_cf_ssid,
  output        io_rdata_3_cf_ftqPtr_flag,
  output [2:0]  io_rdata_3_cf_ftqPtr_value,
  output [2:0]  io_rdata_3_cf_ftqOffset,
  output [2:0]  io_rdata_4_cf_ftqPtr_value,
  output [2:0]  io_rdata_4_cf_ftqOffset,
  output [1:0]  io_rdata_4_ctrl_srcType_0,
  output [1:0]  io_rdata_4_ctrl_srcType_1,
  output [1:0]  io_rdata_4_ctrl_srcType_2,
  output [3:0]  io_rdata_4_ctrl_fuType,
  output [6:0]  io_rdata_4_ctrl_fuOpType,
  output        io_rdata_4_ctrl_rfWen,
  output        io_rdata_4_ctrl_fpWen,
  output [3:0]  io_rdata_4_ctrl_selImm,
  output [19:0] io_rdata_4_ctrl_imm,
  output [5:0]  io_rdata_4_psrc_0,
  output [5:0]  io_rdata_4_psrc_1,
  output [5:0]  io_rdata_4_psrc_2,
  output [5:0]  io_rdata_4_pdest,
  output        io_rdata_4_robIdx_flag,
  output [4:0]  io_rdata_4_robIdx_value,
  output [2:0]  io_rdata_5_cf_ftqPtr_value,
  output [2:0]  io_rdata_5_cf_ftqOffset,
  output [1:0]  io_rdata_5_ctrl_srcType_0,
  output [1:0]  io_rdata_5_ctrl_srcType_1,
  output [1:0]  io_rdata_5_ctrl_srcType_2,
  output [3:0]  io_rdata_5_ctrl_fuType,
  output [6:0]  io_rdata_5_ctrl_fuOpType,
  output        io_rdata_5_ctrl_rfWen,
  output        io_rdata_5_ctrl_fpWen,
  output [3:0]  io_rdata_5_ctrl_selImm,
  output [19:0] io_rdata_5_ctrl_imm,
  output [5:0]  io_rdata_5_psrc_0,
  output [5:0]  io_rdata_5_psrc_1,
  output [5:0]  io_rdata_5_psrc_2,
  output [5:0]  io_rdata_5_pdest,
  output        io_rdata_5_robIdx_flag,
  output [4:0]  io_rdata_5_robIdx_value,
  output [2:0]  io_rdata_6_cf_ftqPtr_value,
  output [2:0]  io_rdata_6_cf_ftqOffset,
  output [1:0]  io_rdata_6_ctrl_srcType_0,
  output [1:0]  io_rdata_6_ctrl_srcType_1,
  output [1:0]  io_rdata_6_ctrl_srcType_2,
  output [3:0]  io_rdata_6_ctrl_fuType,
  output [6:0]  io_rdata_6_ctrl_fuOpType,
  output        io_rdata_6_ctrl_rfWen,
  output        io_rdata_6_ctrl_fpWen,
  output [3:0]  io_rdata_6_ctrl_selImm,
  output [19:0] io_rdata_6_ctrl_imm,
  output [5:0]  io_rdata_6_psrc_0,
  output [5:0]  io_rdata_6_psrc_1,
  output [5:0]  io_rdata_6_psrc_2,
  output [5:0]  io_rdata_6_pdest,
  output        io_rdata_6_robIdx_flag,
  output [4:0]  io_rdata_6_robIdx_value,
  output [2:0]  io_rdata_7_cf_ftqPtr_value,
  output [2:0]  io_rdata_7_cf_ftqOffset,
  output [1:0]  io_rdata_7_ctrl_srcType_0,
  output [1:0]  io_rdata_7_ctrl_srcType_1,
  output [1:0]  io_rdata_7_ctrl_srcType_2,
  output [3:0]  io_rdata_7_ctrl_fuType,
  output [6:0]  io_rdata_7_ctrl_fuOpType,
  output        io_rdata_7_ctrl_rfWen,
  output        io_rdata_7_ctrl_fpWen,
  output [3:0]  io_rdata_7_ctrl_selImm,
  output [19:0] io_rdata_7_ctrl_imm,
  output [5:0]  io_rdata_7_psrc_0,
  output [5:0]  io_rdata_7_psrc_1,
  output [5:0]  io_rdata_7_psrc_2,
  output [5:0]  io_rdata_7_pdest,
  output        io_rdata_7_robIdx_flag,
  output [4:0]  io_rdata_7_robIdx_value,
  input         io_wen_0,
  input         io_wen_1,
  input  [3:0]  io_waddr_0,
  input  [3:0]  io_waddr_1,
  input         io_wdata_0_cf_trigger_backendEn_0,
  input         io_wdata_0_cf_trigger_backendEn_1,
  input         io_wdata_0_cf_pd_isRVC,
  input  [1:0]  io_wdata_0_cf_pd_brType,
  input         io_wdata_0_cf_pd_isCall,
  input         io_wdata_0_cf_pd_isRet,
  input         io_wdata_0_cf_pred_taken,
  input         io_wdata_0_cf_storeSetHit,
  input         io_wdata_0_cf_loadWaitStrict,
  input  [4:0]  io_wdata_0_cf_ssid,
  input         io_wdata_0_cf_ftqPtr_flag,
  input  [2:0]  io_wdata_0_cf_ftqPtr_value,
  input  [2:0]  io_wdata_0_cf_ftqOffset,
  input  [1:0]  io_wdata_0_ctrl_srcType_0,
  input  [1:0]  io_wdata_0_ctrl_srcType_1,
  input  [1:0]  io_wdata_0_ctrl_srcType_2,
  input  [3:0]  io_wdata_0_ctrl_fuType,
  input  [6:0]  io_wdata_0_ctrl_fuOpType,
  input         io_wdata_0_ctrl_rfWen,
  input         io_wdata_0_ctrl_fpWen,
  input  [3:0]  io_wdata_0_ctrl_selImm,
  input  [19:0] io_wdata_0_ctrl_imm,
  input         io_wdata_0_ctrl_fpu_isAddSub,
  input         io_wdata_0_ctrl_fpu_typeTagIn,
  input         io_wdata_0_ctrl_fpu_typeTagOut,
  input         io_wdata_0_ctrl_fpu_fromInt,
  input         io_wdata_0_ctrl_fpu_wflags,
  input         io_wdata_0_ctrl_fpu_fpWen,
  input  [1:0]  io_wdata_0_ctrl_fpu_fmaCmd,
  input         io_wdata_0_ctrl_fpu_div,
  input         io_wdata_0_ctrl_fpu_sqrt,
  input         io_wdata_0_ctrl_fpu_fcvt,
  input  [1:0]  io_wdata_0_ctrl_fpu_typ,
  input  [1:0]  io_wdata_0_ctrl_fpu_fmt,
  input         io_wdata_0_ctrl_fpu_ren3,
  input  [2:0]  io_wdata_0_ctrl_fpu_rm,
  input  [5:0]  io_wdata_0_psrc_0,
  input  [5:0]  io_wdata_0_psrc_1,
  input  [5:0]  io_wdata_0_psrc_2,
  input  [5:0]  io_wdata_0_pdest,
  input         io_wdata_0_robIdx_flag,
  input  [4:0]  io_wdata_0_robIdx_value,
  input         io_wdata_1_cf_trigger_backendEn_0,
  input         io_wdata_1_cf_trigger_backendEn_1,
  input         io_wdata_1_cf_pd_isRVC,
  input  [1:0]  io_wdata_1_cf_pd_brType,
  input         io_wdata_1_cf_pd_isCall,
  input         io_wdata_1_cf_pd_isRet,
  input         io_wdata_1_cf_pred_taken,
  input         io_wdata_1_cf_storeSetHit,
  input         io_wdata_1_cf_loadWaitStrict,
  input  [4:0]  io_wdata_1_cf_ssid,
  input         io_wdata_1_cf_ftqPtr_flag,
  input  [2:0]  io_wdata_1_cf_ftqPtr_value,
  input  [2:0]  io_wdata_1_cf_ftqOffset,
  input  [1:0]  io_wdata_1_ctrl_srcType_0,
  input  [1:0]  io_wdata_1_ctrl_srcType_1,
  input  [1:0]  io_wdata_1_ctrl_srcType_2,
  input  [3:0]  io_wdata_1_ctrl_fuType,
  input  [6:0]  io_wdata_1_ctrl_fuOpType,
  input         io_wdata_1_ctrl_rfWen,
  input         io_wdata_1_ctrl_fpWen,
  input  [3:0]  io_wdata_1_ctrl_selImm,
  input  [19:0] io_wdata_1_ctrl_imm,
  input         io_wdata_1_ctrl_fpu_isAddSub,
  input         io_wdata_1_ctrl_fpu_typeTagIn,
  input         io_wdata_1_ctrl_fpu_typeTagOut,
  input         io_wdata_1_ctrl_fpu_fromInt,
  input         io_wdata_1_ctrl_fpu_wflags,
  input         io_wdata_1_ctrl_fpu_fpWen,
  input  [1:0]  io_wdata_1_ctrl_fpu_fmaCmd,
  input         io_wdata_1_ctrl_fpu_div,
  input         io_wdata_1_ctrl_fpu_sqrt,
  input         io_wdata_1_ctrl_fpu_fcvt,
  input  [1:0]  io_wdata_1_ctrl_fpu_typ,
  input  [1:0]  io_wdata_1_ctrl_fpu_fmt,
  input         io_wdata_1_ctrl_fpu_ren3,
  input  [2:0]  io_wdata_1_ctrl_fpu_rm,
  input  [5:0]  io_wdata_1_psrc_0,
  input  [5:0]  io_wdata_1_psrc_1,
  input  [5:0]  io_wdata_1_psrc_2,
  input  [5:0]  io_wdata_1_pdest,
  input         io_wdata_1_robIdx_flag,
  input  [4:0]  io_wdata_1_robIdx_value
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
  reg [31:0] _RAND_95;
`endif // RANDOMIZE_REG_INIT
  wire  dataBanks_0_clock; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_1; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_2; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_3; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_4; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_5; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_6; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_raddr_7; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_cf_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_0_cf_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_cf_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_cf_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_cf_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_cf_storeSetHit; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_cf_loadWaitStrict; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_rdata_0_cf_ssid; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_0_cf_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_0_cf_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_0_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_ctrl_fpu_div; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_0_ctrl_fpu_typ; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_0_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_0_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_0_ctrl_fpu_rm; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_cf_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_1_cf_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_cf_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_cf_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_cf_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_cf_storeSetHit; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_cf_loadWaitStrict; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_rdata_1_cf_ssid; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_1_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_1_cf_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_1_cf_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_cf_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_2_cf_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_cf_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_cf_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_cf_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_cf_storeSetHit; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_cf_loadWaitStrict; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_rdata_2_cf_ssid; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_2_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_2_cf_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_2_cf_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_cf_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_3_cf_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_cf_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_cf_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_cf_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_cf_storeSetHit; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_cf_loadWaitStrict; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_rdata_3_cf_ssid; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_3_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_3_cf_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_3_cf_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_4_cf_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_4_cf_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_4_ctrl_srcType_0; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_4_ctrl_srcType_1; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_4_ctrl_srcType_2; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_rdata_4_ctrl_fuType; // @[DataModuleTemplate.scala 120:26]
  wire [6:0] dataBanks_0_io_rdata_4_ctrl_fuOpType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_4_ctrl_rfWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_4_ctrl_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_rdata_4_ctrl_selImm; // @[DataModuleTemplate.scala 120:26]
  wire [19:0] dataBanks_0_io_rdata_4_ctrl_imm; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_4_psrc_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_4_psrc_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_4_psrc_2; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_4_pdest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_4_robIdx_flag; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_rdata_4_robIdx_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_5_cf_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_5_cf_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_5_ctrl_srcType_0; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_5_ctrl_srcType_1; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_5_ctrl_srcType_2; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_rdata_5_ctrl_fuType; // @[DataModuleTemplate.scala 120:26]
  wire [6:0] dataBanks_0_io_rdata_5_ctrl_fuOpType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_5_ctrl_rfWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_5_ctrl_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_rdata_5_ctrl_selImm; // @[DataModuleTemplate.scala 120:26]
  wire [19:0] dataBanks_0_io_rdata_5_ctrl_imm; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_5_psrc_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_5_psrc_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_5_psrc_2; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_5_pdest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_5_robIdx_flag; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_rdata_5_robIdx_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_6_cf_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_6_cf_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_6_ctrl_srcType_0; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_6_ctrl_srcType_1; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_6_ctrl_srcType_2; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_rdata_6_ctrl_fuType; // @[DataModuleTemplate.scala 120:26]
  wire [6:0] dataBanks_0_io_rdata_6_ctrl_fuOpType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_6_ctrl_rfWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_6_ctrl_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_rdata_6_ctrl_selImm; // @[DataModuleTemplate.scala 120:26]
  wire [19:0] dataBanks_0_io_rdata_6_ctrl_imm; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_6_psrc_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_6_psrc_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_6_psrc_2; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_6_pdest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_6_robIdx_flag; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_rdata_6_robIdx_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_7_cf_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_rdata_7_cf_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_7_ctrl_srcType_0; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_7_ctrl_srcType_1; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_rdata_7_ctrl_srcType_2; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_rdata_7_ctrl_fuType; // @[DataModuleTemplate.scala 120:26]
  wire [6:0] dataBanks_0_io_rdata_7_ctrl_fuOpType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_7_ctrl_rfWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_7_ctrl_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_rdata_7_ctrl_selImm; // @[DataModuleTemplate.scala 120:26]
  wire [19:0] dataBanks_0_io_rdata_7_ctrl_imm; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_7_psrc_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_7_psrc_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_7_psrc_2; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_rdata_7_pdest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_rdata_7_robIdx_flag; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_rdata_7_robIdx_value; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wen_1; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_waddr_0; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_waddr_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_cf_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_0_cf_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_cf_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_cf_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_cf_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_cf_storeSetHit; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_cf_loadWaitStrict; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_wdata_0_cf_ssid; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_0_cf_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_0_cf_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_0_ctrl_srcType_0; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_0_ctrl_srcType_1; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_0_ctrl_srcType_2; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_wdata_0_ctrl_fuType; // @[DataModuleTemplate.scala 120:26]
  wire [6:0] dataBanks_0_io_wdata_0_ctrl_fuOpType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_ctrl_rfWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_ctrl_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_wdata_0_ctrl_selImm; // @[DataModuleTemplate.scala 120:26]
  wire [19:0] dataBanks_0_io_wdata_0_ctrl_imm; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_0_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_ctrl_fpu_div; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_0_ctrl_fpu_typ; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_0_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_0_ctrl_fpu_rm; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_wdata_0_psrc_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_wdata_0_psrc_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_wdata_0_psrc_2; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_wdata_0_pdest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_0_robIdx_flag; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_wdata_0_robIdx_value; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_cf_pd_isRVC; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_1_cf_pd_brType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_cf_pd_isCall; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_cf_pd_isRet; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_cf_pred_taken; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_cf_storeSetHit; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_cf_loadWaitStrict; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_wdata_1_cf_ssid; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_1_cf_ftqPtr_value; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_1_cf_ftqOffset; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_1_ctrl_srcType_0; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_1_ctrl_srcType_1; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_1_ctrl_srcType_2; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_wdata_1_ctrl_fuType; // @[DataModuleTemplate.scala 120:26]
  wire [6:0] dataBanks_0_io_wdata_1_ctrl_fuOpType; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_ctrl_rfWen; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_ctrl_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire [3:0] dataBanks_0_io_wdata_1_ctrl_selImm; // @[DataModuleTemplate.scala 120:26]
  wire [19:0] dataBanks_0_io_wdata_1_ctrl_imm; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_1_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_ctrl_fpu_div; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_1_ctrl_fpu_typ; // @[DataModuleTemplate.scala 120:26]
  wire [1:0] dataBanks_0_io_wdata_1_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 120:26]
  wire [2:0] dataBanks_0_io_wdata_1_ctrl_fpu_rm; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_wdata_1_psrc_0; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_wdata_1_psrc_1; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_wdata_1_psrc_2; // @[DataModuleTemplate.scala 120:26]
  wire [5:0] dataBanks_0_io_wdata_1_pdest; // @[DataModuleTemplate.scala 120:26]
  wire  dataBanks_0_io_wdata_1_robIdx_flag; // @[DataModuleTemplate.scala 120:26]
  wire [4:0] dataBanks_0_io_wdata_1_robIdx_value; // @[DataModuleTemplate.scala 120:26]
  reg [3:0] raddr_dup__0; // @[DataModuleTemplate.scala 123:28]
  reg [3:0] raddr_dup__1; // @[DataModuleTemplate.scala 123:28]
  reg [3:0] raddr_dup__2; // @[DataModuleTemplate.scala 123:28]
  reg [3:0] raddr_dup__3; // @[DataModuleTemplate.scala 123:28]
  reg [3:0] raddr_dup__4; // @[DataModuleTemplate.scala 123:28]
  reg [3:0] raddr_dup__5; // @[DataModuleTemplate.scala 123:28]
  reg [3:0] raddr_dup__6; // @[DataModuleTemplate.scala 123:28]
  reg [3:0] raddr_dup__7; // @[DataModuleTemplate.scala 123:28]
  reg  wen_dup_0; // @[DataModuleTemplate.scala 124:26]
  reg  wen_dup_1; // @[DataModuleTemplate.scala 124:26]
  reg [3:0] waddr_dup_0; // @[Reg.scala 16:16]
  reg [3:0] waddr_dup_1; // @[Reg.scala 16:16]
  reg  r_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  r_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg  r_cf_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] r_cf_pd_brType; // @[Reg.scala 16:16]
  reg  r_cf_pd_isCall; // @[Reg.scala 16:16]
  reg  r_cf_pd_isRet; // @[Reg.scala 16:16]
  reg  r_cf_pred_taken; // @[Reg.scala 16:16]
  reg  r_cf_storeSetHit; // @[Reg.scala 16:16]
  reg  r_cf_loadWaitStrict; // @[Reg.scala 16:16]
  reg [4:0] r_cf_ssid; // @[Reg.scala 16:16]
  reg  r_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] r_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] r_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [1:0] r_ctrl_srcType_0; // @[Reg.scala 16:16]
  reg [1:0] r_ctrl_srcType_1; // @[Reg.scala 16:16]
  reg [1:0] r_ctrl_srcType_2; // @[Reg.scala 16:16]
  reg [3:0] r_ctrl_fuType; // @[Reg.scala 16:16]
  reg [6:0] r_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  r_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  r_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [3:0] r_ctrl_selImm; // @[Reg.scala 16:16]
  reg [19:0] r_ctrl_imm; // @[Reg.scala 16:16]
  reg  r_ctrl_fpu_isAddSub; // @[Reg.scala 16:16]
  reg  r_ctrl_fpu_typeTagIn; // @[Reg.scala 16:16]
  reg  r_ctrl_fpu_typeTagOut; // @[Reg.scala 16:16]
  reg  r_ctrl_fpu_fromInt; // @[Reg.scala 16:16]
  reg  r_ctrl_fpu_wflags; // @[Reg.scala 16:16]
  reg  r_ctrl_fpu_fpWen; // @[Reg.scala 16:16]
  reg [1:0] r_ctrl_fpu_fmaCmd; // @[Reg.scala 16:16]
  reg  r_ctrl_fpu_div; // @[Reg.scala 16:16]
  reg  r_ctrl_fpu_sqrt; // @[Reg.scala 16:16]
  reg  r_ctrl_fpu_fcvt; // @[Reg.scala 16:16]
  reg [1:0] r_ctrl_fpu_typ; // @[Reg.scala 16:16]
  reg [1:0] r_ctrl_fpu_fmt; // @[Reg.scala 16:16]
  reg  r_ctrl_fpu_ren3; // @[Reg.scala 16:16]
  reg [2:0] r_ctrl_fpu_rm; // @[Reg.scala 16:16]
  reg [5:0] r_psrc_0; // @[Reg.scala 16:16]
  reg [5:0] r_psrc_1; // @[Reg.scala 16:16]
  reg [5:0] r_psrc_2; // @[Reg.scala 16:16]
  reg [5:0] r_pdest; // @[Reg.scala 16:16]
  reg  r_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] r_robIdx_value; // @[Reg.scala 16:16]
  reg  r_1_cf_trigger_backendEn_0; // @[Reg.scala 16:16]
  reg  r_1_cf_trigger_backendEn_1; // @[Reg.scala 16:16]
  reg  r_1_cf_pd_isRVC; // @[Reg.scala 16:16]
  reg [1:0] r_1_cf_pd_brType; // @[Reg.scala 16:16]
  reg  r_1_cf_pd_isCall; // @[Reg.scala 16:16]
  reg  r_1_cf_pd_isRet; // @[Reg.scala 16:16]
  reg  r_1_cf_pred_taken; // @[Reg.scala 16:16]
  reg  r_1_cf_storeSetHit; // @[Reg.scala 16:16]
  reg  r_1_cf_loadWaitStrict; // @[Reg.scala 16:16]
  reg [4:0] r_1_cf_ssid; // @[Reg.scala 16:16]
  reg  r_1_cf_ftqPtr_flag; // @[Reg.scala 16:16]
  reg [2:0] r_1_cf_ftqPtr_value; // @[Reg.scala 16:16]
  reg [2:0] r_1_cf_ftqOffset; // @[Reg.scala 16:16]
  reg [1:0] r_1_ctrl_srcType_0; // @[Reg.scala 16:16]
  reg [1:0] r_1_ctrl_srcType_1; // @[Reg.scala 16:16]
  reg [1:0] r_1_ctrl_srcType_2; // @[Reg.scala 16:16]
  reg [3:0] r_1_ctrl_fuType; // @[Reg.scala 16:16]
  reg [6:0] r_1_ctrl_fuOpType; // @[Reg.scala 16:16]
  reg  r_1_ctrl_rfWen; // @[Reg.scala 16:16]
  reg  r_1_ctrl_fpWen; // @[Reg.scala 16:16]
  reg [3:0] r_1_ctrl_selImm; // @[Reg.scala 16:16]
  reg [19:0] r_1_ctrl_imm; // @[Reg.scala 16:16]
  reg  r_1_ctrl_fpu_isAddSub; // @[Reg.scala 16:16]
  reg  r_1_ctrl_fpu_typeTagIn; // @[Reg.scala 16:16]
  reg  r_1_ctrl_fpu_typeTagOut; // @[Reg.scala 16:16]
  reg  r_1_ctrl_fpu_fromInt; // @[Reg.scala 16:16]
  reg  r_1_ctrl_fpu_wflags; // @[Reg.scala 16:16]
  reg  r_1_ctrl_fpu_fpWen; // @[Reg.scala 16:16]
  reg [1:0] r_1_ctrl_fpu_fmaCmd; // @[Reg.scala 16:16]
  reg  r_1_ctrl_fpu_div; // @[Reg.scala 16:16]
  reg  r_1_ctrl_fpu_sqrt; // @[Reg.scala 16:16]
  reg  r_1_ctrl_fpu_fcvt; // @[Reg.scala 16:16]
  reg [1:0] r_1_ctrl_fpu_typ; // @[Reg.scala 16:16]
  reg [1:0] r_1_ctrl_fpu_fmt; // @[Reg.scala 16:16]
  reg  r_1_ctrl_fpu_ren3; // @[Reg.scala 16:16]
  reg [2:0] r_1_ctrl_fpu_rm; // @[Reg.scala 16:16]
  reg [5:0] r_1_psrc_0; // @[Reg.scala 16:16]
  reg [5:0] r_1_psrc_1; // @[Reg.scala 16:16]
  reg [5:0] r_1_psrc_2; // @[Reg.scala 16:16]
  reg [5:0] r_1_pdest; // @[Reg.scala 16:16]
  reg  r_1_robIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] r_1_robIdx_value; // @[Reg.scala 16:16]
  NegedgeDataModule__12entry dataBanks_0 ( // @[DataModuleTemplate.scala 120:26]
    .clock(dataBanks_0_clock),
    .io_raddr_0(dataBanks_0_io_raddr_0),
    .io_raddr_1(dataBanks_0_io_raddr_1),
    .io_raddr_2(dataBanks_0_io_raddr_2),
    .io_raddr_3(dataBanks_0_io_raddr_3),
    .io_raddr_4(dataBanks_0_io_raddr_4),
    .io_raddr_5(dataBanks_0_io_raddr_5),
    .io_raddr_6(dataBanks_0_io_raddr_6),
    .io_raddr_7(dataBanks_0_io_raddr_7),
    .io_rdata_0_cf_trigger_backendEn_0(dataBanks_0_io_rdata_0_cf_trigger_backendEn_0),
    .io_rdata_0_cf_trigger_backendEn_1(dataBanks_0_io_rdata_0_cf_trigger_backendEn_1),
    .io_rdata_0_cf_pd_isRVC(dataBanks_0_io_rdata_0_cf_pd_isRVC),
    .io_rdata_0_cf_pd_brType(dataBanks_0_io_rdata_0_cf_pd_brType),
    .io_rdata_0_cf_pd_isCall(dataBanks_0_io_rdata_0_cf_pd_isCall),
    .io_rdata_0_cf_pd_isRet(dataBanks_0_io_rdata_0_cf_pd_isRet),
    .io_rdata_0_cf_pred_taken(dataBanks_0_io_rdata_0_cf_pred_taken),
    .io_rdata_0_cf_storeSetHit(dataBanks_0_io_rdata_0_cf_storeSetHit),
    .io_rdata_0_cf_loadWaitStrict(dataBanks_0_io_rdata_0_cf_loadWaitStrict),
    .io_rdata_0_cf_ssid(dataBanks_0_io_rdata_0_cf_ssid),
    .io_rdata_0_cf_ftqPtr_flag(dataBanks_0_io_rdata_0_cf_ftqPtr_flag),
    .io_rdata_0_cf_ftqPtr_value(dataBanks_0_io_rdata_0_cf_ftqPtr_value),
    .io_rdata_0_cf_ftqOffset(dataBanks_0_io_rdata_0_cf_ftqOffset),
    .io_rdata_0_ctrl_fpu_isAddSub(dataBanks_0_io_rdata_0_ctrl_fpu_isAddSub),
    .io_rdata_0_ctrl_fpu_typeTagIn(dataBanks_0_io_rdata_0_ctrl_fpu_typeTagIn),
    .io_rdata_0_ctrl_fpu_typeTagOut(dataBanks_0_io_rdata_0_ctrl_fpu_typeTagOut),
    .io_rdata_0_ctrl_fpu_fromInt(dataBanks_0_io_rdata_0_ctrl_fpu_fromInt),
    .io_rdata_0_ctrl_fpu_wflags(dataBanks_0_io_rdata_0_ctrl_fpu_wflags),
    .io_rdata_0_ctrl_fpu_fpWen(dataBanks_0_io_rdata_0_ctrl_fpu_fpWen),
    .io_rdata_0_ctrl_fpu_fmaCmd(dataBanks_0_io_rdata_0_ctrl_fpu_fmaCmd),
    .io_rdata_0_ctrl_fpu_div(dataBanks_0_io_rdata_0_ctrl_fpu_div),
    .io_rdata_0_ctrl_fpu_sqrt(dataBanks_0_io_rdata_0_ctrl_fpu_sqrt),
    .io_rdata_0_ctrl_fpu_fcvt(dataBanks_0_io_rdata_0_ctrl_fpu_fcvt),
    .io_rdata_0_ctrl_fpu_typ(dataBanks_0_io_rdata_0_ctrl_fpu_typ),
    .io_rdata_0_ctrl_fpu_fmt(dataBanks_0_io_rdata_0_ctrl_fpu_fmt),
    .io_rdata_0_ctrl_fpu_ren3(dataBanks_0_io_rdata_0_ctrl_fpu_ren3),
    .io_rdata_0_ctrl_fpu_rm(dataBanks_0_io_rdata_0_ctrl_fpu_rm),
    .io_rdata_1_cf_trigger_backendEn_0(dataBanks_0_io_rdata_1_cf_trigger_backendEn_0),
    .io_rdata_1_cf_trigger_backendEn_1(dataBanks_0_io_rdata_1_cf_trigger_backendEn_1),
    .io_rdata_1_cf_pd_isRVC(dataBanks_0_io_rdata_1_cf_pd_isRVC),
    .io_rdata_1_cf_pd_brType(dataBanks_0_io_rdata_1_cf_pd_brType),
    .io_rdata_1_cf_pd_isCall(dataBanks_0_io_rdata_1_cf_pd_isCall),
    .io_rdata_1_cf_pd_isRet(dataBanks_0_io_rdata_1_cf_pd_isRet),
    .io_rdata_1_cf_pred_taken(dataBanks_0_io_rdata_1_cf_pred_taken),
    .io_rdata_1_cf_storeSetHit(dataBanks_0_io_rdata_1_cf_storeSetHit),
    .io_rdata_1_cf_loadWaitStrict(dataBanks_0_io_rdata_1_cf_loadWaitStrict),
    .io_rdata_1_cf_ssid(dataBanks_0_io_rdata_1_cf_ssid),
    .io_rdata_1_cf_ftqPtr_flag(dataBanks_0_io_rdata_1_cf_ftqPtr_flag),
    .io_rdata_1_cf_ftqPtr_value(dataBanks_0_io_rdata_1_cf_ftqPtr_value),
    .io_rdata_1_cf_ftqOffset(dataBanks_0_io_rdata_1_cf_ftqOffset),
    .io_rdata_2_cf_trigger_backendEn_0(dataBanks_0_io_rdata_2_cf_trigger_backendEn_0),
    .io_rdata_2_cf_trigger_backendEn_1(dataBanks_0_io_rdata_2_cf_trigger_backendEn_1),
    .io_rdata_2_cf_pd_isRVC(dataBanks_0_io_rdata_2_cf_pd_isRVC),
    .io_rdata_2_cf_pd_brType(dataBanks_0_io_rdata_2_cf_pd_brType),
    .io_rdata_2_cf_pd_isCall(dataBanks_0_io_rdata_2_cf_pd_isCall),
    .io_rdata_2_cf_pd_isRet(dataBanks_0_io_rdata_2_cf_pd_isRet),
    .io_rdata_2_cf_pred_taken(dataBanks_0_io_rdata_2_cf_pred_taken),
    .io_rdata_2_cf_storeSetHit(dataBanks_0_io_rdata_2_cf_storeSetHit),
    .io_rdata_2_cf_loadWaitStrict(dataBanks_0_io_rdata_2_cf_loadWaitStrict),
    .io_rdata_2_cf_ssid(dataBanks_0_io_rdata_2_cf_ssid),
    .io_rdata_2_cf_ftqPtr_flag(dataBanks_0_io_rdata_2_cf_ftqPtr_flag),
    .io_rdata_2_cf_ftqPtr_value(dataBanks_0_io_rdata_2_cf_ftqPtr_value),
    .io_rdata_2_cf_ftqOffset(dataBanks_0_io_rdata_2_cf_ftqOffset),
    .io_rdata_3_cf_trigger_backendEn_0(dataBanks_0_io_rdata_3_cf_trigger_backendEn_0),
    .io_rdata_3_cf_trigger_backendEn_1(dataBanks_0_io_rdata_3_cf_trigger_backendEn_1),
    .io_rdata_3_cf_pd_isRVC(dataBanks_0_io_rdata_3_cf_pd_isRVC),
    .io_rdata_3_cf_pd_brType(dataBanks_0_io_rdata_3_cf_pd_brType),
    .io_rdata_3_cf_pd_isCall(dataBanks_0_io_rdata_3_cf_pd_isCall),
    .io_rdata_3_cf_pd_isRet(dataBanks_0_io_rdata_3_cf_pd_isRet),
    .io_rdata_3_cf_pred_taken(dataBanks_0_io_rdata_3_cf_pred_taken),
    .io_rdata_3_cf_storeSetHit(dataBanks_0_io_rdata_3_cf_storeSetHit),
    .io_rdata_3_cf_loadWaitStrict(dataBanks_0_io_rdata_3_cf_loadWaitStrict),
    .io_rdata_3_cf_ssid(dataBanks_0_io_rdata_3_cf_ssid),
    .io_rdata_3_cf_ftqPtr_flag(dataBanks_0_io_rdata_3_cf_ftqPtr_flag),
    .io_rdata_3_cf_ftqPtr_value(dataBanks_0_io_rdata_3_cf_ftqPtr_value),
    .io_rdata_3_cf_ftqOffset(dataBanks_0_io_rdata_3_cf_ftqOffset),
    .io_rdata_4_cf_ftqPtr_value(dataBanks_0_io_rdata_4_cf_ftqPtr_value),
    .io_rdata_4_cf_ftqOffset(dataBanks_0_io_rdata_4_cf_ftqOffset),
    .io_rdata_4_ctrl_srcType_0(dataBanks_0_io_rdata_4_ctrl_srcType_0),
    .io_rdata_4_ctrl_srcType_1(dataBanks_0_io_rdata_4_ctrl_srcType_1),
    .io_rdata_4_ctrl_srcType_2(dataBanks_0_io_rdata_4_ctrl_srcType_2),
    .io_rdata_4_ctrl_fuType(dataBanks_0_io_rdata_4_ctrl_fuType),
    .io_rdata_4_ctrl_fuOpType(dataBanks_0_io_rdata_4_ctrl_fuOpType),
    .io_rdata_4_ctrl_rfWen(dataBanks_0_io_rdata_4_ctrl_rfWen),
    .io_rdata_4_ctrl_fpWen(dataBanks_0_io_rdata_4_ctrl_fpWen),
    .io_rdata_4_ctrl_selImm(dataBanks_0_io_rdata_4_ctrl_selImm),
    .io_rdata_4_ctrl_imm(dataBanks_0_io_rdata_4_ctrl_imm),
    .io_rdata_4_psrc_0(dataBanks_0_io_rdata_4_psrc_0),
    .io_rdata_4_psrc_1(dataBanks_0_io_rdata_4_psrc_1),
    .io_rdata_4_psrc_2(dataBanks_0_io_rdata_4_psrc_2),
    .io_rdata_4_pdest(dataBanks_0_io_rdata_4_pdest),
    .io_rdata_4_robIdx_flag(dataBanks_0_io_rdata_4_robIdx_flag),
    .io_rdata_4_robIdx_value(dataBanks_0_io_rdata_4_robIdx_value),
    .io_rdata_5_cf_ftqPtr_value(dataBanks_0_io_rdata_5_cf_ftqPtr_value),
    .io_rdata_5_cf_ftqOffset(dataBanks_0_io_rdata_5_cf_ftqOffset),
    .io_rdata_5_ctrl_srcType_0(dataBanks_0_io_rdata_5_ctrl_srcType_0),
    .io_rdata_5_ctrl_srcType_1(dataBanks_0_io_rdata_5_ctrl_srcType_1),
    .io_rdata_5_ctrl_srcType_2(dataBanks_0_io_rdata_5_ctrl_srcType_2),
    .io_rdata_5_ctrl_fuType(dataBanks_0_io_rdata_5_ctrl_fuType),
    .io_rdata_5_ctrl_fuOpType(dataBanks_0_io_rdata_5_ctrl_fuOpType),
    .io_rdata_5_ctrl_rfWen(dataBanks_0_io_rdata_5_ctrl_rfWen),
    .io_rdata_5_ctrl_fpWen(dataBanks_0_io_rdata_5_ctrl_fpWen),
    .io_rdata_5_ctrl_selImm(dataBanks_0_io_rdata_5_ctrl_selImm),
    .io_rdata_5_ctrl_imm(dataBanks_0_io_rdata_5_ctrl_imm),
    .io_rdata_5_psrc_0(dataBanks_0_io_rdata_5_psrc_0),
    .io_rdata_5_psrc_1(dataBanks_0_io_rdata_5_psrc_1),
    .io_rdata_5_psrc_2(dataBanks_0_io_rdata_5_psrc_2),
    .io_rdata_5_pdest(dataBanks_0_io_rdata_5_pdest),
    .io_rdata_5_robIdx_flag(dataBanks_0_io_rdata_5_robIdx_flag),
    .io_rdata_5_robIdx_value(dataBanks_0_io_rdata_5_robIdx_value),
    .io_rdata_6_cf_ftqPtr_value(dataBanks_0_io_rdata_6_cf_ftqPtr_value),
    .io_rdata_6_cf_ftqOffset(dataBanks_0_io_rdata_6_cf_ftqOffset),
    .io_rdata_6_ctrl_srcType_0(dataBanks_0_io_rdata_6_ctrl_srcType_0),
    .io_rdata_6_ctrl_srcType_1(dataBanks_0_io_rdata_6_ctrl_srcType_1),
    .io_rdata_6_ctrl_srcType_2(dataBanks_0_io_rdata_6_ctrl_srcType_2),
    .io_rdata_6_ctrl_fuType(dataBanks_0_io_rdata_6_ctrl_fuType),
    .io_rdata_6_ctrl_fuOpType(dataBanks_0_io_rdata_6_ctrl_fuOpType),
    .io_rdata_6_ctrl_rfWen(dataBanks_0_io_rdata_6_ctrl_rfWen),
    .io_rdata_6_ctrl_fpWen(dataBanks_0_io_rdata_6_ctrl_fpWen),
    .io_rdata_6_ctrl_selImm(dataBanks_0_io_rdata_6_ctrl_selImm),
    .io_rdata_6_ctrl_imm(dataBanks_0_io_rdata_6_ctrl_imm),
    .io_rdata_6_psrc_0(dataBanks_0_io_rdata_6_psrc_0),
    .io_rdata_6_psrc_1(dataBanks_0_io_rdata_6_psrc_1),
    .io_rdata_6_psrc_2(dataBanks_0_io_rdata_6_psrc_2),
    .io_rdata_6_pdest(dataBanks_0_io_rdata_6_pdest),
    .io_rdata_6_robIdx_flag(dataBanks_0_io_rdata_6_robIdx_flag),
    .io_rdata_6_robIdx_value(dataBanks_0_io_rdata_6_robIdx_value),
    .io_rdata_7_cf_ftqPtr_value(dataBanks_0_io_rdata_7_cf_ftqPtr_value),
    .io_rdata_7_cf_ftqOffset(dataBanks_0_io_rdata_7_cf_ftqOffset),
    .io_rdata_7_ctrl_srcType_0(dataBanks_0_io_rdata_7_ctrl_srcType_0),
    .io_rdata_7_ctrl_srcType_1(dataBanks_0_io_rdata_7_ctrl_srcType_1),
    .io_rdata_7_ctrl_srcType_2(dataBanks_0_io_rdata_7_ctrl_srcType_2),
    .io_rdata_7_ctrl_fuType(dataBanks_0_io_rdata_7_ctrl_fuType),
    .io_rdata_7_ctrl_fuOpType(dataBanks_0_io_rdata_7_ctrl_fuOpType),
    .io_rdata_7_ctrl_rfWen(dataBanks_0_io_rdata_7_ctrl_rfWen),
    .io_rdata_7_ctrl_fpWen(dataBanks_0_io_rdata_7_ctrl_fpWen),
    .io_rdata_7_ctrl_selImm(dataBanks_0_io_rdata_7_ctrl_selImm),
    .io_rdata_7_ctrl_imm(dataBanks_0_io_rdata_7_ctrl_imm),
    .io_rdata_7_psrc_0(dataBanks_0_io_rdata_7_psrc_0),
    .io_rdata_7_psrc_1(dataBanks_0_io_rdata_7_psrc_1),
    .io_rdata_7_psrc_2(dataBanks_0_io_rdata_7_psrc_2),
    .io_rdata_7_pdest(dataBanks_0_io_rdata_7_pdest),
    .io_rdata_7_robIdx_flag(dataBanks_0_io_rdata_7_robIdx_flag),
    .io_rdata_7_robIdx_value(dataBanks_0_io_rdata_7_robIdx_value),
    .io_wen_0(dataBanks_0_io_wen_0),
    .io_wen_1(dataBanks_0_io_wen_1),
    .io_waddr_0(dataBanks_0_io_waddr_0),
    .io_waddr_1(dataBanks_0_io_waddr_1),
    .io_wdata_0_cf_trigger_backendEn_0(dataBanks_0_io_wdata_0_cf_trigger_backendEn_0),
    .io_wdata_0_cf_trigger_backendEn_1(dataBanks_0_io_wdata_0_cf_trigger_backendEn_1),
    .io_wdata_0_cf_pd_isRVC(dataBanks_0_io_wdata_0_cf_pd_isRVC),
    .io_wdata_0_cf_pd_brType(dataBanks_0_io_wdata_0_cf_pd_brType),
    .io_wdata_0_cf_pd_isCall(dataBanks_0_io_wdata_0_cf_pd_isCall),
    .io_wdata_0_cf_pd_isRet(dataBanks_0_io_wdata_0_cf_pd_isRet),
    .io_wdata_0_cf_pred_taken(dataBanks_0_io_wdata_0_cf_pred_taken),
    .io_wdata_0_cf_storeSetHit(dataBanks_0_io_wdata_0_cf_storeSetHit),
    .io_wdata_0_cf_loadWaitStrict(dataBanks_0_io_wdata_0_cf_loadWaitStrict),
    .io_wdata_0_cf_ssid(dataBanks_0_io_wdata_0_cf_ssid),
    .io_wdata_0_cf_ftqPtr_flag(dataBanks_0_io_wdata_0_cf_ftqPtr_flag),
    .io_wdata_0_cf_ftqPtr_value(dataBanks_0_io_wdata_0_cf_ftqPtr_value),
    .io_wdata_0_cf_ftqOffset(dataBanks_0_io_wdata_0_cf_ftqOffset),
    .io_wdata_0_ctrl_srcType_0(dataBanks_0_io_wdata_0_ctrl_srcType_0),
    .io_wdata_0_ctrl_srcType_1(dataBanks_0_io_wdata_0_ctrl_srcType_1),
    .io_wdata_0_ctrl_srcType_2(dataBanks_0_io_wdata_0_ctrl_srcType_2),
    .io_wdata_0_ctrl_fuType(dataBanks_0_io_wdata_0_ctrl_fuType),
    .io_wdata_0_ctrl_fuOpType(dataBanks_0_io_wdata_0_ctrl_fuOpType),
    .io_wdata_0_ctrl_rfWen(dataBanks_0_io_wdata_0_ctrl_rfWen),
    .io_wdata_0_ctrl_fpWen(dataBanks_0_io_wdata_0_ctrl_fpWen),
    .io_wdata_0_ctrl_selImm(dataBanks_0_io_wdata_0_ctrl_selImm),
    .io_wdata_0_ctrl_imm(dataBanks_0_io_wdata_0_ctrl_imm),
    .io_wdata_0_ctrl_fpu_isAddSub(dataBanks_0_io_wdata_0_ctrl_fpu_isAddSub),
    .io_wdata_0_ctrl_fpu_typeTagIn(dataBanks_0_io_wdata_0_ctrl_fpu_typeTagIn),
    .io_wdata_0_ctrl_fpu_typeTagOut(dataBanks_0_io_wdata_0_ctrl_fpu_typeTagOut),
    .io_wdata_0_ctrl_fpu_fromInt(dataBanks_0_io_wdata_0_ctrl_fpu_fromInt),
    .io_wdata_0_ctrl_fpu_wflags(dataBanks_0_io_wdata_0_ctrl_fpu_wflags),
    .io_wdata_0_ctrl_fpu_fpWen(dataBanks_0_io_wdata_0_ctrl_fpu_fpWen),
    .io_wdata_0_ctrl_fpu_fmaCmd(dataBanks_0_io_wdata_0_ctrl_fpu_fmaCmd),
    .io_wdata_0_ctrl_fpu_div(dataBanks_0_io_wdata_0_ctrl_fpu_div),
    .io_wdata_0_ctrl_fpu_sqrt(dataBanks_0_io_wdata_0_ctrl_fpu_sqrt),
    .io_wdata_0_ctrl_fpu_fcvt(dataBanks_0_io_wdata_0_ctrl_fpu_fcvt),
    .io_wdata_0_ctrl_fpu_typ(dataBanks_0_io_wdata_0_ctrl_fpu_typ),
    .io_wdata_0_ctrl_fpu_fmt(dataBanks_0_io_wdata_0_ctrl_fpu_fmt),
    .io_wdata_0_ctrl_fpu_ren3(dataBanks_0_io_wdata_0_ctrl_fpu_ren3),
    .io_wdata_0_ctrl_fpu_rm(dataBanks_0_io_wdata_0_ctrl_fpu_rm),
    .io_wdata_0_psrc_0(dataBanks_0_io_wdata_0_psrc_0),
    .io_wdata_0_psrc_1(dataBanks_0_io_wdata_0_psrc_1),
    .io_wdata_0_psrc_2(dataBanks_0_io_wdata_0_psrc_2),
    .io_wdata_0_pdest(dataBanks_0_io_wdata_0_pdest),
    .io_wdata_0_robIdx_flag(dataBanks_0_io_wdata_0_robIdx_flag),
    .io_wdata_0_robIdx_value(dataBanks_0_io_wdata_0_robIdx_value),
    .io_wdata_1_cf_trigger_backendEn_0(dataBanks_0_io_wdata_1_cf_trigger_backendEn_0),
    .io_wdata_1_cf_trigger_backendEn_1(dataBanks_0_io_wdata_1_cf_trigger_backendEn_1),
    .io_wdata_1_cf_pd_isRVC(dataBanks_0_io_wdata_1_cf_pd_isRVC),
    .io_wdata_1_cf_pd_brType(dataBanks_0_io_wdata_1_cf_pd_brType),
    .io_wdata_1_cf_pd_isCall(dataBanks_0_io_wdata_1_cf_pd_isCall),
    .io_wdata_1_cf_pd_isRet(dataBanks_0_io_wdata_1_cf_pd_isRet),
    .io_wdata_1_cf_pred_taken(dataBanks_0_io_wdata_1_cf_pred_taken),
    .io_wdata_1_cf_storeSetHit(dataBanks_0_io_wdata_1_cf_storeSetHit),
    .io_wdata_1_cf_loadWaitStrict(dataBanks_0_io_wdata_1_cf_loadWaitStrict),
    .io_wdata_1_cf_ssid(dataBanks_0_io_wdata_1_cf_ssid),
    .io_wdata_1_cf_ftqPtr_flag(dataBanks_0_io_wdata_1_cf_ftqPtr_flag),
    .io_wdata_1_cf_ftqPtr_value(dataBanks_0_io_wdata_1_cf_ftqPtr_value),
    .io_wdata_1_cf_ftqOffset(dataBanks_0_io_wdata_1_cf_ftqOffset),
    .io_wdata_1_ctrl_srcType_0(dataBanks_0_io_wdata_1_ctrl_srcType_0),
    .io_wdata_1_ctrl_srcType_1(dataBanks_0_io_wdata_1_ctrl_srcType_1),
    .io_wdata_1_ctrl_srcType_2(dataBanks_0_io_wdata_1_ctrl_srcType_2),
    .io_wdata_1_ctrl_fuType(dataBanks_0_io_wdata_1_ctrl_fuType),
    .io_wdata_1_ctrl_fuOpType(dataBanks_0_io_wdata_1_ctrl_fuOpType),
    .io_wdata_1_ctrl_rfWen(dataBanks_0_io_wdata_1_ctrl_rfWen),
    .io_wdata_1_ctrl_fpWen(dataBanks_0_io_wdata_1_ctrl_fpWen),
    .io_wdata_1_ctrl_selImm(dataBanks_0_io_wdata_1_ctrl_selImm),
    .io_wdata_1_ctrl_imm(dataBanks_0_io_wdata_1_ctrl_imm),
    .io_wdata_1_ctrl_fpu_isAddSub(dataBanks_0_io_wdata_1_ctrl_fpu_isAddSub),
    .io_wdata_1_ctrl_fpu_typeTagIn(dataBanks_0_io_wdata_1_ctrl_fpu_typeTagIn),
    .io_wdata_1_ctrl_fpu_typeTagOut(dataBanks_0_io_wdata_1_ctrl_fpu_typeTagOut),
    .io_wdata_1_ctrl_fpu_fromInt(dataBanks_0_io_wdata_1_ctrl_fpu_fromInt),
    .io_wdata_1_ctrl_fpu_wflags(dataBanks_0_io_wdata_1_ctrl_fpu_wflags),
    .io_wdata_1_ctrl_fpu_fpWen(dataBanks_0_io_wdata_1_ctrl_fpu_fpWen),
    .io_wdata_1_ctrl_fpu_fmaCmd(dataBanks_0_io_wdata_1_ctrl_fpu_fmaCmd),
    .io_wdata_1_ctrl_fpu_div(dataBanks_0_io_wdata_1_ctrl_fpu_div),
    .io_wdata_1_ctrl_fpu_sqrt(dataBanks_0_io_wdata_1_ctrl_fpu_sqrt),
    .io_wdata_1_ctrl_fpu_fcvt(dataBanks_0_io_wdata_1_ctrl_fpu_fcvt),
    .io_wdata_1_ctrl_fpu_typ(dataBanks_0_io_wdata_1_ctrl_fpu_typ),
    .io_wdata_1_ctrl_fpu_fmt(dataBanks_0_io_wdata_1_ctrl_fpu_fmt),
    .io_wdata_1_ctrl_fpu_ren3(dataBanks_0_io_wdata_1_ctrl_fpu_ren3),
    .io_wdata_1_ctrl_fpu_rm(dataBanks_0_io_wdata_1_ctrl_fpu_rm),
    .io_wdata_1_psrc_0(dataBanks_0_io_wdata_1_psrc_0),
    .io_wdata_1_psrc_1(dataBanks_0_io_wdata_1_psrc_1),
    .io_wdata_1_psrc_2(dataBanks_0_io_wdata_1_psrc_2),
    .io_wdata_1_pdest(dataBanks_0_io_wdata_1_pdest),
    .io_wdata_1_robIdx_flag(dataBanks_0_io_wdata_1_robIdx_flag),
    .io_wdata_1_robIdx_value(dataBanks_0_io_wdata_1_robIdx_value)
  );
  assign io_rdata_0_cf_trigger_backendEn_0 = dataBanks_0_io_rdata_0_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_cf_trigger_backendEn_1 = dataBanks_0_io_rdata_0_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_cf_pd_isRVC = dataBanks_0_io_rdata_0_cf_pd_isRVC; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_cf_pd_brType = dataBanks_0_io_rdata_0_cf_pd_brType; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_cf_pd_isCall = dataBanks_0_io_rdata_0_cf_pd_isCall; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_cf_pd_isRet = dataBanks_0_io_rdata_0_cf_pd_isRet; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_cf_pred_taken = dataBanks_0_io_rdata_0_cf_pred_taken; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_cf_storeSetHit = dataBanks_0_io_rdata_0_cf_storeSetHit; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_cf_loadWaitStrict = dataBanks_0_io_rdata_0_cf_loadWaitStrict; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_cf_ssid = dataBanks_0_io_rdata_0_cf_ssid; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_cf_ftqPtr_flag = dataBanks_0_io_rdata_0_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_cf_ftqPtr_value = dataBanks_0_io_rdata_0_cf_ftqPtr_value; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_cf_ftqOffset = dataBanks_0_io_rdata_0_cf_ftqOffset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ctrl_fpu_isAddSub = dataBanks_0_io_rdata_0_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ctrl_fpu_typeTagIn = dataBanks_0_io_rdata_0_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ctrl_fpu_typeTagOut = dataBanks_0_io_rdata_0_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ctrl_fpu_fromInt = dataBanks_0_io_rdata_0_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ctrl_fpu_wflags = dataBanks_0_io_rdata_0_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ctrl_fpu_fpWen = dataBanks_0_io_rdata_0_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ctrl_fpu_fmaCmd = dataBanks_0_io_rdata_0_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ctrl_fpu_div = dataBanks_0_io_rdata_0_ctrl_fpu_div; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ctrl_fpu_sqrt = dataBanks_0_io_rdata_0_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ctrl_fpu_fcvt = dataBanks_0_io_rdata_0_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ctrl_fpu_typ = dataBanks_0_io_rdata_0_ctrl_fpu_typ; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ctrl_fpu_fmt = dataBanks_0_io_rdata_0_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ctrl_fpu_ren3 = dataBanks_0_io_rdata_0_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_0_ctrl_fpu_rm = dataBanks_0_io_rdata_0_ctrl_fpu_rm; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_cf_trigger_backendEn_0 = dataBanks_0_io_rdata_1_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_cf_trigger_backendEn_1 = dataBanks_0_io_rdata_1_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_cf_pd_isRVC = dataBanks_0_io_rdata_1_cf_pd_isRVC; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_cf_pd_brType = dataBanks_0_io_rdata_1_cf_pd_brType; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_cf_pd_isCall = dataBanks_0_io_rdata_1_cf_pd_isCall; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_cf_pd_isRet = dataBanks_0_io_rdata_1_cf_pd_isRet; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_cf_pred_taken = dataBanks_0_io_rdata_1_cf_pred_taken; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_cf_storeSetHit = dataBanks_0_io_rdata_1_cf_storeSetHit; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_cf_loadWaitStrict = dataBanks_0_io_rdata_1_cf_loadWaitStrict; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_cf_ssid = dataBanks_0_io_rdata_1_cf_ssid; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_cf_ftqPtr_flag = dataBanks_0_io_rdata_1_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_cf_ftqPtr_value = dataBanks_0_io_rdata_1_cf_ftqPtr_value; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_1_cf_ftqOffset = dataBanks_0_io_rdata_1_cf_ftqOffset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_cf_trigger_backendEn_0 = dataBanks_0_io_rdata_2_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_cf_trigger_backendEn_1 = dataBanks_0_io_rdata_2_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_cf_pd_isRVC = dataBanks_0_io_rdata_2_cf_pd_isRVC; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_cf_pd_brType = dataBanks_0_io_rdata_2_cf_pd_brType; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_cf_pd_isCall = dataBanks_0_io_rdata_2_cf_pd_isCall; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_cf_pd_isRet = dataBanks_0_io_rdata_2_cf_pd_isRet; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_cf_pred_taken = dataBanks_0_io_rdata_2_cf_pred_taken; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_cf_storeSetHit = dataBanks_0_io_rdata_2_cf_storeSetHit; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_cf_loadWaitStrict = dataBanks_0_io_rdata_2_cf_loadWaitStrict; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_cf_ssid = dataBanks_0_io_rdata_2_cf_ssid; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_cf_ftqPtr_flag = dataBanks_0_io_rdata_2_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_cf_ftqPtr_value = dataBanks_0_io_rdata_2_cf_ftqPtr_value; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_2_cf_ftqOffset = dataBanks_0_io_rdata_2_cf_ftqOffset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_cf_trigger_backendEn_0 = dataBanks_0_io_rdata_3_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_cf_trigger_backendEn_1 = dataBanks_0_io_rdata_3_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_cf_pd_isRVC = dataBanks_0_io_rdata_3_cf_pd_isRVC; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_cf_pd_brType = dataBanks_0_io_rdata_3_cf_pd_brType; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_cf_pd_isCall = dataBanks_0_io_rdata_3_cf_pd_isCall; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_cf_pd_isRet = dataBanks_0_io_rdata_3_cf_pd_isRet; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_cf_pred_taken = dataBanks_0_io_rdata_3_cf_pred_taken; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_cf_storeSetHit = dataBanks_0_io_rdata_3_cf_storeSetHit; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_cf_loadWaitStrict = dataBanks_0_io_rdata_3_cf_loadWaitStrict; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_cf_ssid = dataBanks_0_io_rdata_3_cf_ssid; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_cf_ftqPtr_flag = dataBanks_0_io_rdata_3_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_cf_ftqPtr_value = dataBanks_0_io_rdata_3_cf_ftqPtr_value; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_3_cf_ftqOffset = dataBanks_0_io_rdata_3_cf_ftqOffset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_cf_ftqPtr_value = dataBanks_0_io_rdata_4_cf_ftqPtr_value; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_cf_ftqOffset = dataBanks_0_io_rdata_4_cf_ftqOffset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_ctrl_srcType_0 = dataBanks_0_io_rdata_4_ctrl_srcType_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_ctrl_srcType_1 = dataBanks_0_io_rdata_4_ctrl_srcType_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_ctrl_srcType_2 = dataBanks_0_io_rdata_4_ctrl_srcType_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_ctrl_fuType = dataBanks_0_io_rdata_4_ctrl_fuType; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_ctrl_fuOpType = dataBanks_0_io_rdata_4_ctrl_fuOpType; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_ctrl_rfWen = dataBanks_0_io_rdata_4_ctrl_rfWen; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_ctrl_fpWen = dataBanks_0_io_rdata_4_ctrl_fpWen; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_ctrl_selImm = dataBanks_0_io_rdata_4_ctrl_selImm; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_ctrl_imm = dataBanks_0_io_rdata_4_ctrl_imm; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_psrc_0 = dataBanks_0_io_rdata_4_psrc_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_psrc_1 = dataBanks_0_io_rdata_4_psrc_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_psrc_2 = dataBanks_0_io_rdata_4_psrc_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_pdest = dataBanks_0_io_rdata_4_pdest; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_robIdx_flag = dataBanks_0_io_rdata_4_robIdx_flag; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_4_robIdx_value = dataBanks_0_io_rdata_4_robIdx_value; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_cf_ftqPtr_value = dataBanks_0_io_rdata_5_cf_ftqPtr_value; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_cf_ftqOffset = dataBanks_0_io_rdata_5_cf_ftqOffset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_ctrl_srcType_0 = dataBanks_0_io_rdata_5_ctrl_srcType_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_ctrl_srcType_1 = dataBanks_0_io_rdata_5_ctrl_srcType_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_ctrl_srcType_2 = dataBanks_0_io_rdata_5_ctrl_srcType_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_ctrl_fuType = dataBanks_0_io_rdata_5_ctrl_fuType; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_ctrl_fuOpType = dataBanks_0_io_rdata_5_ctrl_fuOpType; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_ctrl_rfWen = dataBanks_0_io_rdata_5_ctrl_rfWen; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_ctrl_fpWen = dataBanks_0_io_rdata_5_ctrl_fpWen; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_ctrl_selImm = dataBanks_0_io_rdata_5_ctrl_selImm; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_ctrl_imm = dataBanks_0_io_rdata_5_ctrl_imm; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_psrc_0 = dataBanks_0_io_rdata_5_psrc_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_psrc_1 = dataBanks_0_io_rdata_5_psrc_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_psrc_2 = dataBanks_0_io_rdata_5_psrc_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_pdest = dataBanks_0_io_rdata_5_pdest; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_robIdx_flag = dataBanks_0_io_rdata_5_robIdx_flag; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_5_robIdx_value = dataBanks_0_io_rdata_5_robIdx_value; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_cf_ftqPtr_value = dataBanks_0_io_rdata_6_cf_ftqPtr_value; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_cf_ftqOffset = dataBanks_0_io_rdata_6_cf_ftqOffset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_ctrl_srcType_0 = dataBanks_0_io_rdata_6_ctrl_srcType_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_ctrl_srcType_1 = dataBanks_0_io_rdata_6_ctrl_srcType_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_ctrl_srcType_2 = dataBanks_0_io_rdata_6_ctrl_srcType_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_ctrl_fuType = dataBanks_0_io_rdata_6_ctrl_fuType; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_ctrl_fuOpType = dataBanks_0_io_rdata_6_ctrl_fuOpType; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_ctrl_rfWen = dataBanks_0_io_rdata_6_ctrl_rfWen; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_ctrl_fpWen = dataBanks_0_io_rdata_6_ctrl_fpWen; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_ctrl_selImm = dataBanks_0_io_rdata_6_ctrl_selImm; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_ctrl_imm = dataBanks_0_io_rdata_6_ctrl_imm; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_psrc_0 = dataBanks_0_io_rdata_6_psrc_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_psrc_1 = dataBanks_0_io_rdata_6_psrc_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_psrc_2 = dataBanks_0_io_rdata_6_psrc_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_pdest = dataBanks_0_io_rdata_6_pdest; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_robIdx_flag = dataBanks_0_io_rdata_6_robIdx_flag; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_6_robIdx_value = dataBanks_0_io_rdata_6_robIdx_value; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_cf_ftqPtr_value = dataBanks_0_io_rdata_7_cf_ftqPtr_value; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_cf_ftqOffset = dataBanks_0_io_rdata_7_cf_ftqOffset; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_ctrl_srcType_0 = dataBanks_0_io_rdata_7_ctrl_srcType_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_ctrl_srcType_1 = dataBanks_0_io_rdata_7_ctrl_srcType_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_ctrl_srcType_2 = dataBanks_0_io_rdata_7_ctrl_srcType_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_ctrl_fuType = dataBanks_0_io_rdata_7_ctrl_fuType; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_ctrl_fuOpType = dataBanks_0_io_rdata_7_ctrl_fuOpType; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_ctrl_rfWen = dataBanks_0_io_rdata_7_ctrl_rfWen; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_ctrl_fpWen = dataBanks_0_io_rdata_7_ctrl_fpWen; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_ctrl_selImm = dataBanks_0_io_rdata_7_ctrl_selImm; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_ctrl_imm = dataBanks_0_io_rdata_7_ctrl_imm; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_psrc_0 = dataBanks_0_io_rdata_7_psrc_0; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_psrc_1 = dataBanks_0_io_rdata_7_psrc_1; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_psrc_2 = dataBanks_0_io_rdata_7_psrc_2; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_pdest = dataBanks_0_io_rdata_7_pdest; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_robIdx_flag = dataBanks_0_io_rdata_7_robIdx_flag; // @[DataModuleTemplate.scala 147:17]
  assign io_rdata_7_robIdx_value = dataBanks_0_io_rdata_7_robIdx_value; // @[DataModuleTemplate.scala 147:17]
  assign dataBanks_0_clock = clock;
  assign dataBanks_0_io_raddr_0 = raddr_dup__0; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_1 = raddr_dup__1; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_2 = raddr_dup__2; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_3 = raddr_dup__3; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_4 = raddr_dup__4; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_5 = raddr_dup__5; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_6 = raddr_dup__6; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_raddr_7 = raddr_dup__7; // @[DataModuleTemplate.scala 128:23]
  assign dataBanks_0_io_wen_0 = wen_dup_0; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_wen_1 = wen_dup_1; // @[DataModuleTemplate.scala 129:74]
  assign dataBanks_0_io_waddr_0 = waddr_dup_0; // @[DataModuleTemplate.scala 130:23]
  assign dataBanks_0_io_waddr_1 = waddr_dup_1; // @[DataModuleTemplate.scala 130:23]
  assign dataBanks_0_io_wdata_0_cf_trigger_backendEn_0 = r_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_cf_trigger_backendEn_1 = r_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_cf_pd_isRVC = r_cf_pd_isRVC; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_cf_pd_brType = r_cf_pd_brType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_cf_pd_isCall = r_cf_pd_isCall; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_cf_pd_isRet = r_cf_pd_isRet; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_cf_pred_taken = r_cf_pred_taken; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_cf_storeSetHit = r_cf_storeSetHit; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_cf_loadWaitStrict = r_cf_loadWaitStrict; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_cf_ssid = r_cf_ssid; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_cf_ftqPtr_flag = r_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_cf_ftqPtr_value = r_cf_ftqPtr_value; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_cf_ftqOffset = r_cf_ftqOffset; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_srcType_0 = r_ctrl_srcType_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_srcType_1 = r_ctrl_srcType_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_srcType_2 = r_ctrl_srcType_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fuType = r_ctrl_fuType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fuOpType = r_ctrl_fuOpType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_rfWen = r_ctrl_rfWen; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fpWen = r_ctrl_fpWen; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_selImm = r_ctrl_selImm; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_imm = r_ctrl_imm; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fpu_isAddSub = r_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fpu_typeTagIn = r_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fpu_typeTagOut = r_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fpu_fromInt = r_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fpu_wflags = r_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fpu_fpWen = r_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fpu_fmaCmd = r_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fpu_div = r_ctrl_fpu_div; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fpu_sqrt = r_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fpu_fcvt = r_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fpu_typ = r_ctrl_fpu_typ; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fpu_fmt = r_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fpu_ren3 = r_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_ctrl_fpu_rm = r_ctrl_fpu_rm; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_psrc_0 = r_psrc_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_psrc_1 = r_psrc_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_psrc_2 = r_psrc_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_pdest = r_pdest; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_robIdx_flag = r_robIdx_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_0_robIdx_value = r_robIdx_value; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_cf_trigger_backendEn_0 = r_1_cf_trigger_backendEn_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_cf_trigger_backendEn_1 = r_1_cf_trigger_backendEn_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_cf_pd_isRVC = r_1_cf_pd_isRVC; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_cf_pd_brType = r_1_cf_pd_brType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_cf_pd_isCall = r_1_cf_pd_isCall; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_cf_pd_isRet = r_1_cf_pd_isRet; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_cf_pred_taken = r_1_cf_pred_taken; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_cf_storeSetHit = r_1_cf_storeSetHit; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_cf_loadWaitStrict = r_1_cf_loadWaitStrict; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_cf_ssid = r_1_cf_ssid; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_cf_ftqPtr_flag = r_1_cf_ftqPtr_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_cf_ftqPtr_value = r_1_cf_ftqPtr_value; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_cf_ftqOffset = r_1_cf_ftqOffset; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_srcType_0 = r_1_ctrl_srcType_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_srcType_1 = r_1_ctrl_srcType_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_srcType_2 = r_1_ctrl_srcType_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fuType = r_1_ctrl_fuType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fuOpType = r_1_ctrl_fuOpType; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_rfWen = r_1_ctrl_rfWen; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fpWen = r_1_ctrl_fpWen; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_selImm = r_1_ctrl_selImm; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_imm = r_1_ctrl_imm; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fpu_isAddSub = r_1_ctrl_fpu_isAddSub; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fpu_typeTagIn = r_1_ctrl_fpu_typeTagIn; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fpu_typeTagOut = r_1_ctrl_fpu_typeTagOut; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fpu_fromInt = r_1_ctrl_fpu_fromInt; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fpu_wflags = r_1_ctrl_fpu_wflags; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fpu_fpWen = r_1_ctrl_fpu_fpWen; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fpu_fmaCmd = r_1_ctrl_fpu_fmaCmd; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fpu_div = r_1_ctrl_fpu_div; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fpu_sqrt = r_1_ctrl_fpu_sqrt; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fpu_fcvt = r_1_ctrl_fpu_fcvt; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fpu_typ = r_1_ctrl_fpu_typ; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fpu_fmt = r_1_ctrl_fpu_fmt; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fpu_ren3 = r_1_ctrl_fpu_ren3; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_ctrl_fpu_rm = r_1_ctrl_fpu_rm; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_psrc_0 = r_1_psrc_0; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_psrc_1 = r_1_psrc_1; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_psrc_2 = r_1_psrc_2; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_pdest = r_1_pdest; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_robIdx_flag = r_1_robIdx_flag; // @[DataModuleTemplate.scala 136:25]
  assign dataBanks_0_io_wdata_1_robIdx_value = r_1_robIdx_value; // @[DataModuleTemplate.scala 136:25]
  always @(posedge clock) begin
    raddr_dup__0 <= io_raddr_0; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__1 <= io_raddr_1; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__2 <= io_raddr_2; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__3 <= io_raddr_3; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__4 <= io_raddr_4; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__5 <= io_raddr_5; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__6 <= io_raddr_6; // @[DataModuleTemplate.scala 123:28]
    raddr_dup__7 <= io_raddr_7; // @[DataModuleTemplate.scala 123:28]
    wen_dup_0 <= io_wen_0; // @[DataModuleTemplate.scala 124:26]
    wen_dup_1 <= io_wen_1; // @[DataModuleTemplate.scala 124:26]
    if (io_wen_0) begin // @[Reg.scala 17:18]
      waddr_dup_0 <= io_waddr_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      waddr_dup_1 <= io_waddr_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_cf_trigger_backendEn_0 <= io_wdata_0_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_cf_trigger_backendEn_1 <= io_wdata_0_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_cf_pd_isRVC <= io_wdata_0_cf_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_cf_pd_brType <= io_wdata_0_cf_pd_brType; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_cf_pd_isCall <= io_wdata_0_cf_pd_isCall; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_cf_pd_isRet <= io_wdata_0_cf_pd_isRet; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_cf_pred_taken <= io_wdata_0_cf_pred_taken; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_cf_storeSetHit <= io_wdata_0_cf_storeSetHit; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_cf_loadWaitStrict <= io_wdata_0_cf_loadWaitStrict; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_cf_ssid <= io_wdata_0_cf_ssid; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_cf_ftqPtr_flag <= io_wdata_0_cf_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_cf_ftqPtr_value <= io_wdata_0_cf_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_cf_ftqOffset <= io_wdata_0_cf_ftqOffset; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_srcType_0 <= io_wdata_0_ctrl_srcType_0; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_srcType_1 <= io_wdata_0_ctrl_srcType_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_srcType_2 <= io_wdata_0_ctrl_srcType_2; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fuType <= io_wdata_0_ctrl_fuType; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fuOpType <= io_wdata_0_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_rfWen <= io_wdata_0_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fpWen <= io_wdata_0_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_selImm <= io_wdata_0_ctrl_selImm; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_imm <= io_wdata_0_ctrl_imm; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fpu_isAddSub <= io_wdata_0_ctrl_fpu_isAddSub; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fpu_typeTagIn <= io_wdata_0_ctrl_fpu_typeTagIn; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fpu_typeTagOut <= io_wdata_0_ctrl_fpu_typeTagOut; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fpu_fromInt <= io_wdata_0_ctrl_fpu_fromInt; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fpu_wflags <= io_wdata_0_ctrl_fpu_wflags; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fpu_fpWen <= io_wdata_0_ctrl_fpu_fpWen; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fpu_fmaCmd <= io_wdata_0_ctrl_fpu_fmaCmd; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fpu_div <= io_wdata_0_ctrl_fpu_div; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fpu_sqrt <= io_wdata_0_ctrl_fpu_sqrt; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fpu_fcvt <= io_wdata_0_ctrl_fpu_fcvt; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fpu_typ <= io_wdata_0_ctrl_fpu_typ; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fpu_fmt <= io_wdata_0_ctrl_fpu_fmt; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fpu_ren3 <= io_wdata_0_ctrl_fpu_ren3; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_ctrl_fpu_rm <= io_wdata_0_ctrl_fpu_rm; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_psrc_0 <= io_wdata_0_psrc_0; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_psrc_1 <= io_wdata_0_psrc_1; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_psrc_2 <= io_wdata_0_psrc_2; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_pdest <= io_wdata_0_pdest; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_robIdx_flag <= io_wdata_0_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_0) begin // @[Reg.scala 17:18]
      r_robIdx_value <= io_wdata_0_robIdx_value; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_cf_trigger_backendEn_0 <= io_wdata_1_cf_trigger_backendEn_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_cf_trigger_backendEn_1 <= io_wdata_1_cf_trigger_backendEn_1; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_cf_pd_isRVC <= io_wdata_1_cf_pd_isRVC; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_cf_pd_brType <= io_wdata_1_cf_pd_brType; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_cf_pd_isCall <= io_wdata_1_cf_pd_isCall; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_cf_pd_isRet <= io_wdata_1_cf_pd_isRet; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_cf_pred_taken <= io_wdata_1_cf_pred_taken; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_cf_storeSetHit <= io_wdata_1_cf_storeSetHit; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_cf_loadWaitStrict <= io_wdata_1_cf_loadWaitStrict; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_cf_ssid <= io_wdata_1_cf_ssid; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_cf_ftqPtr_flag <= io_wdata_1_cf_ftqPtr_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_cf_ftqPtr_value <= io_wdata_1_cf_ftqPtr_value; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_cf_ftqOffset <= io_wdata_1_cf_ftqOffset; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_srcType_0 <= io_wdata_1_ctrl_srcType_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_srcType_1 <= io_wdata_1_ctrl_srcType_1; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_srcType_2 <= io_wdata_1_ctrl_srcType_2; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fuType <= io_wdata_1_ctrl_fuType; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fuOpType <= io_wdata_1_ctrl_fuOpType; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_rfWen <= io_wdata_1_ctrl_rfWen; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fpWen <= io_wdata_1_ctrl_fpWen; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_selImm <= io_wdata_1_ctrl_selImm; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_imm <= io_wdata_1_ctrl_imm; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fpu_isAddSub <= io_wdata_1_ctrl_fpu_isAddSub; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fpu_typeTagIn <= io_wdata_1_ctrl_fpu_typeTagIn; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fpu_typeTagOut <= io_wdata_1_ctrl_fpu_typeTagOut; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fpu_fromInt <= io_wdata_1_ctrl_fpu_fromInt; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fpu_wflags <= io_wdata_1_ctrl_fpu_wflags; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fpu_fpWen <= io_wdata_1_ctrl_fpu_fpWen; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fpu_fmaCmd <= io_wdata_1_ctrl_fpu_fmaCmd; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fpu_div <= io_wdata_1_ctrl_fpu_div; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fpu_sqrt <= io_wdata_1_ctrl_fpu_sqrt; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fpu_fcvt <= io_wdata_1_ctrl_fpu_fcvt; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fpu_typ <= io_wdata_1_ctrl_fpu_typ; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fpu_fmt <= io_wdata_1_ctrl_fpu_fmt; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fpu_ren3 <= io_wdata_1_ctrl_fpu_ren3; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_ctrl_fpu_rm <= io_wdata_1_ctrl_fpu_rm; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_psrc_0 <= io_wdata_1_psrc_0; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_psrc_1 <= io_wdata_1_psrc_1; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_psrc_2 <= io_wdata_1_psrc_2; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_pdest <= io_wdata_1_pdest; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_robIdx_flag <= io_wdata_1_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_wen_1) begin // @[Reg.scala 17:18]
      r_1_robIdx_value <= io_wdata_1_robIdx_value; // @[Reg.scala 17:22]
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
  raddr_dup__0 = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  raddr_dup__1 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  raddr_dup__2 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  raddr_dup__3 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  raddr_dup__4 = _RAND_4[3:0];
  _RAND_5 = {1{`RANDOM}};
  raddr_dup__5 = _RAND_5[3:0];
  _RAND_6 = {1{`RANDOM}};
  raddr_dup__6 = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  raddr_dup__7 = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  wen_dup_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  wen_dup_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  waddr_dup_0 = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  waddr_dup_1 = _RAND_11[3:0];
  _RAND_12 = {1{`RANDOM}};
  r_cf_trigger_backendEn_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  r_cf_trigger_backendEn_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  r_cf_pd_isRVC = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  r_cf_pd_brType = _RAND_15[1:0];
  _RAND_16 = {1{`RANDOM}};
  r_cf_pd_isCall = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  r_cf_pd_isRet = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  r_cf_pred_taken = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  r_cf_storeSetHit = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  r_cf_loadWaitStrict = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  r_cf_ssid = _RAND_21[4:0];
  _RAND_22 = {1{`RANDOM}};
  r_cf_ftqPtr_flag = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  r_cf_ftqPtr_value = _RAND_23[2:0];
  _RAND_24 = {1{`RANDOM}};
  r_cf_ftqOffset = _RAND_24[2:0];
  _RAND_25 = {1{`RANDOM}};
  r_ctrl_srcType_0 = _RAND_25[1:0];
  _RAND_26 = {1{`RANDOM}};
  r_ctrl_srcType_1 = _RAND_26[1:0];
  _RAND_27 = {1{`RANDOM}};
  r_ctrl_srcType_2 = _RAND_27[1:0];
  _RAND_28 = {1{`RANDOM}};
  r_ctrl_fuType = _RAND_28[3:0];
  _RAND_29 = {1{`RANDOM}};
  r_ctrl_fuOpType = _RAND_29[6:0];
  _RAND_30 = {1{`RANDOM}};
  r_ctrl_rfWen = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  r_ctrl_fpWen = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  r_ctrl_selImm = _RAND_32[3:0];
  _RAND_33 = {1{`RANDOM}};
  r_ctrl_imm = _RAND_33[19:0];
  _RAND_34 = {1{`RANDOM}};
  r_ctrl_fpu_isAddSub = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  r_ctrl_fpu_typeTagIn = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  r_ctrl_fpu_typeTagOut = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  r_ctrl_fpu_fromInt = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  r_ctrl_fpu_wflags = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  r_ctrl_fpu_fpWen = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  r_ctrl_fpu_fmaCmd = _RAND_40[1:0];
  _RAND_41 = {1{`RANDOM}};
  r_ctrl_fpu_div = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  r_ctrl_fpu_sqrt = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  r_ctrl_fpu_fcvt = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  r_ctrl_fpu_typ = _RAND_44[1:0];
  _RAND_45 = {1{`RANDOM}};
  r_ctrl_fpu_fmt = _RAND_45[1:0];
  _RAND_46 = {1{`RANDOM}};
  r_ctrl_fpu_ren3 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  r_ctrl_fpu_rm = _RAND_47[2:0];
  _RAND_48 = {1{`RANDOM}};
  r_psrc_0 = _RAND_48[5:0];
  _RAND_49 = {1{`RANDOM}};
  r_psrc_1 = _RAND_49[5:0];
  _RAND_50 = {1{`RANDOM}};
  r_psrc_2 = _RAND_50[5:0];
  _RAND_51 = {1{`RANDOM}};
  r_pdest = _RAND_51[5:0];
  _RAND_52 = {1{`RANDOM}};
  r_robIdx_flag = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  r_robIdx_value = _RAND_53[4:0];
  _RAND_54 = {1{`RANDOM}};
  r_1_cf_trigger_backendEn_0 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  r_1_cf_trigger_backendEn_1 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  r_1_cf_pd_isRVC = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  r_1_cf_pd_brType = _RAND_57[1:0];
  _RAND_58 = {1{`RANDOM}};
  r_1_cf_pd_isCall = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  r_1_cf_pd_isRet = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  r_1_cf_pred_taken = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  r_1_cf_storeSetHit = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  r_1_cf_loadWaitStrict = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  r_1_cf_ssid = _RAND_63[4:0];
  _RAND_64 = {1{`RANDOM}};
  r_1_cf_ftqPtr_flag = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  r_1_cf_ftqPtr_value = _RAND_65[2:0];
  _RAND_66 = {1{`RANDOM}};
  r_1_cf_ftqOffset = _RAND_66[2:0];
  _RAND_67 = {1{`RANDOM}};
  r_1_ctrl_srcType_0 = _RAND_67[1:0];
  _RAND_68 = {1{`RANDOM}};
  r_1_ctrl_srcType_1 = _RAND_68[1:0];
  _RAND_69 = {1{`RANDOM}};
  r_1_ctrl_srcType_2 = _RAND_69[1:0];
  _RAND_70 = {1{`RANDOM}};
  r_1_ctrl_fuType = _RAND_70[3:0];
  _RAND_71 = {1{`RANDOM}};
  r_1_ctrl_fuOpType = _RAND_71[6:0];
  _RAND_72 = {1{`RANDOM}};
  r_1_ctrl_rfWen = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  r_1_ctrl_fpWen = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  r_1_ctrl_selImm = _RAND_74[3:0];
  _RAND_75 = {1{`RANDOM}};
  r_1_ctrl_imm = _RAND_75[19:0];
  _RAND_76 = {1{`RANDOM}};
  r_1_ctrl_fpu_isAddSub = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  r_1_ctrl_fpu_typeTagIn = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  r_1_ctrl_fpu_typeTagOut = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  r_1_ctrl_fpu_fromInt = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  r_1_ctrl_fpu_wflags = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  r_1_ctrl_fpu_fpWen = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  r_1_ctrl_fpu_fmaCmd = _RAND_82[1:0];
  _RAND_83 = {1{`RANDOM}};
  r_1_ctrl_fpu_div = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  r_1_ctrl_fpu_sqrt = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  r_1_ctrl_fpu_fcvt = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  r_1_ctrl_fpu_typ = _RAND_86[1:0];
  _RAND_87 = {1{`RANDOM}};
  r_1_ctrl_fpu_fmt = _RAND_87[1:0];
  _RAND_88 = {1{`RANDOM}};
  r_1_ctrl_fpu_ren3 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  r_1_ctrl_fpu_rm = _RAND_89[2:0];
  _RAND_90 = {1{`RANDOM}};
  r_1_psrc_0 = _RAND_90[5:0];
  _RAND_91 = {1{`RANDOM}};
  r_1_psrc_1 = _RAND_91[5:0];
  _RAND_92 = {1{`RANDOM}};
  r_1_psrc_2 = _RAND_92[5:0];
  _RAND_93 = {1{`RANDOM}};
  r_1_pdest = _RAND_93[5:0];
  _RAND_94 = {1{`RANDOM}};
  r_1_robIdx_flag = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  r_1_robIdx_value = _RAND_95[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

