module TLDebugModuleInner(
  input          clock,
  input          reset,
  input          auto_sb2tlOpt_out_a_ready,
  output         auto_sb2tlOpt_out_a_valid,
  output [2:0]   auto_sb2tlOpt_out_a_bits_opcode,
  output [35:0]  auto_sb2tlOpt_out_a_bits_address,
  output [31:0]  auto_sb2tlOpt_out_a_bits_mask,
  output [255:0] auto_sb2tlOpt_out_a_bits_data,
  output         auto_sb2tlOpt_out_d_ready,
  input          auto_sb2tlOpt_out_d_valid,
  input          auto_sb2tlOpt_out_d_bits_denied,
  input  [255:0] auto_sb2tlOpt_out_d_bits_data,
  input          auto_sb2tlOpt_out_d_bits_corrupt,
  output         auto_tl_in_a_ready,
  input          auto_tl_in_a_valid,
  input  [2:0]   auto_tl_in_a_bits_opcode,
  input  [1:0]   auto_tl_in_a_bits_size,
  input  [2:0]   auto_tl_in_a_bits_source,
  input  [29:0]  auto_tl_in_a_bits_address,
  input  [7:0]   auto_tl_in_a_bits_mask,
  input  [63:0]  auto_tl_in_a_bits_data,
  input          auto_tl_in_d_ready,
  output         auto_tl_in_d_valid,
  output [2:0]   auto_tl_in_d_bits_opcode,
  output [1:0]   auto_tl_in_d_bits_size,
  output [2:0]   auto_tl_in_d_bits_source,
  output [63:0]  auto_tl_in_d_bits_data,
  output         auto_dmi_in_a_ready,
  input          auto_dmi_in_a_valid,
  input  [2:0]   auto_dmi_in_a_bits_opcode,
  input  [1:0]   auto_dmi_in_a_bits_size,
  input          auto_dmi_in_a_bits_source,
  input  [8:0]   auto_dmi_in_a_bits_address,
  input  [3:0]   auto_dmi_in_a_bits_mask,
  input  [31:0]  auto_dmi_in_a_bits_data,
  input          auto_dmi_in_d_ready,
  output         auto_dmi_in_d_valid,
  output [2:0]   auto_dmi_in_d_bits_opcode,
  output [1:0]   auto_dmi_in_d_bits_size,
  output         auto_dmi_in_d_bits_source,
  output [31:0]  auto_dmi_in_d_bits_data,
  input          io_dmactive,
  output         io_innerCtrl_ready,
  input          io_innerCtrl_valid,
  input          io_innerCtrl_bits_resumereq,
  input  [9:0]   io_innerCtrl_bits_hartsel,
  input          io_innerCtrl_bits_ackhavereset,
  input          io_innerCtrl_bits_hrmask_0,
  output         io_hgDebugInt_0,
  input          io_hartIsInReset_0,
  input          io_tl_clock,
  input          io_tl_reset
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
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
`endif // RANDOMIZE_REG_INIT
  wire  sb2tlOpt_clock; // @[Debug.scala 720:52]
  wire  sb2tlOpt_reset; // @[Debug.scala 720:52]
  wire  sb2tlOpt_auto_out_a_ready; // @[Debug.scala 720:52]
  wire  sb2tlOpt_auto_out_a_valid; // @[Debug.scala 720:52]
  wire [2:0] sb2tlOpt_auto_out_a_bits_opcode; // @[Debug.scala 720:52]
  wire [35:0] sb2tlOpt_auto_out_a_bits_address; // @[Debug.scala 720:52]
  wire [31:0] sb2tlOpt_auto_out_a_bits_mask; // @[Debug.scala 720:52]
  wire [255:0] sb2tlOpt_auto_out_a_bits_data; // @[Debug.scala 720:52]
  wire  sb2tlOpt_auto_out_d_ready; // @[Debug.scala 720:52]
  wire  sb2tlOpt_auto_out_d_valid; // @[Debug.scala 720:52]
  wire  sb2tlOpt_auto_out_d_bits_denied; // @[Debug.scala 720:52]
  wire [255:0] sb2tlOpt_auto_out_d_bits_data; // @[Debug.scala 720:52]
  wire  sb2tlOpt_auto_out_d_bits_corrupt; // @[Debug.scala 720:52]
  wire  sb2tlOpt_io_rdEn; // @[Debug.scala 720:52]
  wire  sb2tlOpt_io_wrEn; // @[Debug.scala 720:52]
  wire [127:0] sb2tlOpt_io_addrIn; // @[Debug.scala 720:52]
  wire [127:0] sb2tlOpt_io_dataIn; // @[Debug.scala 720:52]
  wire [2:0] sb2tlOpt_io_sizeIn; // @[Debug.scala 720:52]
  wire  sb2tlOpt_io_rdLegal; // @[Debug.scala 720:52]
  wire  sb2tlOpt_io_wrLegal; // @[Debug.scala 720:52]
  wire  sb2tlOpt_io_rdDone; // @[Debug.scala 720:52]
  wire  sb2tlOpt_io_wrDone; // @[Debug.scala 720:52]
  wire  sb2tlOpt_io_respError; // @[Debug.scala 720:52]
  wire [7:0] sb2tlOpt_io_dataOut; // @[Debug.scala 720:52]
  wire  sb2tlOpt_io_rdLoad_0; // @[Debug.scala 720:52]
  wire  sb2tlOpt_io_rdLoad_1; // @[Debug.scala 720:52]
  wire  sb2tlOpt_io_rdLoad_2; // @[Debug.scala 720:52]
  wire  sb2tlOpt_io_rdLoad_3; // @[Debug.scala 720:52]
  wire  sb2tlOpt_io_rdLoad_4; // @[Debug.scala 720:52]
  wire  sb2tlOpt_io_rdLoad_5; // @[Debug.scala 720:52]
  wire  sb2tlOpt_io_rdLoad_6; // @[Debug.scala 720:52]
  wire  sb2tlOpt_io_rdLoad_7; // @[Debug.scala 720:52]
  wire [2:0] sb2tlOpt_io_sbStateOut; // @[Debug.scala 720:52]
  wire  hartIsInResetSync_0_debug_hartReset_0_clock; // @[ShiftReg.scala 45:23]
  wire  hartIsInResetSync_0_debug_hartReset_0_reset; // @[ShiftReg.scala 45:23]
  wire  hartIsInResetSync_0_debug_hartReset_0_io_d; // @[ShiftReg.scala 45:23]
  wire  hartIsInResetSync_0_debug_hartReset_0_io_q; // @[ShiftReg.scala 45:23]
  reg  haltedBitRegs; // @[Debug.scala 777:31]
  reg  resumeReqRegs; // @[Debug.scala 778:31]
  reg  haveResetBitRegs; // @[Debug.scala 779:31]
  wire  hamaskWrSel_0 = io_innerCtrl_bits_hartsel == 10'h0; // @[Debug.scala 841:61]
  reg  hrmaskReg_0; // @[Debug.scala 853:29]
  wire  _T_1 = ~io_dmactive; // @[Debug.scala 860:11]
  wire  _T_4 = io_innerCtrl_ready & io_innerCtrl_valid; // @[Decoupled.scala 50:35]
  reg  hrDebugIntReg_0; // @[Debug.scala 867:34]
  wire  _T_10 = ~haltedBitRegs; // @[package.scala 70:38]
  wire  _T_11 = hrDebugIntReg_0 & _T_10; // @[package.scala 65:72]
  wire  hartIsInResetSync_0 = hartIsInResetSync_0_debug_hartReset_0_io_q; // @[ShiftReg.scala 48:{24,24}]
  wire  _T_12 = hartIsInResetSync_0 | _T_11; // @[package.scala 66:75]
  wire  _T_13 = hrmaskReg_0 & _T_12; // @[package.scala 65:72]
  wire  resumereq = _T_4 & io_innerCtrl_bits_resumereq; // @[Debug.scala 889:41]
  wire  _resumeAcks_T_1 = ~hamaskWrSel_0; // @[Debug.scala 1234:41]
  wire  resumeAcks = resumereq ? ~resumeReqRegs & ~hamaskWrSel_0 : ~resumeReqRegs; // @[Debug.scala 1233:24 1234:20 1236:20]
  wire [31:0] haltedStatus_0 = {{31'd0}, haltedBitRegs}; // @[Debug.scala 1062:30]
  wire  haltedSummary = |haltedStatus_0; // @[Debug.scala 1072:48]
  wire [31:0] HALTSUM1RdData_haltsum1 = {{31'd0}, haltedSummary};
  reg [2:0] ABSTRACTCSReg_cmderr; // @[Debug.scala 1086:34]
  wire  in_bits_read = auto_dmi_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 71:36]
  wire [6:0] in_bits_index = auto_dmi_in_a_bits_address[8:2]; // @[Edges.scala 191:34]
  wire [5:0] out_iindex = {in_bits_index[5],in_bits_index[4],in_bits_index[3],in_bits_index[2],in_bits_index[1],
    in_bits_index[0]}; // @[Cat.scala 31:58]
  wire [6:0] out_findex = in_bits_index & 7'h40; // @[RegisterRouter.scala 82:24]
  wire  _out_T_14 = out_findex == 7'h0; // @[RegisterRouter.scala 82:24]
  wire  _out_T_30 = out_findex == 7'h40; // @[RegisterRouter.scala 82:24]
  wire [63:0] _out_backSel_T = 64'h1 << out_iindex; // @[OneHot.scala 57:35]
  wire  out_backSel_22 = _out_backSel_T[22]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__83 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_22 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire [7:0] _out_backMask_T_11 = auto_dmi_in_a_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_9 = auto_dmi_in_a_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_7 = auto_dmi_in_a_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_5 = auto_dmi_in_a_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [31:0] out_backMask = {_out_backMask_T_11,_out_backMask_T_9,_out_backMask_T_7,_out_backMask_T_5}; // @[Cat.scala 31:58]
  wire  out_womask_83 = &out_backMask[10:8]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_83 = out_woready__83 & out_womask_83; // @[RegisterRouter.scala 82:24]
  reg [1:0] ctrlStateReg; // @[Debug.scala 1615:27]
  wire  ABSTRACTCSWrEnLegal = ctrlStateReg == 2'h0; // @[Debug.scala 1625:44]
  wire  ABSTRACTCSWrEn = out_f_woready_83 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1094:51]
  wire [2:0] ABSTRACTCSWrData_cmderr = auto_dmi_in_a_bits_data[10:8]; // @[RegisterRouter.scala 82:24]
  wire [2:0] _ABSTRACTCSReg_cmderr_T = ~ABSTRACTCSWrData_cmderr; // @[Debug.scala 1114:58]
  wire [2:0] _ABSTRACTCSReg_cmderr_T_1 = ABSTRACTCSReg_cmderr & _ABSTRACTCSReg_cmderr_T; // @[Debug.scala 1114:56]
  wire [2:0] _GEN_37 = ABSTRACTCSWrEn ? _ABSTRACTCSReg_cmderr_T_1 : ABSTRACTCSReg_cmderr; // @[Debug.scala 1113:30 1114:32 1086:34]
  reg [7:0] COMMANDRdData_cmdtype; // @[Debug.scala 1171:25]
  wire  commandRegIsAccessRegister = COMMANDRdData_cmdtype == 8'h0; // @[Debug.scala 1640:58]
  reg [23:0] COMMANDRdData_control; // @[Debug.scala 1171:25]
  wire [31:0] _accessRegisterCommandReg_T = {COMMANDRdData_cmdtype,COMMANDRdData_control}; // @[Debug.scala 1416:62]
  wire  accessRegisterCommandReg_transfer = _accessRegisterCommandReg_T[17]; // @[Debug.scala 1416:73]
  wire  accessRegisterCommandReg_write = _accessRegisterCommandReg_T[16]; // @[Debug.scala 1416:73]
  wire [15:0] accessRegisterCommandReg_regno = _accessRegisterCommandReg_T[15:0]; // @[Debug.scala 1416:73]
  wire [2:0] accessRegisterCommandReg_size = _accessRegisterCommandReg_T[22:20]; // @[Debug.scala 1416:73]
  wire  accessRegIsLegalSize = accessRegisterCommandReg_size == 3'h2 | accessRegisterCommandReg_size == 3'h3; // @[Debug.scala 1648:72]
  wire  accessRegIsGPR = accessRegisterCommandReg_regno >= 16'h1000 & accessRegisterCommandReg_regno <= 16'h101f &
    accessRegIsLegalSize; // @[Debug.scala 1649:117]
  wire  _GEN_2270 = ~accessRegisterCommandReg_transfer | accessRegIsGPR ? 1'h0 : 1'h1; // @[Debug.scala 1659:73 1660:33]
  wire  commandRegIsUnsupported = commandRegIsAccessRegister ? _GEN_2270 : 1'h1; // @[Debug.scala 1656:39]
  wire  _GEN_2271 = (~accessRegisterCommandReg_transfer | accessRegIsGPR) & _T_10; // @[Debug.scala 1659:73 1661:33]
  wire  commandRegBadHaltResume = commandRegIsAccessRegister & _GEN_2271; // @[Debug.scala 1656:39]
  wire  _GEN_2287 = commandRegIsUnsupported ? 1'h0 : commandRegBadHaltResume; // @[Debug.scala 1687:38]
  wire  _GEN_2300 = ctrlStateReg == 2'h1 & _GEN_2287; // @[Debug.scala 1680:59]
  wire  errorHaltResume = ABSTRACTCSWrEnLegal ? 1'h0 : _GEN_2300; // @[Debug.scala 1672:47]
  wire [2:0] _GEN_38 = errorHaltResume ? 3'h4 : _GEN_37; // @[Debug.scala 1110:36 1111:30]
  wire  out_backSel_23 = _out_backSel_T[23]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__108 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_23 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_womask_108 = &out_backMask; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_108 = out_woready__108 & out_womask_108; // @[RegisterRouter.scala 82:24]
  wire  COMMANDWrEn = out_f_woready_108 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1179:40]
  wire [31:0] COMMANDWrDataVal = out_f_woready_108 ? auto_dmi_in_a_bits_data : 32'h0; // @[Debug.scala 264:{24,30}]
  wire [7:0] COMMANDWrData_cmdtype = COMMANDWrDataVal[31:24]; // @[Debug.scala 1174:65]
  wire  commandWrIsAccessRegister = COMMANDWrData_cmdtype == 8'h0; // @[Debug.scala 1639:60]
  wire  _wrAccessRegisterCommand_T_1 = ABSTRACTCSReg_cmderr == 3'h0; // @[Debug.scala 1665:103]
  wire  wrAccessRegisterCommand = COMMANDWrEn & commandWrIsAccessRegister & ABSTRACTCSReg_cmderr == 3'h0; // @[Debug.scala 1665:78]
  wire  out_backSel_4 = _out_backSel_T[4]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__115 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_4 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_womask_115 = &out_backMask[7:0]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_115 = out_woready__115 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__115 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_4 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_romask_115 = |out_backMask[7:0]; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_115 = out_roready__115 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiAbstractDataAccessVec_0 = out_f_woready_115 | out_f_roready_115; // @[Debug.scala 1152:105]
  reg [11:0] ABSTRACTAUTOReg_autoexecdata; // @[Debug.scala 1130:36]
  wire  autoexecData_0 = dmiAbstractDataAccessVec_0 & ABSTRACTAUTOReg_autoexecdata[0]; // @[Debug.scala 1163:140]
  wire  out_backSel_5 = _out_backSel_T[5]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__0 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_5 & out_findex == 7'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready = out_woready__0 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__0 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_5 & out_findex == 7'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready = out_roready__0 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiAbstractDataAccessVec_4 = out_f_woready | out_f_roready; // @[Debug.scala 1152:105]
  wire  autoexecData_1 = dmiAbstractDataAccessVec_4 & ABSTRACTAUTOReg_autoexecdata[1]; // @[Debug.scala 1163:140]
  wire  out_backSel_32 = _out_backSel_T[32]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__49 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_32 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_49 = out_woready__49 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__49 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_32 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_49 = out_roready__49 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_0 = out_f_woready_49 | out_f_roready_49; // @[Debug.scala 1155:108]
  reg [15:0] ABSTRACTAUTOReg_autoexecprogbuf; // @[Debug.scala 1130:36]
  wire  autoexecProg_0 = dmiProgramBufferAccessVec_0 & ABSTRACTAUTOReg_autoexecprogbuf[0]; // @[Debug.scala 1164:144]
  wire  out_backSel_33 = _out_backSel_T[33]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__41 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_33 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_41 = out_woready__41 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__41 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_33 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_41 = out_roready__41 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_4 = out_f_woready_41 | out_f_roready_41; // @[Debug.scala 1155:108]
  wire  autoexecProg_1 = dmiProgramBufferAccessVec_4 & ABSTRACTAUTOReg_autoexecprogbuf[1]; // @[Debug.scala 1164:144]
  wire  out_backSel_34 = _out_backSel_T[34]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__53 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_34 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_53 = out_woready__53 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__53 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_34 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_53 = out_roready__53 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_8 = out_f_woready_53 | out_f_roready_53; // @[Debug.scala 1155:108]
  wire  autoexecProg_2 = dmiProgramBufferAccessVec_8 & ABSTRACTAUTOReg_autoexecprogbuf[2]; // @[Debug.scala 1164:144]
  wire  out_backSel_35 = _out_backSel_T[35]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__96 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_35 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_96 = out_woready__96 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__96 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_35 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_96 = out_roready__96 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_12 = out_f_woready_96 | out_f_roready_96; // @[Debug.scala 1155:108]
  wire  autoexecProg_3 = dmiProgramBufferAccessVec_12 & ABSTRACTAUTOReg_autoexecprogbuf[3]; // @[Debug.scala 1164:144]
  wire  out_backSel_36 = _out_backSel_T[36]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__110 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_36 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_110 = out_woready__110 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__110 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_36 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_110 = out_roready__110 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_16 = out_f_woready_110 | out_f_roready_110; // @[Debug.scala 1155:108]
  wire  autoexecProg_4 = dmiProgramBufferAccessVec_16 & ABSTRACTAUTOReg_autoexecprogbuf[4]; // @[Debug.scala 1164:144]
  wire  out_backSel_37 = _out_backSel_T[37]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__26 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_37 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_26 = out_woready__26 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__26 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_37 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_26 = out_roready__26 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_20 = out_f_woready_26 | out_f_roready_26; // @[Debug.scala 1155:108]
  wire  autoexecProg_5 = dmiProgramBufferAccessVec_20 & ABSTRACTAUTOReg_autoexecprogbuf[5]; // @[Debug.scala 1164:144]
  wire  out_backSel_38 = _out_backSel_T[38]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__37 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_38 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_37 = out_woready__37 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__37 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_38 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_37 = out_roready__37 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_24 = out_f_woready_37 | out_f_roready_37; // @[Debug.scala 1155:108]
  wire  autoexecProg_6 = dmiProgramBufferAccessVec_24 & ABSTRACTAUTOReg_autoexecprogbuf[6]; // @[Debug.scala 1164:144]
  wire  out_backSel_39 = _out_backSel_T[39]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__92 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_39 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_92 = out_woready__92 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__92 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_39 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_92 = out_roready__92 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_28 = out_f_woready_92 | out_f_roready_92; // @[Debug.scala 1155:108]
  wire  autoexecProg_7 = dmiProgramBufferAccessVec_28 & ABSTRACTAUTOReg_autoexecprogbuf[7]; // @[Debug.scala 1164:144]
  wire  out_backSel_40 = _out_backSel_T[40]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__104 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_40 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_104 = out_woready__104 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__104 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_40 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_104 = out_roready__104 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_32 = out_f_woready_104 | out_f_roready_104; // @[Debug.scala 1155:108]
  wire  autoexecProg_8 = dmiProgramBufferAccessVec_32 & ABSTRACTAUTOReg_autoexecprogbuf[8]; // @[Debug.scala 1164:144]
  wire  out_backSel_41 = _out_backSel_T[41]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__45 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_41 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_45 = out_woready__45 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__45 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_41 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_45 = out_roready__45 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_36 = out_f_woready_45 | out_f_roready_45; // @[Debug.scala 1155:108]
  wire  autoexecProg_9 = dmiProgramBufferAccessVec_36 & ABSTRACTAUTOReg_autoexecprogbuf[9]; // @[Debug.scala 1164:144]
  wire  out_backSel_42 = _out_backSel_T[42]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__19 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_42 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_19 = out_woready__19 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__19 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_42 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_19 = out_roready__19 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_40 = out_f_woready_19 | out_f_roready_19; // @[Debug.scala 1155:108]
  wire  autoexecProg_10 = dmiProgramBufferAccessVec_40 & ABSTRACTAUTOReg_autoexecprogbuf[10]; // @[Debug.scala 1164:144]
  wire  out_backSel_43 = _out_backSel_T[43]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__100 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_43 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_100 = out_woready__100 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__100 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_43 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_100 = out_roready__100 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_44 = out_f_woready_100 | out_f_roready_100; // @[Debug.scala 1155:108]
  wire  autoexecProg_11 = dmiProgramBufferAccessVec_44 & ABSTRACTAUTOReg_autoexecprogbuf[11]; // @[Debug.scala 1164:144]
  wire  out_backSel_44 = _out_backSel_T[44]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__88 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_44 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_88 = out_woready__88 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__88 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_44 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_88 = out_roready__88 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_48 = out_f_woready_88 | out_f_roready_88; // @[Debug.scala 1155:108]
  wire  autoexecProg_12 = dmiProgramBufferAccessVec_48 & ABSTRACTAUTOReg_autoexecprogbuf[12]; // @[Debug.scala 1164:144]
  wire  out_backSel_45 = _out_backSel_T[45]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__57 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_45 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_57 = out_woready__57 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__57 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_45 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_57 = out_roready__57 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_52 = out_f_woready_57 | out_f_roready_57; // @[Debug.scala 1155:108]
  wire  autoexecProg_13 = dmiProgramBufferAccessVec_52 & ABSTRACTAUTOReg_autoexecprogbuf[13]; // @[Debug.scala 1164:144]
  wire  out_backSel_46 = _out_backSel_T[46]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__30 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_46 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_30 = out_woready__30 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__30 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_46 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_30 = out_roready__30 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_56 = out_f_woready_30 | out_f_roready_30; // @[Debug.scala 1155:108]
  wire  autoexecProg_14 = dmiProgramBufferAccessVec_56 & ABSTRACTAUTOReg_autoexecprogbuf[14]; // @[Debug.scala 1164:144]
  wire  out_backSel_47 = _out_backSel_T[47]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__119 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_47 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_119 = out_woready__119 & out_womask_115; // @[RegisterRouter.scala 82:24]
  wire  out_roready__119 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_47 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_119 = out_roready__119 & out_romask_115; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_60 = out_f_woready_119 | out_f_roready_119; // @[Debug.scala 1155:108]
  wire  autoexecProg_15 = dmiProgramBufferAccessVec_60 & ABSTRACTAUTOReg_autoexecprogbuf[15]; // @[Debug.scala 1164:144]
  wire  autoexec = autoexecData_0 | autoexecData_1 | (autoexecProg_0 | autoexecProg_1 | autoexecProg_2 | autoexecProg_3
     | autoexecProg_4 | autoexecProg_5 | autoexecProg_6 | autoexecProg_7 | autoexecProg_8 | autoexecProg_9 |
    autoexecProg_10 | autoexecProg_11 | autoexecProg_12 | autoexecProg_13 | autoexecProg_14 | autoexecProg_15); // @[Debug.scala 1166:48]
  wire  regAccessRegisterCommand = autoexec & commandRegIsAccessRegister & _wrAccessRegisterCommand_T_1; // @[Debug.scala 1666:78]
  wire  commandWrIsUnsupported = COMMANDWrEn & ~commandWrIsAccessRegister; // @[Debug.scala 1642:46]
  wire  _T_1477 = autoexec & commandRegIsUnsupported; // @[Debug.scala 1677:28]
  wire  _GEN_2277 = commandWrIsUnsupported | _T_1477; // @[Debug.scala 1675:43 1676:26]
  wire  _GEN_2279 = wrAccessRegisterCommand | regAccessRegisterCommand ? 1'h0 : _GEN_2277; // @[Debug.scala 1673:66]
  wire  _GEN_2298 = ctrlStateReg == 2'h1 & commandRegIsUnsupported; // @[Debug.scala 1680:59]
  wire  errorUnsupported = ABSTRACTCSWrEnLegal ? _GEN_2279 : _GEN_2298; // @[Debug.scala 1672:47]
  wire  in_1_bits_read = auto_tl_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 71:36]
  wire [8:0] in_1_bits_index = auto_tl_in_a_bits_address[11:3]; // @[RegisterRouter.scala 70:18 72:19]
  wire [7:0] out_iindex_1 = {in_1_bits_index[7],in_1_bits_index[6],in_1_bits_index[5],in_1_bits_index[4],in_1_bits_index
    [3],in_1_bits_index[2],in_1_bits_index[1],in_1_bits_index[0]}; // @[Cat.scala 31:58]
  wire [8:0] out_findex_1 = in_1_bits_index & 9'h100; // @[RegisterRouter.scala 82:24]
  wire  _out_T_1549 = out_findex_1 == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  _out_T_1625 = out_findex_1 == 9'h100; // @[RegisterRouter.scala 82:24]
  wire [255:0] _out_backSel_T_1 = 256'h1 << out_iindex_1; // @[OneHot.scala 57:35]
  wire  out_backSel_33_1 = _out_backSel_T_1[33]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_1_348 = auto_tl_in_a_valid & auto_tl_in_d_ready & ~in_1_bits_read & out_backSel_33_1 & out_findex_1
     == 9'h0; // @[RegisterRouter.scala 82:24]
  wire [7:0] _out_backMask_T_35 = auto_tl_in_a_bits_mask[7] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_33 = auto_tl_in_a_bits_mask[6] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_31 = auto_tl_in_a_bits_mask[5] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_29 = auto_tl_in_a_bits_mask[4] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_27 = auto_tl_in_a_bits_mask[3] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_25 = auto_tl_in_a_bits_mask[2] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_23 = auto_tl_in_a_bits_mask[1] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [7:0] _out_backMask_T_21 = auto_tl_in_a_bits_mask[0] ? 8'hff : 8'h0; // @[Bitwise.scala 74:12]
  wire [63:0] out_backMask_1 = {_out_backMask_T_35,_out_backMask_T_33,_out_backMask_T_31,_out_backMask_T_29,
    _out_backMask_T_27,_out_backMask_T_25,_out_backMask_T_23,_out_backMask_T_21}; // @[Cat.scala 31:58]
  wire  out_womask_471 = &out_backMask_1[41:32]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_471 = out_woready_1_348 & out_womask_471; // @[RegisterRouter.scala 82:24]
  wire  _GEN_2296 = ctrlStateReg == 2'h2 & out_f_woready_471; // @[Debug.scala 1701:51]
  wire  _GEN_2302 = ctrlStateReg == 2'h1 ? 1'h0 : _GEN_2296; // @[Debug.scala 1680:59]
  wire  errorException = ABSTRACTCSWrEnLegal ? 1'h0 : _GEN_2302; // @[Debug.scala 1672:47]
  wire  _errorBusy_T = ~ABSTRACTCSWrEnLegal; // @[Debug.scala 1631:45]
  wire  out_backSel_24 = _out_backSel_T[24]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__23 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_24 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_womask_23 = &out_backMask[1:0]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_23 = out_woready__23 & out_womask_23; // @[RegisterRouter.scala 82:24]
  wire  _errorBusy_T_3 = out_f_woready_23 & _errorBusy_T; // @[Debug.scala 1632:42]
  wire  _errorBusy_T_4 = out_f_woready_83 & ~ABSTRACTCSWrEnLegal | _errorBusy_T_3; // @[Debug.scala 1631:74]
  wire  out_womask_25 = &out_backMask[31:16]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_25 = out_woready__23 & out_womask_25; // @[RegisterRouter.scala 82:24]
  wire  _errorBusy_T_6 = out_f_woready_25 & _errorBusy_T; // @[Debug.scala 1633:44]
  wire  _errorBusy_T_7 = _errorBusy_T_4 | _errorBusy_T_6; // @[Debug.scala 1632:74]
  wire  _errorBusy_T_9 = out_f_woready_108 & _errorBusy_T; // @[Debug.scala 1634:42]
  wire  _errorBusy_T_10 = _errorBusy_T_7 | _errorBusy_T_9; // @[Debug.scala 1633:74]
  wire  out_womask_116 = &out_backMask[15:8]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_116 = out_woready__115 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_romask_116 = |out_backMask[15:8]; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_116 = out_roready__115 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiAbstractDataAccessVec_1 = out_f_woready_116 | out_f_roready_116; // @[Debug.scala 1152:105]
  wire  out_womask_117 = &out_backMask[23:16]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_117 = out_woready__115 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_romask_117 = |out_backMask[23:16]; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_117 = out_roready__115 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiAbstractDataAccessVec_2 = out_f_woready_117 | out_f_roready_117; // @[Debug.scala 1152:105]
  wire  out_womask_118 = &out_backMask[31:24]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_118 = out_woready__115 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_romask_118 = |out_backMask[31:24]; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_118 = out_roready__115 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiAbstractDataAccessVec_3 = out_f_woready_118 | out_f_roready_118; // @[Debug.scala 1152:105]
  wire  out_f_woready_1 = out_woready__0 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_1 = out_roready__0 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiAbstractDataAccessVec_5 = out_f_woready_1 | out_f_roready_1; // @[Debug.scala 1152:105]
  wire  out_f_woready_2 = out_woready__0 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_2 = out_roready__0 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiAbstractDataAccessVec_6 = out_f_woready_2 | out_f_roready_2; // @[Debug.scala 1152:105]
  wire  out_f_woready_3 = out_woready__0 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_3 = out_roready__0 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiAbstractDataAccessVec_7 = out_f_woready_3 | out_f_roready_3; // @[Debug.scala 1152:105]
  wire  dmiAbstractDataAccess = dmiAbstractDataAccessVec_0 | dmiAbstractDataAccessVec_1 | dmiAbstractDataAccessVec_2 |
    dmiAbstractDataAccessVec_3 | dmiAbstractDataAccessVec_4 | dmiAbstractDataAccessVec_5 | dmiAbstractDataAccessVec_6 |
    dmiAbstractDataAccessVec_7; // @[Debug.scala 1157:68]
  wire  _errorBusy_T_12 = dmiAbstractDataAccess & _errorBusy_T; // @[Debug.scala 1635:42]
  wire  _errorBusy_T_13 = _errorBusy_T_10 | _errorBusy_T_12; // @[Debug.scala 1634:74]
  wire  out_f_woready_50 = out_woready__49 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_50 = out_roready__49 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_1 = out_f_woready_50 | out_f_roready_50; // @[Debug.scala 1155:108]
  wire  out_f_woready_51 = out_woready__49 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_51 = out_roready__49 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_2 = out_f_woready_51 | out_f_roready_51; // @[Debug.scala 1155:108]
  wire  out_f_woready_52 = out_woready__49 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_52 = out_roready__49 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_3 = out_f_woready_52 | out_f_roready_52; // @[Debug.scala 1155:108]
  wire  out_f_woready_42 = out_woready__41 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_42 = out_roready__41 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_5 = out_f_woready_42 | out_f_roready_42; // @[Debug.scala 1155:108]
  wire  out_f_woready_43 = out_woready__41 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_43 = out_roready__41 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_6 = out_f_woready_43 | out_f_roready_43; // @[Debug.scala 1155:108]
  wire  out_f_woready_44 = out_woready__41 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_44 = out_roready__41 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_7 = out_f_woready_44 | out_f_roready_44; // @[Debug.scala 1155:108]
  wire  out_f_woready_54 = out_woready__53 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_54 = out_roready__53 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_9 = out_f_woready_54 | out_f_roready_54; // @[Debug.scala 1155:108]
  wire  out_f_woready_55 = out_woready__53 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_55 = out_roready__53 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_10 = out_f_woready_55 | out_f_roready_55; // @[Debug.scala 1155:108]
  wire  out_f_woready_56 = out_woready__53 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_56 = out_roready__53 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_11 = out_f_woready_56 | out_f_roready_56; // @[Debug.scala 1155:108]
  wire  out_f_woready_97 = out_woready__96 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_97 = out_roready__96 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_13 = out_f_woready_97 | out_f_roready_97; // @[Debug.scala 1155:108]
  wire  out_f_woready_98 = out_woready__96 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_98 = out_roready__96 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_14 = out_f_woready_98 | out_f_roready_98; // @[Debug.scala 1155:108]
  wire  out_f_woready_99 = out_woready__96 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_99 = out_roready__96 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_15 = out_f_woready_99 | out_f_roready_99; // @[Debug.scala 1155:108]
  wire  out_f_woready_111 = out_woready__110 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_111 = out_roready__110 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_17 = out_f_woready_111 | out_f_roready_111; // @[Debug.scala 1155:108]
  wire  out_f_woready_112 = out_woready__110 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_112 = out_roready__110 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_18 = out_f_woready_112 | out_f_roready_112; // @[Debug.scala 1155:108]
  wire  out_f_woready_113 = out_woready__110 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_113 = out_roready__110 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_19 = out_f_woready_113 | out_f_roready_113; // @[Debug.scala 1155:108]
  wire  out_f_woready_27 = out_woready__26 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_27 = out_roready__26 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_21 = out_f_woready_27 | out_f_roready_27; // @[Debug.scala 1155:108]
  wire  out_f_woready_28 = out_woready__26 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_28 = out_roready__26 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_22 = out_f_woready_28 | out_f_roready_28; // @[Debug.scala 1155:108]
  wire  out_f_woready_29 = out_woready__26 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_29 = out_roready__26 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_23 = out_f_woready_29 | out_f_roready_29; // @[Debug.scala 1155:108]
  wire  out_f_woready_38 = out_woready__37 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_38 = out_roready__37 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_25 = out_f_woready_38 | out_f_roready_38; // @[Debug.scala 1155:108]
  wire  out_f_woready_39 = out_woready__37 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_39 = out_roready__37 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_26 = out_f_woready_39 | out_f_roready_39; // @[Debug.scala 1155:108]
  wire  out_f_woready_40 = out_woready__37 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_40 = out_roready__37 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_27 = out_f_woready_40 | out_f_roready_40; // @[Debug.scala 1155:108]
  wire  out_f_woready_93 = out_woready__92 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_93 = out_roready__92 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_29 = out_f_woready_93 | out_f_roready_93; // @[Debug.scala 1155:108]
  wire  out_f_woready_94 = out_woready__92 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_94 = out_roready__92 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_30 = out_f_woready_94 | out_f_roready_94; // @[Debug.scala 1155:108]
  wire  _dmiProgramBufferAccess_T_29 = dmiProgramBufferAccessVec_0 | dmiProgramBufferAccessVec_1 |
    dmiProgramBufferAccessVec_2 | dmiProgramBufferAccessVec_3 | dmiProgramBufferAccessVec_4 |
    dmiProgramBufferAccessVec_5 | dmiProgramBufferAccessVec_6 | dmiProgramBufferAccessVec_7 |
    dmiProgramBufferAccessVec_8 | dmiProgramBufferAccessVec_9 | dmiProgramBufferAccessVec_10 |
    dmiProgramBufferAccessVec_11 | dmiProgramBufferAccessVec_12 | dmiProgramBufferAccessVec_13 |
    dmiProgramBufferAccessVec_14 | dmiProgramBufferAccessVec_15 | dmiProgramBufferAccessVec_16 |
    dmiProgramBufferAccessVec_17 | dmiProgramBufferAccessVec_18 | dmiProgramBufferAccessVec_19 |
    dmiProgramBufferAccessVec_20 | dmiProgramBufferAccessVec_21 | dmiProgramBufferAccessVec_22 |
    dmiProgramBufferAccessVec_23 | dmiProgramBufferAccessVec_24 | dmiProgramBufferAccessVec_25 |
    dmiProgramBufferAccessVec_26 | dmiProgramBufferAccessVec_27 | dmiProgramBufferAccessVec_28 |
    dmiProgramBufferAccessVec_29 | dmiProgramBufferAccessVec_30; // @[Debug.scala 1158:69]
  wire  out_f_woready_95 = out_woready__92 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_95 = out_roready__92 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_31 = out_f_woready_95 | out_f_roready_95; // @[Debug.scala 1155:108]
  wire  out_f_woready_105 = out_woready__104 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_105 = out_roready__104 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_33 = out_f_woready_105 | out_f_roready_105; // @[Debug.scala 1155:108]
  wire  out_f_woready_106 = out_woready__104 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_106 = out_roready__104 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_34 = out_f_woready_106 | out_f_roready_106; // @[Debug.scala 1155:108]
  wire  out_f_woready_107 = out_woready__104 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_107 = out_roready__104 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_35 = out_f_woready_107 | out_f_roready_107; // @[Debug.scala 1155:108]
  wire  out_f_woready_46 = out_woready__45 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_46 = out_roready__45 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_37 = out_f_woready_46 | out_f_roready_46; // @[Debug.scala 1155:108]
  wire  out_f_woready_47 = out_woready__45 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_47 = out_roready__45 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_38 = out_f_woready_47 | out_f_roready_47; // @[Debug.scala 1155:108]
  wire  out_f_woready_48 = out_woready__45 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_48 = out_roready__45 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_39 = out_f_woready_48 | out_f_roready_48; // @[Debug.scala 1155:108]
  wire  out_f_woready_20 = out_woready__19 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_20 = out_roready__19 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_41 = out_f_woready_20 | out_f_roready_20; // @[Debug.scala 1155:108]
  wire  out_f_woready_21 = out_woready__19 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_21 = out_roready__19 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_42 = out_f_woready_21 | out_f_roready_21; // @[Debug.scala 1155:108]
  wire  out_f_woready_22 = out_woready__19 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_22 = out_roready__19 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_43 = out_f_woready_22 | out_f_roready_22; // @[Debug.scala 1155:108]
  wire  out_f_woready_101 = out_woready__100 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_101 = out_roready__100 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_45 = out_f_woready_101 | out_f_roready_101; // @[Debug.scala 1155:108]
  wire  out_f_woready_102 = out_woready__100 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_102 = out_roready__100 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_46 = out_f_woready_102 | out_f_roready_102; // @[Debug.scala 1155:108]
  wire  out_f_woready_103 = out_woready__100 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_103 = out_roready__100 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_47 = out_f_woready_103 | out_f_roready_103; // @[Debug.scala 1155:108]
  wire  out_f_woready_89 = out_woready__88 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_89 = out_roready__88 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_49 = out_f_woready_89 | out_f_roready_89; // @[Debug.scala 1155:108]
  wire  out_f_woready_90 = out_woready__88 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_90 = out_roready__88 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_50 = out_f_woready_90 | out_f_roready_90; // @[Debug.scala 1155:108]
  wire  out_f_woready_91 = out_woready__88 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_91 = out_roready__88 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_51 = out_f_woready_91 | out_f_roready_91; // @[Debug.scala 1155:108]
  wire  out_f_woready_58 = out_woready__57 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_58 = out_roready__57 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_53 = out_f_woready_58 | out_f_roready_58; // @[Debug.scala 1155:108]
  wire  out_f_woready_59 = out_woready__57 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_59 = out_roready__57 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_54 = out_f_woready_59 | out_f_roready_59; // @[Debug.scala 1155:108]
  wire  out_f_woready_60 = out_woready__57 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_60 = out_roready__57 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_55 = out_f_woready_60 | out_f_roready_60; // @[Debug.scala 1155:108]
  wire  out_f_woready_31 = out_woready__30 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_31 = out_roready__30 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_57 = out_f_woready_31 | out_f_roready_31; // @[Debug.scala 1155:108]
  wire  out_f_woready_32 = out_woready__30 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_32 = out_roready__30 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_58 = out_f_woready_32 | out_f_roready_32; // @[Debug.scala 1155:108]
  wire  out_f_woready_33 = out_woready__30 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_33 = out_roready__30 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_59 = out_f_woready_33 | out_f_roready_33; // @[Debug.scala 1155:108]
  wire  _dmiProgramBufferAccess_T_59 = _dmiProgramBufferAccess_T_29 | dmiProgramBufferAccessVec_31 |
    dmiProgramBufferAccessVec_32 | dmiProgramBufferAccessVec_33 | dmiProgramBufferAccessVec_34 |
    dmiProgramBufferAccessVec_35 | dmiProgramBufferAccessVec_36 | dmiProgramBufferAccessVec_37 |
    dmiProgramBufferAccessVec_38 | dmiProgramBufferAccessVec_39 | dmiProgramBufferAccessVec_40 |
    dmiProgramBufferAccessVec_41 | dmiProgramBufferAccessVec_42 | dmiProgramBufferAccessVec_43 |
    dmiProgramBufferAccessVec_44 | dmiProgramBufferAccessVec_45 | dmiProgramBufferAccessVec_46 |
    dmiProgramBufferAccessVec_47 | dmiProgramBufferAccessVec_48 | dmiProgramBufferAccessVec_49 |
    dmiProgramBufferAccessVec_50 | dmiProgramBufferAccessVec_51 | dmiProgramBufferAccessVec_52 |
    dmiProgramBufferAccessVec_53 | dmiProgramBufferAccessVec_54 | dmiProgramBufferAccessVec_55 |
    dmiProgramBufferAccessVec_56 | dmiProgramBufferAccessVec_57 | dmiProgramBufferAccessVec_58 |
    dmiProgramBufferAccessVec_59 | dmiProgramBufferAccessVec_60; // @[Debug.scala 1158:69]
  wire  out_f_woready_120 = out_woready__119 & out_womask_116; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_120 = out_roready__119 & out_romask_116; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_61 = out_f_woready_120 | out_f_roready_120; // @[Debug.scala 1155:108]
  wire  out_f_woready_121 = out_woready__119 & out_womask_117; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_121 = out_roready__119 & out_romask_117; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_62 = out_f_woready_121 | out_f_roready_121; // @[Debug.scala 1155:108]
  wire  out_f_woready_122 = out_woready__119 & out_womask_118; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_122 = out_roready__119 & out_romask_118; // @[RegisterRouter.scala 82:24]
  wire  dmiProgramBufferAccessVec_63 = out_f_woready_122 | out_f_roready_122; // @[Debug.scala 1155:108]
  wire  dmiProgramBufferAccess = _dmiProgramBufferAccess_T_59 | dmiProgramBufferAccessVec_61 |
    dmiProgramBufferAccessVec_62 | dmiProgramBufferAccessVec_63; // @[Debug.scala 1158:69]
  wire  _errorBusy_T_15 = dmiProgramBufferAccess & _errorBusy_T; // @[Debug.scala 1636:42]
  wire  errorBusy = _errorBusy_T_13 | _errorBusy_T_15; // @[Debug.scala 1635:74]
  wire [15:0] ABSTRACTAUTOWrData_autoexecprogbuf = auto_dmi_in_a_bits_data[31:16]; // @[RegisterRouter.scala 82:24]
  wire [11:0] ABSTRACTAUTOWrData_autoexecdata = {{10'd0}, auto_dmi_in_a_bits_data[1:0]};
  wire [11:0] _ABSTRACTAUTOReg_autoexecdata_T = ABSTRACTAUTOWrData_autoexecdata & 12'h3; // @[Debug.scala 1147:73]
  wire [23:0] COMMANDWrData_control = COMMANDWrDataVal[23:0]; // @[Debug.scala 1174:65]
  reg [7:0] abstractDataMem_0; // @[Debug.scala 1194:36]
  reg [7:0] abstractDataMem_1; // @[Debug.scala 1194:36]
  reg [7:0] abstractDataMem_2; // @[Debug.scala 1194:36]
  reg [7:0] abstractDataMem_3; // @[Debug.scala 1194:36]
  reg [7:0] abstractDataMem_4; // @[Debug.scala 1194:36]
  reg [7:0] abstractDataMem_5; // @[Debug.scala 1194:36]
  reg [7:0] abstractDataMem_6; // @[Debug.scala 1194:36]
  reg [7:0] abstractDataMem_7; // @[Debug.scala 1194:36]
  reg [7:0] programBufferMem_0; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_1; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_2; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_3; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_4; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_5; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_6; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_7; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_8; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_9; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_10; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_11; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_12; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_13; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_14; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_15; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_16; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_17; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_18; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_19; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_20; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_21; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_22; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_23; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_24; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_25; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_26; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_27; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_28; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_29; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_30; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_31; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_32; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_33; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_34; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_35; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_36; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_37; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_38; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_39; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_40; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_41; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_42; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_43; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_44; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_45; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_46; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_47; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_48; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_49; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_50; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_51; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_52; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_53; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_54; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_55; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_56; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_57; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_58; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_59; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_60; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_61; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_62; // @[Debug.scala 1198:34]
  reg [7:0] programBufferMem_63; // @[Debug.scala 1198:34]
  wire  _resumeReqRegs_T = ~hartIsInResetSync_0; // @[Debug.scala 1211:42]
  wire  _resumeReqRegs_T_1 = resumeReqRegs & ~hartIsInResetSync_0; // @[Debug.scala 1211:40]
  wire [1:0] _GEN_2311 = {{1'd0}, haltedBitRegs}; // @[Debug.scala 1217:43]
  wire [1:0] _haltedBitRegs_T = _GEN_2311 | 2'h1; // @[Debug.scala 1217:43]
  wire [1:0] _GEN_2312 = {{1'd0}, _resumeReqRegs_T}; // @[Debug.scala 1217:64]
  wire [1:0] _haltedBitRegs_T_2 = _haltedBitRegs_T & _GEN_2312; // @[Debug.scala 1217:64]
  wire [1:0] _haltedBitRegs_T_4 = _GEN_2311 & 2'h2; // @[Debug.scala 1219:43]
  wire [1:0] _haltedBitRegs_T_6 = _haltedBitRegs_T_4 & _GEN_2312; // @[Debug.scala 1219:69]
  wire  _haltedBitRegs_T_8 = haltedBitRegs & _resumeReqRegs_T; // @[Debug.scala 1221:42]
  wire  out_womask_470 = &out_backMask_1[9:0]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_470 = out_woready_1_348 & out_womask_470; // @[RegisterRouter.scala 82:24]
  wire [1:0] _GEN_61 = out_f_woready_470 ? _haltedBitRegs_T_6 : {{1'd0}, _haltedBitRegs_T_8}; // @[Debug.scala 1218:39 1219:25 1221:25]
  wire  out_backSel_32_1 = _out_backSel_T_1[32]; // @[RegisterRouter.scala 82:24]
  wire  out_woready_1_534 = auto_tl_in_a_valid & auto_tl_in_d_ready & ~in_1_bits_read & out_backSel_32_1 & out_findex_1
     == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_657 = out_woready_1_534 & out_womask_470; // @[RegisterRouter.scala 82:24]
  wire [1:0] _GEN_62 = out_f_woready_657 ? _haltedBitRegs_T_2 : _GEN_61; // @[Debug.scala 1216:31 1217:25]
  wire [1:0] _GEN_2315 = {{1'd0}, resumeReqRegs}; // @[Debug.scala 1225:43]
  wire [1:0] _resumeReqRegs_T_3 = _GEN_2315 & 2'h2; // @[Debug.scala 1225:43]
  wire [1:0] _resumeReqRegs_T_5 = _resumeReqRegs_T_3 & _GEN_2312; // @[Debug.scala 1225:69]
  wire [1:0] _GEN_63 = out_f_woready_470 ? _resumeReqRegs_T_5 : {{1'd0}, _resumeReqRegs_T_1}; // @[Debug.scala 1211:23 1224:33 1225:25]
  wire  _resumeReqRegs_T_8 = (resumeReqRegs | hamaskWrSel_0) & _resumeReqRegs_T; // @[Debug.scala 1228:65]
  wire [1:0] _GEN_64 = resumereq ? {{1'd0}, _resumeReqRegs_T_8} : _GEN_63; // @[Debug.scala 1227:26 1228:25]
  wire [1:0] _GEN_65 = _T_1 ? 2'h0 : _GEN_62; // @[Debug.scala 1206:45 1207:23]
  wire [1:0] _GEN_66 = _T_1 ? 2'h0 : _GEN_64; // @[Debug.scala 1206:45 1208:23]
  reg  SBCSFieldsReg_sbbusyerror; // @[SBA.scala 44:28]
  reg  SBCSFieldsReg_sbbusy; // @[SBA.scala 44:28]
  reg  SBCSFieldsReg_sbreadonaddr; // @[SBA.scala 44:28]
  reg [2:0] SBCSFieldsReg_sbaccess; // @[SBA.scala 44:28]
  reg  SBCSFieldsReg_sbautoincrement; // @[SBA.scala 44:28]
  reg  SBCSFieldsReg_sbreadondata; // @[SBA.scala 44:28]
  wire  SBCSFieldsRegReset_sbbusy = sb2tlOpt_io_sbStateOut != 3'h0; // @[SBA.scala 48:67]
  reg [31:0] SBADDRESSFieldsReg_0; // @[SBA.scala 101:33]
  reg [31:0] SBADDRESSFieldsReg_1; // @[SBA.scala 101:33]
  wire [127:0] _autoIncrementedAddr_T = {64'h0,SBADDRESSFieldsReg_1,SBADDRESSFieldsReg_0}; // @[Cat.scala 31:58]
  wire [7:0] _autoIncrementedAddr_T_1 = 8'h1 << SBCSFieldsReg_sbaccess; // @[SBA.scala 108:67]
  wire [127:0] _GEN_2317 = {{120'd0}, _autoIncrementedAddr_T_1}; // @[SBA.scala 108:60]
  wire [127:0] autoIncrementedAddr = _autoIncrementedAddr_T + _GEN_2317; // @[SBA.scala 108:60]
  reg  sbErrorReg_2; // @[SBA.scala 216:25]
  reg  sbErrorReg_1; // @[SBA.scala 216:25]
  reg  sbErrorReg_0; // @[SBA.scala 216:25]
  wire [3:0] _SBCSRdData_sberror_T = {1'h0,sbErrorReg_2,sbErrorReg_1,sbErrorReg_0}; // @[SBA.scala 237:42]
  wire [2:0] SBCSRdData_sberror = _SBCSRdData_sberror_T[2:0];
  wire  _SBADDRESSFieldsReg_0_T = SBCSRdData_sberror == 3'h0; // @[SBA.scala 116:40]
  wire  out_backSel_57 = _out_backSel_T[57]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__34 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_57 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_34 = out_woready__34 & out_womask_108; // @[RegisterRouter.scala 82:24]
  wire  _SBADDRESSFieldsReg_0_T_2 = ~SBCSFieldsReg_sbbusy; // @[SBA.scala 116:63]
  wire  _SBADDRESSFieldsReg_0_T_4 = ~SBCSFieldsReg_sbbusyerror; // @[SBA.scala 116:88]
  wire  _SBADDRESSFieldsReg_0_T_6 = sb2tlOpt_io_rdDone | sb2tlOpt_io_wrDone; // @[SBA.scala 117:44]
  wire [31:0] SBADDRESSWrData_0 = out_f_woready_34 ? auto_dmi_in_a_bits_data : 32'h0; // @[Debug.scala 264:{24,30}]
  wire  out_backSel_58 = _out_backSel_T[58]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__109 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_58 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_109 = out_woready__109 & out_womask_108; // @[RegisterRouter.scala 82:24]
  wire [127:0] _sb2tlOpt_io_addrIn_T_1 = {64'h0,SBADDRESSFieldsReg_1,SBADDRESSWrData_0}; // @[Cat.scala 31:58]
  wire  anyAddressWrEn = out_f_woready_34 | out_f_woready_109; // @[SBA.scala 131:54]
  reg [7:0] SBDATAFieldsReg_0_0; // @[SBA.scala 140:30]
  reg [7:0] SBDATAFieldsReg_0_1; // @[SBA.scala 140:30]
  reg [7:0] SBDATAFieldsReg_0_2; // @[SBA.scala 140:30]
  reg [7:0] SBDATAFieldsReg_0_3; // @[SBA.scala 140:30]
  reg [7:0] SBDATAFieldsReg_1_0; // @[SBA.scala 140:30]
  reg [7:0] SBDATAFieldsReg_1_1; // @[SBA.scala 140:30]
  reg [7:0] SBDATAFieldsReg_1_2; // @[SBA.scala 140:30]
  reg [7:0] SBDATAFieldsReg_1_3; // @[SBA.scala 140:30]
  wire  out_backSel_60 = _out_backSel_T[60]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__36 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_60 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_36 = out_woready__36 & out_womask_108; // @[RegisterRouter.scala 82:24]
  wire  _SBDATAFieldsReg_0_0_T_5 = out_f_woready_36 & _SBADDRESSFieldsReg_0_T_2 & _SBADDRESSFieldsReg_0_T_4 &
    _SBADDRESSFieldsReg_0_T; // @[SBA.scala 157:94]
  wire [31:0] SBDATAWrData_0 = out_f_woready_36 ? auto_dmi_in_a_bits_data : 32'h0; // @[Debug.scala 264:{24,30}]
  wire [31:0] SBDATARdData_0 = {SBDATAFieldsReg_0_3,SBDATAFieldsReg_0_2,SBDATAFieldsReg_0_1,SBDATAFieldsReg_0_0}; // @[Cat.scala 31:58]
  wire  out_backSel_61 = _out_backSel_T[61]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__35 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_61 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_35 = out_woready__35 & out_womask_108; // @[RegisterRouter.scala 82:24]
  wire [31:0] SBDATAWrData_1 = out_f_woready_35 ? auto_dmi_in_a_bits_data : 32'h0; // @[Debug.scala 264:{24,30}]
  wire [31:0] SBDATARdData_1 = {SBDATAFieldsReg_1_3,SBDATAFieldsReg_1_2,SBDATAFieldsReg_1_1,SBDATAFieldsReg_1_0}; // @[Cat.scala 31:58]
  wire [127:0] _sb2tlOpt_io_dataIn_T = {64'h0,SBDATAWrData_1,SBDATAWrData_0}; // @[Cat.scala 31:58]
  wire [127:0] _sb2tlOpt_io_dataIn_T_1 = {64'h0,SBDATAFieldsReg_1_3,SBDATAFieldsReg_1_2,SBDATAFieldsReg_1_1,
    SBDATAFieldsReg_1_0,SBDATAFieldsReg_0_3,SBDATAFieldsReg_0_2,SBDATAFieldsReg_0_1,SBDATAFieldsReg_0_0}; // @[Cat.scala 31:58]
  wire  out_roready__36 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_60 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_romask_36 = |out_backMask; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_36 = out_roready__36 & out_romask_36; // @[RegisterRouter.scala 82:24]
  wire  out_roready__35 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & in_bits_read & out_backSel_61 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_f_roready_35 = out_roready__35 & out_romask_36; // @[RegisterRouter.scala 82:24]
  wire  anyDataRdEn = out_f_roready_36 | out_f_roready_35; // @[SBA.scala 173:51]
  wire  anyDataWrEn = out_f_woready_36 | out_f_woready_35; // @[SBA.scala 174:51]
  wire  tryRdEn = out_f_woready_34 & SBCSFieldsReg_sbreadonaddr | out_f_roready_36 & SBCSFieldsReg_sbreadondata; // @[SBA.scala 177:68]
  wire  _sbAccessError_T_3 = SBCSFieldsReg_sbaccess == 3'h1; // @[SBA.scala 180:49]
  wire  _sbAccessError_T_7 = SBCSFieldsReg_sbaccess == 3'h2; // @[SBA.scala 181:49]
  wire  _sbAccessError_T_11 = SBCSFieldsReg_sbaccess == 3'h3; // @[SBA.scala 182:49]
  wire  _sbAccessError_T_15 = SBCSFieldsReg_sbaccess == 3'h4; // @[SBA.scala 183:49]
  wire  sbAccessError = SBCSFieldsReg_sbaccess == 3'h4 | SBCSFieldsReg_sbaccess > 3'h4; // @[SBA.scala 183:97]
  wire [31:0] compareAddr = out_f_woready_34 ? SBADDRESSWrData_0 : SBADDRESSFieldsReg_0; // @[SBA.scala 186:23]
  wire  _sbAlignmentError_T_7 = _sbAccessError_T_7 & compareAddr[1:0] != 2'h0; // @[SBA.scala 189:61]
  wire  _sbAlignmentError_T_8 = _sbAccessError_T_3 & compareAddr[0] | _sbAlignmentError_T_7; // @[SBA.scala 188:91]
  wire  _sbAlignmentError_T_12 = _sbAccessError_T_11 & compareAddr[2:0] != 3'h0; // @[SBA.scala 190:61]
  wire  _sbAlignmentError_T_13 = _sbAlignmentError_T_8 | _sbAlignmentError_T_12; // @[SBA.scala 189:91]
  wire  _sbAlignmentError_T_17 = _sbAccessError_T_15 & compareAddr[3:0] != 4'h0; // @[SBA.scala 191:61]
  wire  sbAlignmentError = _sbAlignmentError_T_13 | _sbAlignmentError_T_17; // @[SBA.scala 190:91]
  wire  _sb2tlOpt_io_wrEn_T_7 = ~sbAccessError; // @[SBA.scala 196:141]
  wire  _sb2tlOpt_io_wrEn_T_9 = ~sbAlignmentError; // @[SBA.scala 196:159]
  wire  out_backSel_56 = _out_backSel_T[56]; // @[RegisterRouter.scala 82:24]
  wire  out_woready__16 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & ~in_bits_read & out_backSel_56 & out_findex == 7'h0
    ; // @[RegisterRouter.scala 82:24]
  wire  out_womask_16 = &out_backMask[22]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_16 = out_woready__16 & out_womask_16; // @[RegisterRouter.scala 82:24]
  wire  SBCSWrData_sbbusyerror = auto_dmi_in_a_bits_data[22]; // @[RegisterRouter.scala 82:24]
  wire  _SBCSFieldsReg_sbbusyerror_T_4 = (anyDataRdEn | anyDataWrEn) & SBCSFieldsRegReset_sbbusy |
    SBCSFieldsReg_sbbusyerror; // @[SBA.scala 207:43]
  wire  _SBCSFieldsReg_sbbusyerror_T_5 = anyAddressWrEn & SBCSFieldsRegReset_sbbusy | _SBCSFieldsReg_sbbusyerror_T_4; // @[SBA.scala 206:43]
  wire  out_womask_14 = &out_backMask[20]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_14 = out_woready__16 & out_womask_14; // @[RegisterRouter.scala 82:24]
  wire  SBCSWrData_sbreadonaddr = auto_dmi_in_a_bits_data[20]; // @[RegisterRouter.scala 82:24]
  wire  out_womask_12 = &out_backMask[16]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_12 = out_woready__16 & out_womask_12; // @[RegisterRouter.scala 82:24]
  wire  SBCSWrData_sbautoincrement = auto_dmi_in_a_bits_data[16]; // @[RegisterRouter.scala 82:24]
  wire  out_womask_11 = &out_backMask[15]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_11 = out_woready__16 & out_womask_11; // @[RegisterRouter.scala 82:24]
  wire  SBCSWrData_sbreadondata = auto_dmi_in_a_bits_data[15]; // @[RegisterRouter.scala 82:24]
  wire  out_womask_13 = &out_backMask[19:17]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_13 = out_woready__16 & out_womask_13; // @[RegisterRouter.scala 82:24]
  wire [2:0] SBCSWrData_sbaccess = auto_dmi_in_a_bits_data[19:17]; // @[RegisterRouter.scala 82:24]
  wire [2:0] SBCSWrData_sberror = auto_dmi_in_a_bits_data[14:12]; // @[RegisterRouter.scala 82:24]
  wire  out_womask_10 = &out_backMask[14:12]; // @[RegisterRouter.scala 82:24]
  wire  out_f_woready_10 = out_woready__16 & out_womask_10; // @[RegisterRouter.scala 82:24]
  wire  _sbErrorReg_0_T_8 = out_f_woready_36 | tryRdEn; // @[SBA.scala 224:39]
  wire  _sbErrorReg_0_T_14 = _SBADDRESSFieldsReg_0_T_6 & sb2tlOpt_io_respError | sbErrorReg_0; // @[SBA.scala 226:29]
  wire  _sbErrorReg_0_T_15 = _sbErrorReg_0_T_8 & sbAccessError ? 1'h0 : _sbErrorReg_0_T_14; // @[SBA.scala 225:29]
  wire  _sbErrorReg_0_T_16 = (out_f_woready_36 | tryRdEn) & sbAlignmentError | _sbErrorReg_0_T_15; // @[SBA.scala 224:29]
  wire  _sbErrorReg_1_T_14 = _SBADDRESSFieldsReg_0_T_6 & sb2tlOpt_io_respError | sbErrorReg_1; // @[SBA.scala 226:29]
  wire  _sbErrorReg_1_T_15 = _sbErrorReg_0_T_8 & sbAccessError ? 1'h0 : _sbErrorReg_1_T_14; // @[SBA.scala 225:29]
  wire  _sbErrorReg_1_T_16 = (out_f_woready_36 | tryRdEn) & sbAlignmentError | _sbErrorReg_1_T_15; // @[SBA.scala 224:29]
  wire  _sbErrorReg_1_T_17 = sb2tlOpt_io_wrEn & ~sb2tlOpt_io_wrLegal | sb2tlOpt_io_rdEn & ~sb2tlOpt_io_rdLegal |
    _sbErrorReg_1_T_16; // @[SBA.scala 223:29]
  wire  _sbErrorReg_2_T_14 = _SBADDRESSFieldsReg_0_T_6 & sb2tlOpt_io_respError | sbErrorReg_2; // @[SBA.scala 226:29]
  wire  _sbErrorReg_2_T_15 = _sbErrorReg_0_T_8 & sbAccessError | _sbErrorReg_2_T_14; // @[SBA.scala 225:29]
  wire [31:0] out_prepend_2 = {abstractDataMem_7,abstractDataMem_6,abstractDataMem_5,abstractDataMem_4}; // @[Cat.scala 31:58]
  wire [23:0] out_prepend_15 = {1'h0,SBCSFieldsReg_sbbusyerror,SBCSFieldsRegReset_sbbusy,SBCSFieldsReg_sbreadonaddr,
    SBCSFieldsReg_sbaccess,SBCSFieldsReg_sbautoincrement,SBCSFieldsReg_sbreadondata,SBCSRdData_sberror,12'h48f}; // @[Cat.scala 31:58]
  wire [28:0] _out_T_238 = {{5'd0}, out_prepend_15}; // @[RegisterRouter.scala 82:24]
  wire [31:0] out_prepend_16 = {3'h1,_out_T_238}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_19 = {programBufferMem_43,programBufferMem_42,programBufferMem_41,programBufferMem_40}; // @[Cat.scala 31:58]
  wire [2:0] out_prepend_20 = {1'h0,ABSTRACTAUTOReg_autoexecdata[1:0]}; // @[Cat.scala 31:58]
  wire [15:0] _out_T_311 = {{13'd0}, out_prepend_20}; // @[RegisterRouter.scala 82:24]
  wire [31:0] out_prepend_21 = {ABSTRACTAUTOReg_autoexecprogbuf,_out_T_311}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_24 = {programBufferMem_23,programBufferMem_22,programBufferMem_21,programBufferMem_20}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_27 = {programBufferMem_59,programBufferMem_58,programBufferMem_57,programBufferMem_56}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_30 = {programBufferMem_27,programBufferMem_26,programBufferMem_25,programBufferMem_24}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_33 = {programBufferMem_7,programBufferMem_6,programBufferMem_5,programBufferMem_4}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_36 = {programBufferMem_39,programBufferMem_38,programBufferMem_37,programBufferMem_36}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_39 = {programBufferMem_3,programBufferMem_2,programBufferMem_1,programBufferMem_0}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_42 = {programBufferMem_11,programBufferMem_10,programBufferMem_9,programBufferMem_8}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_45 = {programBufferMem_55,programBufferMem_54,programBufferMem_53,programBufferMem_52}; // @[Cat.scala 31:58]
  wire [16:0] out_prepend_58 = {resumeAcks,1'h0,1'h0,1'h0,1'h0,_T_10,_T_10,haltedBitRegs,haltedBitRegs,8'ha2}; // @[Cat.scala 31:58]
  wire [20:0] out_prepend_62 = {1'h0,haveResetBitRegs,haveResetBitRegs,resumeAcks,out_prepend_58}; // @[Cat.scala 31:58]
  wire [21:0] _out_T_878 = {{1'd0}, out_prepend_62}; // @[RegisterRouter.scala 82:24]
  wire [22:0] out_prepend_63 = {1'h0,_out_T_878}; // @[Cat.scala 31:58]
  wire  abstractCommandBusy = ctrlStateReg != 2'h0; // @[Debug.scala 1623:42]
  wire [13:0] out_prepend_68 = {1'h0,abstractCommandBusy,1'h0,ABSTRACTCSReg_cmderr,8'h2}; // @[Cat.scala 31:58]
  wire [23:0] _out_T_943 = {{10'd0}, out_prepend_68}; // @[RegisterRouter.scala 82:24]
  wire [28:0] out_prepend_69 = {5'h10,_out_T_943}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_72 = {programBufferMem_51,programBufferMem_50,programBufferMem_49,programBufferMem_48}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_75 = {programBufferMem_31,programBufferMem_30,programBufferMem_29,programBufferMem_28}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_78 = {programBufferMem_15,programBufferMem_14,programBufferMem_13,programBufferMem_12}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_81 = {programBufferMem_47,programBufferMem_46,programBufferMem_45,programBufferMem_44}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_84 = {programBufferMem_35,programBufferMem_34,programBufferMem_33,programBufferMem_32}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_87 = {programBufferMem_19,programBufferMem_18,programBufferMem_17,programBufferMem_16}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_90 = {abstractDataMem_3,abstractDataMem_2,abstractDataMem_1,abstractDataMem_0}; // @[Cat.scala 31:58]
  wire [31:0] out_prepend_93 = {programBufferMem_63,programBufferMem_62,programBufferMem_61,programBufferMem_60}; // @[Cat.scala 31:58]
  wire  _GEN_444 = 6'h3d == out_iindex ? _out_T_14 : 1'h1; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_445 = 6'h3c == out_iindex ? _out_T_14 : _GEN_444; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_446 = 6'h3a == out_iindex ? _out_T_14 : _GEN_445; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_447 = 6'h39 == out_iindex ? _out_T_14 : _GEN_446; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_448 = 6'h38 == out_iindex ? _out_T_14 : _GEN_447; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_449 = 6'h2f == out_iindex ? _out_T_14 : _GEN_448; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_450 = 6'h2e == out_iindex ? _out_T_14 : _GEN_449; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_451 = 6'h2d == out_iindex ? _out_T_14 : _GEN_450; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_452 = 6'h2c == out_iindex ? _out_T_14 : _GEN_451; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_453 = 6'h2b == out_iindex ? _out_T_14 : _GEN_452; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_454 = 6'h2a == out_iindex ? _out_T_14 : _GEN_453; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_455 = 6'h29 == out_iindex ? _out_T_14 : _GEN_454; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_456 = 6'h28 == out_iindex ? _out_T_14 : _GEN_455; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_457 = 6'h27 == out_iindex ? _out_T_14 : _GEN_456; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_458 = 6'h26 == out_iindex ? _out_T_14 : _GEN_457; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_459 = 6'h25 == out_iindex ? _out_T_14 : _GEN_458; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_460 = 6'h24 == out_iindex ? _out_T_14 : _GEN_459; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_461 = 6'h23 == out_iindex ? _out_T_14 : _GEN_460; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_462 = 6'h22 == out_iindex ? _out_T_14 : _GEN_461; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_463 = 6'h21 == out_iindex ? _out_T_14 : _GEN_462; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_464 = 6'h20 == out_iindex ? _out_T_14 : _GEN_463; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_465 = 6'h18 == out_iindex ? _out_T_14 : _GEN_464; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_466 = 6'h17 == out_iindex ? _out_T_14 : _GEN_465; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_467 = 6'h16 == out_iindex ? _out_T_14 : _GEN_466; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_468 = 6'h13 == out_iindex ? _out_T_14 : _GEN_467; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_469 = 6'h11 == out_iindex ? _out_T_14 : _GEN_468; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_470 = 6'h5 == out_iindex ? _out_T_14 : _GEN_469; // @[MuxLiteral.scala 53:{26,32}]
  wire  _GEN_471 = 6'h4 == out_iindex ? _out_T_14 : _GEN_470; // @[MuxLiteral.scala 53:{26,32}]
  wire  out_out_bits_data_out = 6'h0 == out_iindex ? _out_T_30 : _GEN_471; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_473 = 6'h3d == out_iindex ? SBDATARdData_1 : 32'h0; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_474 = 6'h3c == out_iindex ? SBDATARdData_0 : _GEN_473; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_475 = 6'h3a == out_iindex ? SBADDRESSFieldsReg_1 : _GEN_474; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_476 = 6'h39 == out_iindex ? SBADDRESSFieldsReg_0 : _GEN_475; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_477 = 6'h38 == out_iindex ? out_prepend_16 : _GEN_476; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_478 = 6'h2f == out_iindex ? out_prepend_93 : _GEN_477; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_479 = 6'h2e == out_iindex ? out_prepend_27 : _GEN_478; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_480 = 6'h2d == out_iindex ? out_prepend_45 : _GEN_479; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_481 = 6'h2c == out_iindex ? out_prepend_72 : _GEN_480; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_482 = 6'h2b == out_iindex ? out_prepend_81 : _GEN_481; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_483 = 6'h2a == out_iindex ? out_prepend_19 : _GEN_482; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_484 = 6'h29 == out_iindex ? out_prepend_36 : _GEN_483; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_485 = 6'h28 == out_iindex ? out_prepend_84 : _GEN_484; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_486 = 6'h27 == out_iindex ? out_prepend_75 : _GEN_485; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_487 = 6'h26 == out_iindex ? out_prepend_30 : _GEN_486; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_488 = 6'h25 == out_iindex ? out_prepend_24 : _GEN_487; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_489 = 6'h24 == out_iindex ? out_prepend_87 : _GEN_488; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_490 = 6'h23 == out_iindex ? out_prepend_78 : _GEN_489; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_491 = 6'h22 == out_iindex ? out_prepend_42 : _GEN_490; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_492 = 6'h21 == out_iindex ? out_prepend_33 : _GEN_491; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_493 = 6'h20 == out_iindex ? out_prepend_39 : _GEN_492; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_494 = 6'h18 == out_iindex ? out_prepend_21 : _GEN_493; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_495 = 6'h17 == out_iindex ? _accessRegisterCommandReg_T : _GEN_494; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_496 = 6'h16 == out_iindex ? {{3'd0}, out_prepend_69} : _GEN_495; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_497 = 6'h13 == out_iindex ? HALTSUM1RdData_haltsum1 : _GEN_496; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_498 = 6'h11 == out_iindex ? {{9'd0}, out_prepend_63} : _GEN_497; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_499 = 6'h5 == out_iindex ? out_prepend_2 : _GEN_498; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] _GEN_500 = 6'h4 == out_iindex ? out_prepend_90 : _GEN_499; // @[MuxLiteral.scala 53:{26,32}]
  wire [31:0] out_out_bits_data_out_1 = 6'h0 == out_iindex ? haltedStatus_0 : _GEN_500; // @[MuxLiteral.scala 53:{26,32}]
  reg  goReg; // @[Debug.scala 1378:27]
  wire  out_f_woready_658 = out_woready_1_534 & out_womask_471; // @[RegisterRouter.scala 82:24]
  wire  _GEN_574 = out_f_woready_658 ? 1'h0 : goReg; // @[Debug.scala 1389:33 1391:15 1378:27]
  wire  _GEN_2284 = commandRegBadHaltResume ? 1'h0 : 1'h1; // @[Debug.scala 1690:43]
  wire  _GEN_2288 = commandRegIsUnsupported ? 1'h0 : _GEN_2284; // @[Debug.scala 1687:38]
  wire  _GEN_2301 = ctrlStateReg == 2'h1 & _GEN_2288; // @[Debug.scala 1680:59]
  wire  goAbstract = ABSTRACTCSWrEnLegal ? 1'h0 : _GEN_2301; // @[Debug.scala 1672:47]
  wire  _GEN_575 = goAbstract | _GEN_574; // @[Debug.scala 1387:25 1388:15]
  wire  accessRegisterCommandReg_postexec = _accessRegisterCommandReg_T[18]; // @[Debug.scala 1416:73]
  reg [31:0] abstractGeneratedMem_0; // @[Debug.scala 1469:35]
  reg [31:0] abstractGeneratedMem_1; // @[Debug.scala 1469:35]
  reg [31:0] abstractGeneratedMem_2; // @[Debug.scala 1469:35]
  reg [31:0] abstractGeneratedMem_3; // @[Debug.scala 1469:35]
  reg [31:0] abstractGeneratedMem_4; // @[Debug.scala 1469:35]
  wire [3:0] abstractGeneratedMem_1_base = accessRegisterCommandReg_regno[0] ? 4'h8 : 4'h9; // @[Debug.scala 1498:21]
  wire [4:0] abstractGeneratedMem_1_inst_rd = {{1'd0}, abstractGeneratedMem_1_base}; // @[Debug.scala 1497:22 1502:15]
  wire [31:0] _abstractGeneratedMem_1_T = {12'h7b3,abstractGeneratedMem_1_inst_rd,3'h1,abstractGeneratedMem_1_inst_rd,7'h73
    }; // @[Debug.scala 1503:12]
  wire [15:0] _abstractGeneratedMem_2_inst_rd_T = accessRegisterCommandReg_regno & 16'h1f; // @[Debug.scala 1476:54]
  wire [4:0] abstractGeneratedMem_2_inst_rd = _abstractGeneratedMem_2_inst_rd_T[4:0]; // @[Debug.scala 1472:22 1476:19]
  wire [31:0] _abstractGeneratedMem_2_T = {12'hb80,abstractGeneratedMem_1_inst_rd,accessRegisterCommandReg_size,
    abstractGeneratedMem_2_inst_rd,7'h3}; // @[Debug.scala 1480:12]
  wire [31:0] _abstractGeneratedMem_2_T_1 = {7'h5c,abstractGeneratedMem_2_inst_rd,abstractGeneratedMem_1_inst_rd,
    accessRegisterCommandReg_size,5'h0,7'h23}; // @[Debug.scala 1493:12]
  wire  out_wimask_123 = &out_backMask_1[7:0]; // @[RegisterRouter.scala 82:24]
  wire  out_wimask_124 = &out_backMask_1[15:8]; // @[RegisterRouter.scala 82:24]
  wire  out_wimask_125 = &out_backMask_1[23:16]; // @[RegisterRouter.scala 82:24]
  wire [23:0] out_prepend_95 = {6'h0,resumeReqRegs,goReg,6'h0,resumeReqRegs,goReg,6'h0,resumeReqRegs,goReg}; // @[Cat.scala 31:58]
  wire  out_wimask_126 = &out_backMask_1[31:24]; // @[RegisterRouter.scala 82:24]
  wire  out_wimask_127 = &out_backMask_1[39:32]; // @[RegisterRouter.scala 82:24]
  wire  out_wimask_128 = &out_backMask_1[47:40]; // @[RegisterRouter.scala 82:24]
  wire [47:0] out_prepend_98 = {6'h0,resumeReqRegs,goReg,6'h0,resumeReqRegs,goReg,6'h0,resumeReqRegs,goReg,
    out_prepend_95}; // @[Cat.scala 31:58]
  wire  out_wimask_129 = &out_backMask_1[55:48]; // @[RegisterRouter.scala 82:24]
  wire  out_wimask_130 = &out_backMask_1[63:56]; // @[RegisterRouter.scala 82:24]
  wire [63:0] out_prepend_100 = {6'h0,resumeReqRegs,goReg,6'h0,resumeReqRegs,goReg,out_prepend_98}; // @[Cat.scala 31:58]
  wire [63:0] out_prepend_101 = {abstractGeneratedMem_0,32'h0}; // @[Cat.scala 31:58]
  wire  out_frontSel_110 = _out_backSel_T_1[110]; // @[RegisterRouter.scala 82:24]
  wire  out_wivalid_1_105 = auto_tl_in_a_valid & auto_tl_in_d_ready & ~in_1_bits_read & out_frontSel_110 & out_findex_1
     == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_228 = out_wivalid_1_105 & out_wimask_123; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_229 = out_wivalid_1_105 & out_wimask_124; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_230 = out_wivalid_1_105 & out_wimask_125; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_231 = out_wivalid_1_105 & out_wimask_126; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_232 = out_wivalid_1_105 & out_wimask_127; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_233 = out_wivalid_1_105 & out_wimask_128; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_234 = out_wivalid_1_105 & out_wimask_129; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_235 = out_wivalid_1_105 & out_wimask_130; // @[RegisterRouter.scala 82:24]
  wire [63:0] out_prepend_192 = {programBufferMem_55,programBufferMem_54,programBufferMem_53,programBufferMem_52,
    programBufferMem_51,programBufferMem_50,programBufferMem_49,programBufferMem_48}; // @[Cat.scala 31:58]
  wire  out_frontSel_106 = _out_backSel_T_1[106]; // @[RegisterRouter.scala 82:24]
  wire  out_wivalid_1_201 = auto_tl_in_a_valid & auto_tl_in_d_ready & ~in_1_bits_read & out_frontSel_106 & out_findex_1
     == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_324 = out_wivalid_1_201 & out_wimask_123; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_325 = out_wivalid_1_201 & out_wimask_124; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_326 = out_wivalid_1_201 & out_wimask_125; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_327 = out_wivalid_1_201 & out_wimask_126; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_328 = out_wivalid_1_201 & out_wimask_127; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_329 = out_wivalid_1_201 & out_wimask_128; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_330 = out_wivalid_1_201 & out_wimask_129; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_331 = out_wivalid_1_201 & out_wimask_130; // @[RegisterRouter.scala 82:24]
  wire [63:0] out_prepend_276 = {programBufferMem_23,programBufferMem_22,programBufferMem_21,programBufferMem_20,
    programBufferMem_19,programBufferMem_18,programBufferMem_17,programBufferMem_16}; // @[Cat.scala 31:58]
  wire [63:0] out_prepend_361 = {abstractGeneratedMem_2,abstractGeneratedMem_1}; // @[Cat.scala 31:58]
  wire  out_frontSel_109 = _out_backSel_T_1[109]; // @[RegisterRouter.scala 82:24]
  wire  out_wivalid_1_413 = auto_tl_in_a_valid & auto_tl_in_d_ready & ~in_1_bits_read & out_frontSel_109 & out_findex_1
     == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_536 = out_wivalid_1_413 & out_wimask_123; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_537 = out_wivalid_1_413 & out_wimask_124; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_538 = out_wivalid_1_413 & out_wimask_125; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_539 = out_wivalid_1_413 & out_wimask_126; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_540 = out_wivalid_1_413 & out_wimask_127; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_541 = out_wivalid_1_413 & out_wimask_128; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_542 = out_wivalid_1_413 & out_wimask_129; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_543 = out_wivalid_1_413 & out_wimask_130; // @[RegisterRouter.scala 82:24]
  wire [63:0] out_prepend_460 = {programBufferMem_47,programBufferMem_46,programBufferMem_45,programBufferMem_44,
    programBufferMem_43,programBufferMem_42,programBufferMem_41,programBufferMem_40}; // @[Cat.scala 31:58]
  wire  out_frontSel_105 = _out_backSel_T_1[105]; // @[RegisterRouter.scala 82:24]
  wire  out_wivalid_1_494 = auto_tl_in_a_valid & auto_tl_in_d_ready & ~in_1_bits_read & out_frontSel_105 & out_findex_1
     == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_617 = out_wivalid_1_494 & out_wimask_123; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_618 = out_wivalid_1_494 & out_wimask_124; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_619 = out_wivalid_1_494 & out_wimask_125; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_620 = out_wivalid_1_494 & out_wimask_126; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_621 = out_wivalid_1_494 & out_wimask_127; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_622 = out_wivalid_1_494 & out_wimask_128; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_623 = out_wivalid_1_494 & out_wimask_129; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_624 = out_wivalid_1_494 & out_wimask_130; // @[RegisterRouter.scala 82:24]
  wire [63:0] out_prepend_530 = {programBufferMem_15,programBufferMem_14,programBufferMem_13,programBufferMem_12,
    programBufferMem_11,programBufferMem_10,programBufferMem_9,programBufferMem_8}; // @[Cat.scala 31:58]
  wire [63:0] out_prepend_693 = {abstractGeneratedMem_4,abstractGeneratedMem_3}; // @[Cat.scala 31:58]
  wire  out_frontSel_108 = _out_backSel_T_1[108]; // @[RegisterRouter.scala 82:24]
  wire  out_wivalid_1_738 = auto_tl_in_a_valid & auto_tl_in_d_ready & ~in_1_bits_read & out_frontSel_108 & out_findex_1
     == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_861 = out_wivalid_1_738 & out_wimask_123; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_862 = out_wivalid_1_738 & out_wimask_124; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_863 = out_wivalid_1_738 & out_wimask_125; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_864 = out_wivalid_1_738 & out_wimask_126; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_865 = out_wivalid_1_738 & out_wimask_127; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_866 = out_wivalid_1_738 & out_wimask_128; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_867 = out_wivalid_1_738 & out_wimask_129; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_868 = out_wivalid_1_738 & out_wimask_130; // @[RegisterRouter.scala 82:24]
  wire [63:0] out_prepend_742 = {programBufferMem_39,programBufferMem_38,programBufferMem_37,programBufferMem_36,
    programBufferMem_35,programBufferMem_34,programBufferMem_33,programBufferMem_32}; // @[Cat.scala 31:58]
  wire  out_frontSel_112 = _out_backSel_T_1[112]; // @[RegisterRouter.scala 82:24]
  wire  out_wivalid_1_826 = auto_tl_in_a_valid & auto_tl_in_d_ready & ~in_1_bits_read & out_frontSel_112 & out_findex_1
     == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_949 = out_wivalid_1_826 & out_wimask_123; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_950 = out_wivalid_1_826 & out_wimask_124; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_951 = out_wivalid_1_826 & out_wimask_125; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_952 = out_wivalid_1_826 & out_wimask_126; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_953 = out_wivalid_1_826 & out_wimask_127; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_954 = out_wivalid_1_826 & out_wimask_128; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_955 = out_wivalid_1_826 & out_wimask_129; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_956 = out_wivalid_1_826 & out_wimask_130; // @[RegisterRouter.scala 82:24]
  wire [63:0] out_prepend_819 = {abstractDataMem_7,abstractDataMem_6,abstractDataMem_5,abstractDataMem_4,
    abstractDataMem_3,abstractDataMem_2,abstractDataMem_1,abstractDataMem_0}; // @[Cat.scala 31:58]
  wire  out_frontSel_104 = _out_backSel_T_1[104]; // @[RegisterRouter.scala 82:24]
  wire  out_wivalid_1_946 = auto_tl_in_a_valid & auto_tl_in_d_ready & ~in_1_bits_read & out_frontSel_104 & out_findex_1
     == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1069 = out_wivalid_1_946 & out_wimask_123; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1070 = out_wivalid_1_946 & out_wimask_124; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1071 = out_wivalid_1_946 & out_wimask_125; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1072 = out_wivalid_1_946 & out_wimask_126; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1073 = out_wivalid_1_946 & out_wimask_127; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1074 = out_wivalid_1_946 & out_wimask_128; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1075 = out_wivalid_1_946 & out_wimask_129; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1076 = out_wivalid_1_946 & out_wimask_130; // @[RegisterRouter.scala 82:24]
  wire [63:0] out_prepend_924 = {programBufferMem_7,programBufferMem_6,programBufferMem_5,programBufferMem_4,
    programBufferMem_3,programBufferMem_2,programBufferMem_1,programBufferMem_0}; // @[Cat.scala 31:58]
  wire  out_frontSel_107 = _out_backSel_T_1[107]; // @[RegisterRouter.scala 82:24]
  wire  out_wivalid_1_1082 = auto_tl_in_a_valid & auto_tl_in_d_ready & ~in_1_bits_read & out_frontSel_107 & out_findex_1
     == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1205 = out_wivalid_1_1082 & out_wimask_123; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1206 = out_wivalid_1_1082 & out_wimask_124; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1207 = out_wivalid_1_1082 & out_wimask_125; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1208 = out_wivalid_1_1082 & out_wimask_126; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1209 = out_wivalid_1_1082 & out_wimask_127; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1210 = out_wivalid_1_1082 & out_wimask_128; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1211 = out_wivalid_1_1082 & out_wimask_129; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1212 = out_wivalid_1_1082 & out_wimask_130; // @[RegisterRouter.scala 82:24]
  wire [63:0] out_prepend_1043 = {programBufferMem_31,programBufferMem_30,programBufferMem_29,programBufferMem_28,
    programBufferMem_27,programBufferMem_26,programBufferMem_25,programBufferMem_24}; // @[Cat.scala 31:58]
  wire  out_frontSel_111 = _out_backSel_T_1[111]; // @[RegisterRouter.scala 82:24]
  wire  out_wivalid_1_1162 = auto_tl_in_a_valid & auto_tl_in_d_ready & ~in_1_bits_read & out_frontSel_111 & out_findex_1
     == 9'h0; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1285 = out_wivalid_1_1162 & out_wimask_123; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1286 = out_wivalid_1_1162 & out_wimask_124; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1287 = out_wivalid_1_1162 & out_wimask_125; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1288 = out_wivalid_1_1162 & out_wimask_126; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1289 = out_wivalid_1_1162 & out_wimask_127; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1290 = out_wivalid_1_1162 & out_wimask_128; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1291 = out_wivalid_1_1162 & out_wimask_129; // @[RegisterRouter.scala 82:24]
  wire  out_f_wivalid_1292 = out_wivalid_1_1162 & out_wimask_130; // @[RegisterRouter.scala 82:24]
  wire [63:0] out_prepend_1113 = {programBufferMem_63,programBufferMem_62,programBufferMem_61,programBufferMem_60,
    programBufferMem_59,programBufferMem_58,programBufferMem_57,programBufferMem_56}; // @[Cat.scala 31:58]
  wire  _GEN_1687 = 8'h1 == out_iindex_1 ? _out_T_1625 : _out_T_1625; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1688 = 8'h2 == out_iindex_1 ? _out_T_1625 : _GEN_1687; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1689 = 8'h3 == out_iindex_1 ? _out_T_1625 : _GEN_1688; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1690 = 8'h4 == out_iindex_1 ? _out_T_1625 : _GEN_1689; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1691 = 8'h5 == out_iindex_1 ? _out_T_1625 : _GEN_1690; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1692 = 8'h6 == out_iindex_1 ? _out_T_1625 : _GEN_1691; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1693 = 8'h7 == out_iindex_1 ? _out_T_1625 : _GEN_1692; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1694 = 8'h8 == out_iindex_1 ? _out_T_1625 : _GEN_1693; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1695 = 8'h9 == out_iindex_1 ? _out_T_1625 : _GEN_1694; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1696 = 8'ha == out_iindex_1 ? _out_T_1625 : _GEN_1695; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1697 = 8'hb == out_iindex_1 ? _out_T_1625 : _GEN_1696; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1698 = 8'hc == out_iindex_1 ? _out_T_1625 : _GEN_1697; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1713 = 8'h1b == out_iindex_1 | (8'h1a == out_iindex_1 | (8'h19 == out_iindex_1 | (8'h18 == out_iindex_1 | (8'h17
     == out_iindex_1 | (8'h16 == out_iindex_1 | (8'h15 == out_iindex_1 | (8'h14 == out_iindex_1 | (8'h13 == out_iindex_1
     | (8'h12 == out_iindex_1 | (8'h11 == out_iindex_1 | (8'h10 == out_iindex_1 | (8'hf == out_iindex_1 | (8'he ==
    out_iindex_1 | (8'hd == out_iindex_1 | _GEN_1698)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1718 = 8'h20 == out_iindex_1 ? _out_T_1549 : 8'h1f == out_iindex_1 | (8'h1e == out_iindex_1 | (8'h1d ==
    out_iindex_1 | (8'h1c == out_iindex_1 | _GEN_1713))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1719 = 8'h21 == out_iindex_1 ? _out_T_1549 : _GEN_1718; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1734 = 8'h30 == out_iindex_1 | (8'h2f == out_iindex_1 | (8'h2e == out_iindex_1 | (8'h2d == out_iindex_1 | (8'h2c
     == out_iindex_1 | (8'h2b == out_iindex_1 | (8'h2a == out_iindex_1 | (8'h29 == out_iindex_1 | (8'h28 == out_iindex_1
     | (8'h27 == out_iindex_1 | (8'h26 == out_iindex_1 | (8'h25 == out_iindex_1 | (8'h24 == out_iindex_1 | (8'h23 ==
    out_iindex_1 | (8'h22 == out_iindex_1 | _GEN_1719)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1749 = 8'h3f == out_iindex_1 | (8'h3e == out_iindex_1 | (8'h3d == out_iindex_1 | (8'h3c == out_iindex_1 | (8'h3b
     == out_iindex_1 | (8'h3a == out_iindex_1 | (8'h39 == out_iindex_1 | (8'h38 == out_iindex_1 | (8'h37 == out_iindex_1
     | (8'h36 == out_iindex_1 | (8'h35 == out_iindex_1 | (8'h34 == out_iindex_1 | (8'h33 == out_iindex_1 | (8'h32 ==
    out_iindex_1 | (8'h31 == out_iindex_1 | _GEN_1734)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1764 = 8'h4e == out_iindex_1 | (8'h4d == out_iindex_1 | (8'h4c == out_iindex_1 | (8'h4b == out_iindex_1 | (8'h4a
     == out_iindex_1 | (8'h49 == out_iindex_1 | (8'h48 == out_iindex_1 | (8'h47 == out_iindex_1 | (8'h46 == out_iindex_1
     | (8'h45 == out_iindex_1 | (8'h44 == out_iindex_1 | (8'h43 == out_iindex_1 | (8'h42 == out_iindex_1 | (8'h41 ==
    out_iindex_1 | (8'h40 == out_iindex_1 | _GEN_1749)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1779 = 8'h5d == out_iindex_1 | (8'h5c == out_iindex_1 | (8'h5b == out_iindex_1 | (8'h5a == out_iindex_1 | (8'h59
     == out_iindex_1 | (8'h58 == out_iindex_1 | (8'h57 == out_iindex_1 | (8'h56 == out_iindex_1 | (8'h55 == out_iindex_1
     | (8'h54 == out_iindex_1 | (8'h53 == out_iindex_1 | (8'h52 == out_iindex_1 | (8'h51 == out_iindex_1 | (8'h50 ==
    out_iindex_1 | (8'h4f == out_iindex_1 | _GEN_1764)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1782 = 8'h60 == out_iindex_1 ? _out_T_1549 : 8'h5f == out_iindex_1 | (8'h5e == out_iindex_1 | _GEN_1779); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1787 = 8'h65 == out_iindex_1 ? _out_T_1549 : 8'h64 == out_iindex_1 | (8'h63 == out_iindex_1 | (8'h62 ==
    out_iindex_1 | (8'h61 == out_iindex_1 | _GEN_1782))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1788 = 8'h66 == out_iindex_1 ? _out_T_1549 : _GEN_1787; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1789 = 8'h67 == out_iindex_1 ? _out_T_1549 : _GEN_1788; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1790 = 8'h68 == out_iindex_1 ? _out_T_1549 : _GEN_1789; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1791 = 8'h69 == out_iindex_1 ? _out_T_1549 : _GEN_1790; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1792 = 8'h6a == out_iindex_1 ? _out_T_1549 : _GEN_1791; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1793 = 8'h6b == out_iindex_1 ? _out_T_1549 : _GEN_1792; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1794 = 8'h6c == out_iindex_1 ? _out_T_1549 : _GEN_1793; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1795 = 8'h6d == out_iindex_1 ? _out_T_1549 : _GEN_1794; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1796 = 8'h6e == out_iindex_1 ? _out_T_1549 : _GEN_1795; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1797 = 8'h6f == out_iindex_1 ? _out_T_1549 : _GEN_1796; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1798 = 8'h70 == out_iindex_1 ? _out_T_1549 : _GEN_1797; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1813 = 8'h7f == out_iindex_1 | (8'h7e == out_iindex_1 | (8'h7d == out_iindex_1 | (8'h7c == out_iindex_1 | (8'h7b
     == out_iindex_1 | (8'h7a == out_iindex_1 | (8'h79 == out_iindex_1 | (8'h78 == out_iindex_1 | (8'h77 == out_iindex_1
     | (8'h76 == out_iindex_1 | (8'h75 == out_iindex_1 | (8'h74 == out_iindex_1 | (8'h73 == out_iindex_1 | (8'h72 ==
    out_iindex_1 | (8'h71 == out_iindex_1 | _GEN_1798)))))))))))))); // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1814 = 8'h80 == out_iindex_1 ? _out_T_1549 : _GEN_1813; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1815 = 8'h81 == out_iindex_1 ? _out_T_1549 : _GEN_1814; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1816 = 8'h82 == out_iindex_1 ? _out_T_1549 : _GEN_1815; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1817 = 8'h83 == out_iindex_1 ? _out_T_1549 : _GEN_1816; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1818 = 8'h84 == out_iindex_1 ? _out_T_1549 : _GEN_1817; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1819 = 8'h85 == out_iindex_1 ? _out_T_1549 : _GEN_1818; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1820 = 8'h86 == out_iindex_1 ? _out_T_1549 : _GEN_1819; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1821 = 8'h87 == out_iindex_1 ? _out_T_1549 : _GEN_1820; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1822 = 8'h88 == out_iindex_1 ? _out_T_1549 : _GEN_1821; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1823 = 8'h89 == out_iindex_1 ? _out_T_1549 : _GEN_1822; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1824 = 8'h8a == out_iindex_1 ? _out_T_1549 : _GEN_1823; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1825 = 8'h8b == out_iindex_1 ? _out_T_1549 : _GEN_1824; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1826 = 8'h8c == out_iindex_1 ? _out_T_1549 : _GEN_1825; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1827 = 8'h8d == out_iindex_1 ? _out_T_1549 : _GEN_1826; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1828 = 8'h8e == out_iindex_1 ? _out_T_1549 : _GEN_1827; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1829 = 8'h8f == out_iindex_1 ? _out_T_1549 : _GEN_1828; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1830 = 8'h90 == out_iindex_1 ? _out_T_1549 : _GEN_1829; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1831 = 8'h91 == out_iindex_1 ? _out_T_1549 : _GEN_1830; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1832 = 8'h92 == out_iindex_1 ? _out_T_1549 : _GEN_1831; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1833 = 8'h93 == out_iindex_1 ? _out_T_1549 : _GEN_1832; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1834 = 8'h94 == out_iindex_1 ? _out_T_1549 : _GEN_1833; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1835 = 8'h95 == out_iindex_1 ? _out_T_1549 : _GEN_1834; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1836 = 8'h96 == out_iindex_1 ? _out_T_1549 : _GEN_1835; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1837 = 8'h97 == out_iindex_1 ? _out_T_1549 : _GEN_1836; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1838 = 8'h98 == out_iindex_1 ? _out_T_1549 : _GEN_1837; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1839 = 8'h99 == out_iindex_1 ? _out_T_1549 : _GEN_1838; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1840 = 8'h9a == out_iindex_1 ? _out_T_1549 : _GEN_1839; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1841 = 8'h9b == out_iindex_1 ? _out_T_1549 : _GEN_1840; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1842 = 8'h9c == out_iindex_1 ? _out_T_1549 : _GEN_1841; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1843 = 8'h9d == out_iindex_1 ? _out_T_1549 : _GEN_1842; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1844 = 8'h9e == out_iindex_1 ? _out_T_1549 : _GEN_1843; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1845 = 8'h9f == out_iindex_1 ? _out_T_1549 : _GEN_1844; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1846 = 8'ha0 == out_iindex_1 ? _out_T_1549 : _GEN_1845; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1847 = 8'ha1 == out_iindex_1 ? _out_T_1549 : _GEN_1846; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1848 = 8'ha2 == out_iindex_1 ? _out_T_1549 : _GEN_1847; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1849 = 8'ha3 == out_iindex_1 ? _out_T_1549 : _GEN_1848; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1850 = 8'ha4 == out_iindex_1 ? _out_T_1549 : _GEN_1849; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1851 = 8'ha5 == out_iindex_1 ? _out_T_1549 : _GEN_1850; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1852 = 8'ha6 == out_iindex_1 ? _out_T_1549 : _GEN_1851; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1853 = 8'ha7 == out_iindex_1 ? _out_T_1549 : _GEN_1852; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1854 = 8'ha8 == out_iindex_1 ? _out_T_1549 : _GEN_1853; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1855 = 8'ha9 == out_iindex_1 ? _out_T_1549 : _GEN_1854; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1856 = 8'haa == out_iindex_1 ? _out_T_1549 : _GEN_1855; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1857 = 8'hab == out_iindex_1 ? _out_T_1549 : _GEN_1856; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1858 = 8'hac == out_iindex_1 ? _out_T_1549 : _GEN_1857; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1859 = 8'had == out_iindex_1 ? _out_T_1549 : _GEN_1858; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1860 = 8'hae == out_iindex_1 ? _out_T_1549 : _GEN_1859; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1861 = 8'haf == out_iindex_1 ? _out_T_1549 : _GEN_1860; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1862 = 8'hb0 == out_iindex_1 ? _out_T_1549 : _GEN_1861; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1863 = 8'hb1 == out_iindex_1 ? _out_T_1549 : _GEN_1862; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1864 = 8'hb2 == out_iindex_1 ? _out_T_1549 : _GEN_1863; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1865 = 8'hb3 == out_iindex_1 ? _out_T_1549 : _GEN_1864; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1866 = 8'hb4 == out_iindex_1 ? _out_T_1549 : _GEN_1865; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1867 = 8'hb5 == out_iindex_1 ? _out_T_1549 : _GEN_1866; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1868 = 8'hb6 == out_iindex_1 ? _out_T_1549 : _GEN_1867; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1869 = 8'hb7 == out_iindex_1 ? _out_T_1549 : _GEN_1868; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1870 = 8'hb8 == out_iindex_1 ? _out_T_1549 : _GEN_1869; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1871 = 8'hb9 == out_iindex_1 ? _out_T_1549 : _GEN_1870; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1872 = 8'hba == out_iindex_1 ? _out_T_1549 : _GEN_1871; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1873 = 8'hbb == out_iindex_1 ? _out_T_1549 : _GEN_1872; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1874 = 8'hbc == out_iindex_1 ? _out_T_1549 : _GEN_1873; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1875 = 8'hbd == out_iindex_1 ? _out_T_1549 : _GEN_1874; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1876 = 8'hbe == out_iindex_1 ? _out_T_1549 : _GEN_1875; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1877 = 8'hbf == out_iindex_1 ? _out_T_1549 : _GEN_1876; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1878 = 8'hc0 == out_iindex_1 ? _out_T_1549 : _GEN_1877; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1879 = 8'hc1 == out_iindex_1 ? _out_T_1549 : _GEN_1878; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1880 = 8'hc2 == out_iindex_1 ? _out_T_1549 : _GEN_1879; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1881 = 8'hc3 == out_iindex_1 ? _out_T_1549 : _GEN_1880; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1882 = 8'hc4 == out_iindex_1 ? _out_T_1549 : _GEN_1881; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1883 = 8'hc5 == out_iindex_1 ? _out_T_1549 : _GEN_1882; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1884 = 8'hc6 == out_iindex_1 ? _out_T_1549 : _GEN_1883; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1885 = 8'hc7 == out_iindex_1 ? _out_T_1549 : _GEN_1884; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1886 = 8'hc8 == out_iindex_1 ? _out_T_1549 : _GEN_1885; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1887 = 8'hc9 == out_iindex_1 ? _out_T_1549 : _GEN_1886; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1888 = 8'hca == out_iindex_1 ? _out_T_1549 : _GEN_1887; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1889 = 8'hcb == out_iindex_1 ? _out_T_1549 : _GEN_1888; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1890 = 8'hcc == out_iindex_1 ? _out_T_1549 : _GEN_1889; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1891 = 8'hcd == out_iindex_1 ? _out_T_1549 : _GEN_1890; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1892 = 8'hce == out_iindex_1 ? _out_T_1549 : _GEN_1891; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1893 = 8'hcf == out_iindex_1 ? _out_T_1549 : _GEN_1892; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1894 = 8'hd0 == out_iindex_1 ? _out_T_1549 : _GEN_1893; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1895 = 8'hd1 == out_iindex_1 ? _out_T_1549 : _GEN_1894; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1896 = 8'hd2 == out_iindex_1 ? _out_T_1549 : _GEN_1895; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1897 = 8'hd3 == out_iindex_1 ? _out_T_1549 : _GEN_1896; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1898 = 8'hd4 == out_iindex_1 ? _out_T_1549 : _GEN_1897; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1899 = 8'hd5 == out_iindex_1 ? _out_T_1549 : _GEN_1898; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1900 = 8'hd6 == out_iindex_1 ? _out_T_1549 : _GEN_1899; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1901 = 8'hd7 == out_iindex_1 ? _out_T_1549 : _GEN_1900; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1902 = 8'hd8 == out_iindex_1 ? _out_T_1549 : _GEN_1901; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1903 = 8'hd9 == out_iindex_1 ? _out_T_1549 : _GEN_1902; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1904 = 8'hda == out_iindex_1 ? _out_T_1549 : _GEN_1903; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1905 = 8'hdb == out_iindex_1 ? _out_T_1549 : _GEN_1904; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1906 = 8'hdc == out_iindex_1 ? _out_T_1549 : _GEN_1905; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1907 = 8'hdd == out_iindex_1 ? _out_T_1549 : _GEN_1906; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1908 = 8'hde == out_iindex_1 ? _out_T_1549 : _GEN_1907; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1909 = 8'hdf == out_iindex_1 ? _out_T_1549 : _GEN_1908; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1910 = 8'he0 == out_iindex_1 ? _out_T_1549 : _GEN_1909; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1911 = 8'he1 == out_iindex_1 ? _out_T_1549 : _GEN_1910; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1912 = 8'he2 == out_iindex_1 ? _out_T_1549 : _GEN_1911; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1913 = 8'he3 == out_iindex_1 ? _out_T_1549 : _GEN_1912; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1914 = 8'he4 == out_iindex_1 ? _out_T_1549 : _GEN_1913; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1915 = 8'he5 == out_iindex_1 ? _out_T_1549 : _GEN_1914; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1916 = 8'he6 == out_iindex_1 ? _out_T_1549 : _GEN_1915; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1917 = 8'he7 == out_iindex_1 ? _out_T_1549 : _GEN_1916; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1918 = 8'he8 == out_iindex_1 ? _out_T_1549 : _GEN_1917; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1919 = 8'he9 == out_iindex_1 ? _out_T_1549 : _GEN_1918; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1920 = 8'hea == out_iindex_1 ? _out_T_1549 : _GEN_1919; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1921 = 8'heb == out_iindex_1 ? _out_T_1549 : _GEN_1920; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1922 = 8'hec == out_iindex_1 ? _out_T_1549 : _GEN_1921; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1923 = 8'hed == out_iindex_1 ? _out_T_1549 : _GEN_1922; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1924 = 8'hee == out_iindex_1 ? _out_T_1549 : _GEN_1923; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1925 = 8'hef == out_iindex_1 ? _out_T_1549 : _GEN_1924; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1926 = 8'hf0 == out_iindex_1 ? _out_T_1549 : _GEN_1925; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1927 = 8'hf1 == out_iindex_1 ? _out_T_1549 : _GEN_1926; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1928 = 8'hf2 == out_iindex_1 ? _out_T_1549 : _GEN_1927; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1929 = 8'hf3 == out_iindex_1 ? _out_T_1549 : _GEN_1928; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1930 = 8'hf4 == out_iindex_1 ? _out_T_1549 : _GEN_1929; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1931 = 8'hf5 == out_iindex_1 ? _out_T_1549 : _GEN_1930; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1932 = 8'hf6 == out_iindex_1 ? _out_T_1549 : _GEN_1931; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1933 = 8'hf7 == out_iindex_1 ? _out_T_1549 : _GEN_1932; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1934 = 8'hf8 == out_iindex_1 ? _out_T_1549 : _GEN_1933; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1935 = 8'hf9 == out_iindex_1 ? _out_T_1549 : _GEN_1934; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1936 = 8'hfa == out_iindex_1 ? _out_T_1549 : _GEN_1935; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1937 = 8'hfb == out_iindex_1 ? _out_T_1549 : _GEN_1936; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1938 = 8'hfc == out_iindex_1 ? _out_T_1549 : _GEN_1937; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1939 = 8'hfd == out_iindex_1 ? _out_T_1549 : _GEN_1938; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1940 = 8'hfe == out_iindex_1 ? _out_T_1549 : _GEN_1939; // @[MuxLiteral.scala 48:{10,10}]
  wire  _GEN_1941 = 8'hff == out_iindex_1 ? _out_T_1549 : _GEN_1940; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1943 = 8'h1 == out_iindex_1 ? 64'h9004a6237b3494f3 : 64'hc0006f7b349073; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1944 = 8'h2 == out_iindex_1 ? 64'h7b2410730ff0000f : _GEN_1943; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1945 = 8'h3 == out_iindex_1 ? 64'hfe84849300000497 : _GEN_1944; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1946 = 8'h4 == out_iindex_1 ? 64'h9084a023f1402473 : _GEN_1945; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1947 = 8'h5 == out_iindex_1 ? 64'hc004440300940433 : _GEN_1946; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1948 = 8'h6 == out_iindex_1 ? 64'hfe0406e300347413 : _GEN_1947; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1949 = 8'h7 == out_iindex_1 ? 64'h40c6300147413 : _GEN_1948; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1950 = 8'h8 == out_iindex_1 ? 64'h48480677b202473 : _GEN_1949; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1951 = 8'h9 == out_iindex_1 ? 64'h7b3494f39004a223 : _GEN_1950; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1952 = 8'ha == out_iindex_1 ? 64'hf1402473ab1ff06f : _GEN_1951; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1953 = 8'hb == out_iindex_1 ? 64'h7b2024739084a423 : _GEN_1952; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1954 = 8'hc == out_iindex_1 ? 64'h7b2000737b3024f3 : _GEN_1953; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1955 = 8'hd == out_iindex_1 ? 64'h0 : _GEN_1954; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1956 = 8'he == out_iindex_1 ? 64'h0 : _GEN_1955; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1957 = 8'hf == out_iindex_1 ? 64'h0 : _GEN_1956; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1958 = 8'h10 == out_iindex_1 ? 64'h0 : _GEN_1957; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1959 = 8'h11 == out_iindex_1 ? 64'h0 : _GEN_1958; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1960 = 8'h12 == out_iindex_1 ? 64'h0 : _GEN_1959; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1961 = 8'h13 == out_iindex_1 ? 64'h0 : _GEN_1960; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1962 = 8'h14 == out_iindex_1 ? 64'h0 : _GEN_1961; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1963 = 8'h15 == out_iindex_1 ? 64'h0 : _GEN_1962; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1964 = 8'h16 == out_iindex_1 ? 64'h0 : _GEN_1963; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1965 = 8'h17 == out_iindex_1 ? 64'h0 : _GEN_1964; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1966 = 8'h18 == out_iindex_1 ? 64'h0 : _GEN_1965; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1967 = 8'h19 == out_iindex_1 ? 64'h0 : _GEN_1966; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1968 = 8'h1a == out_iindex_1 ? 64'h0 : _GEN_1967; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1969 = 8'h1b == out_iindex_1 ? 64'h0 : _GEN_1968; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1970 = 8'h1c == out_iindex_1 ? 64'h0 : _GEN_1969; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1971 = 8'h1d == out_iindex_1 ? 64'h0 : _GEN_1970; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1972 = 8'h1e == out_iindex_1 ? 64'h0 : _GEN_1971; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1973 = 8'h1f == out_iindex_1 ? 64'h0 : _GEN_1972; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1974 = 8'h20 == out_iindex_1 ? 64'h0 : _GEN_1973; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1975 = 8'h21 == out_iindex_1 ? 64'h0 : _GEN_1974; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1976 = 8'h22 == out_iindex_1 ? 64'h0 : _GEN_1975; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1977 = 8'h23 == out_iindex_1 ? 64'h0 : _GEN_1976; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1978 = 8'h24 == out_iindex_1 ? 64'h0 : _GEN_1977; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1979 = 8'h25 == out_iindex_1 ? 64'h0 : _GEN_1978; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1980 = 8'h26 == out_iindex_1 ? 64'h0 : _GEN_1979; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1981 = 8'h27 == out_iindex_1 ? 64'h0 : _GEN_1980; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1982 = 8'h28 == out_iindex_1 ? 64'h0 : _GEN_1981; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1983 = 8'h29 == out_iindex_1 ? 64'h0 : _GEN_1982; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1984 = 8'h2a == out_iindex_1 ? 64'h0 : _GEN_1983; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1985 = 8'h2b == out_iindex_1 ? 64'h0 : _GEN_1984; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1986 = 8'h2c == out_iindex_1 ? 64'h0 : _GEN_1985; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1987 = 8'h2d == out_iindex_1 ? 64'h0 : _GEN_1986; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1988 = 8'h2e == out_iindex_1 ? 64'h0 : _GEN_1987; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1989 = 8'h2f == out_iindex_1 ? 64'h0 : _GEN_1988; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1990 = 8'h30 == out_iindex_1 ? 64'h0 : _GEN_1989; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1991 = 8'h31 == out_iindex_1 ? 64'h0 : _GEN_1990; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1992 = 8'h32 == out_iindex_1 ? 64'h0 : _GEN_1991; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1993 = 8'h33 == out_iindex_1 ? 64'h0 : _GEN_1992; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1994 = 8'h34 == out_iindex_1 ? 64'h0 : _GEN_1993; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1995 = 8'h35 == out_iindex_1 ? 64'h0 : _GEN_1994; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1996 = 8'h36 == out_iindex_1 ? 64'h0 : _GEN_1995; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1997 = 8'h37 == out_iindex_1 ? 64'h0 : _GEN_1996; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1998 = 8'h38 == out_iindex_1 ? 64'h0 : _GEN_1997; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_1999 = 8'h39 == out_iindex_1 ? 64'h0 : _GEN_1998; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2000 = 8'h3a == out_iindex_1 ? 64'h0 : _GEN_1999; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2001 = 8'h3b == out_iindex_1 ? 64'h0 : _GEN_2000; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2002 = 8'h3c == out_iindex_1 ? 64'h0 : _GEN_2001; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2003 = 8'h3d == out_iindex_1 ? 64'h0 : _GEN_2002; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2004 = 8'h3e == out_iindex_1 ? 64'h0 : _GEN_2003; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2005 = 8'h3f == out_iindex_1 ? 64'h0 : _GEN_2004; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2006 = 8'h40 == out_iindex_1 ? 64'h0 : _GEN_2005; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2007 = 8'h41 == out_iindex_1 ? 64'h0 : _GEN_2006; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2008 = 8'h42 == out_iindex_1 ? 64'h0 : _GEN_2007; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2009 = 8'h43 == out_iindex_1 ? 64'h0 : _GEN_2008; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2010 = 8'h44 == out_iindex_1 ? 64'h0 : _GEN_2009; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2011 = 8'h45 == out_iindex_1 ? 64'h0 : _GEN_2010; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2012 = 8'h46 == out_iindex_1 ? 64'h0 : _GEN_2011; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2013 = 8'h47 == out_iindex_1 ? 64'h0 : _GEN_2012; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2014 = 8'h48 == out_iindex_1 ? 64'h0 : _GEN_2013; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2015 = 8'h49 == out_iindex_1 ? 64'h0 : _GEN_2014; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2016 = 8'h4a == out_iindex_1 ? 64'h0 : _GEN_2015; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2017 = 8'h4b == out_iindex_1 ? 64'h0 : _GEN_2016; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2018 = 8'h4c == out_iindex_1 ? 64'h0 : _GEN_2017; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2019 = 8'h4d == out_iindex_1 ? 64'h0 : _GEN_2018; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2020 = 8'h4e == out_iindex_1 ? 64'h0 : _GEN_2019; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2021 = 8'h4f == out_iindex_1 ? 64'h0 : _GEN_2020; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2022 = 8'h50 == out_iindex_1 ? 64'h0 : _GEN_2021; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2023 = 8'h51 == out_iindex_1 ? 64'h0 : _GEN_2022; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2024 = 8'h52 == out_iindex_1 ? 64'h0 : _GEN_2023; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2025 = 8'h53 == out_iindex_1 ? 64'h0 : _GEN_2024; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2026 = 8'h54 == out_iindex_1 ? 64'h0 : _GEN_2025; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2027 = 8'h55 == out_iindex_1 ? 64'h0 : _GEN_2026; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2028 = 8'h56 == out_iindex_1 ? 64'h0 : _GEN_2027; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2029 = 8'h57 == out_iindex_1 ? 64'h0 : _GEN_2028; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2030 = 8'h58 == out_iindex_1 ? 64'h0 : _GEN_2029; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2031 = 8'h59 == out_iindex_1 ? 64'h0 : _GEN_2030; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2032 = 8'h5a == out_iindex_1 ? 64'h0 : _GEN_2031; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2033 = 8'h5b == out_iindex_1 ? 64'h0 : _GEN_2032; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2034 = 8'h5c == out_iindex_1 ? 64'h0 : _GEN_2033; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2035 = 8'h5d == out_iindex_1 ? 64'h0 : _GEN_2034; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2036 = 8'h5e == out_iindex_1 ? 64'h0 : _GEN_2035; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2037 = 8'h5f == out_iindex_1 ? 64'h0 : _GEN_2036; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2038 = 8'h60 == out_iindex_1 ? 64'h2c0006f : _GEN_2037; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2039 = 8'h61 == out_iindex_1 ? 64'h0 : _GEN_2038; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2040 = 8'h62 == out_iindex_1 ? 64'h0 : _GEN_2039; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2041 = 8'h63 == out_iindex_1 ? 64'h0 : _GEN_2040; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2042 = 8'h64 == out_iindex_1 ? 64'h0 : _GEN_2041; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2043 = 8'h65 == out_iindex_1 ? out_prepend_101 : _GEN_2042; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2044 = 8'h66 == out_iindex_1 ? out_prepend_361 : _GEN_2043; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2045 = 8'h67 == out_iindex_1 ? out_prepend_693 : _GEN_2044; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2046 = 8'h68 == out_iindex_1 ? out_prepend_924 : _GEN_2045; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2047 = 8'h69 == out_iindex_1 ? out_prepend_530 : _GEN_2046; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2048 = 8'h6a == out_iindex_1 ? out_prepend_276 : _GEN_2047; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2049 = 8'h6b == out_iindex_1 ? out_prepend_1043 : _GEN_2048; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2050 = 8'h6c == out_iindex_1 ? out_prepend_742 : _GEN_2049; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2051 = 8'h6d == out_iindex_1 ? out_prepend_460 : _GEN_2050; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2052 = 8'h6e == out_iindex_1 ? out_prepend_192 : _GEN_2051; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2053 = 8'h6f == out_iindex_1 ? out_prepend_1113 : _GEN_2052; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2054 = 8'h70 == out_iindex_1 ? out_prepend_819 : _GEN_2053; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2055 = 8'h71 == out_iindex_1 ? 64'h0 : _GEN_2054; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2056 = 8'h72 == out_iindex_1 ? 64'h0 : _GEN_2055; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2057 = 8'h73 == out_iindex_1 ? 64'h0 : _GEN_2056; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2058 = 8'h74 == out_iindex_1 ? 64'h0 : _GEN_2057; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2059 = 8'h75 == out_iindex_1 ? 64'h0 : _GEN_2058; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2060 = 8'h76 == out_iindex_1 ? 64'h0 : _GEN_2059; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2061 = 8'h77 == out_iindex_1 ? 64'h0 : _GEN_2060; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2062 = 8'h78 == out_iindex_1 ? 64'h0 : _GEN_2061; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2063 = 8'h79 == out_iindex_1 ? 64'h0 : _GEN_2062; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2064 = 8'h7a == out_iindex_1 ? 64'h0 : _GEN_2063; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2065 = 8'h7b == out_iindex_1 ? 64'h0 : _GEN_2064; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2066 = 8'h7c == out_iindex_1 ? 64'h0 : _GEN_2065; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2067 = 8'h7d == out_iindex_1 ? 64'h0 : _GEN_2066; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2068 = 8'h7e == out_iindex_1 ? 64'h0 : _GEN_2067; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2069 = 8'h7f == out_iindex_1 ? 64'h0 : _GEN_2068; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2070 = 8'h80 == out_iindex_1 ? out_prepend_100 : _GEN_2069; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2071 = 8'h81 == out_iindex_1 ? out_prepend_100 : _GEN_2070; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2072 = 8'h82 == out_iindex_1 ? out_prepend_100 : _GEN_2071; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2073 = 8'h83 == out_iindex_1 ? out_prepend_100 : _GEN_2072; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2074 = 8'h84 == out_iindex_1 ? out_prepend_100 : _GEN_2073; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2075 = 8'h85 == out_iindex_1 ? out_prepend_100 : _GEN_2074; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2076 = 8'h86 == out_iindex_1 ? out_prepend_100 : _GEN_2075; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2077 = 8'h87 == out_iindex_1 ? out_prepend_100 : _GEN_2076; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2078 = 8'h88 == out_iindex_1 ? out_prepend_100 : _GEN_2077; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2079 = 8'h89 == out_iindex_1 ? out_prepend_100 : _GEN_2078; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2080 = 8'h8a == out_iindex_1 ? out_prepend_100 : _GEN_2079; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2081 = 8'h8b == out_iindex_1 ? out_prepend_100 : _GEN_2080; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2082 = 8'h8c == out_iindex_1 ? out_prepend_100 : _GEN_2081; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2083 = 8'h8d == out_iindex_1 ? out_prepend_100 : _GEN_2082; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2084 = 8'h8e == out_iindex_1 ? out_prepend_100 : _GEN_2083; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2085 = 8'h8f == out_iindex_1 ? out_prepend_100 : _GEN_2084; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2086 = 8'h90 == out_iindex_1 ? out_prepend_100 : _GEN_2085; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2087 = 8'h91 == out_iindex_1 ? out_prepend_100 : _GEN_2086; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2088 = 8'h92 == out_iindex_1 ? out_prepend_100 : _GEN_2087; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2089 = 8'h93 == out_iindex_1 ? out_prepend_100 : _GEN_2088; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2090 = 8'h94 == out_iindex_1 ? out_prepend_100 : _GEN_2089; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2091 = 8'h95 == out_iindex_1 ? out_prepend_100 : _GEN_2090; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2092 = 8'h96 == out_iindex_1 ? out_prepend_100 : _GEN_2091; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2093 = 8'h97 == out_iindex_1 ? out_prepend_100 : _GEN_2092; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2094 = 8'h98 == out_iindex_1 ? out_prepend_100 : _GEN_2093; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2095 = 8'h99 == out_iindex_1 ? out_prepend_100 : _GEN_2094; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2096 = 8'h9a == out_iindex_1 ? out_prepend_100 : _GEN_2095; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2097 = 8'h9b == out_iindex_1 ? out_prepend_100 : _GEN_2096; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2098 = 8'h9c == out_iindex_1 ? out_prepend_100 : _GEN_2097; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2099 = 8'h9d == out_iindex_1 ? out_prepend_100 : _GEN_2098; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2100 = 8'h9e == out_iindex_1 ? out_prepend_100 : _GEN_2099; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2101 = 8'h9f == out_iindex_1 ? out_prepend_100 : _GEN_2100; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2102 = 8'ha0 == out_iindex_1 ? out_prepend_100 : _GEN_2101; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2103 = 8'ha1 == out_iindex_1 ? out_prepend_100 : _GEN_2102; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2104 = 8'ha2 == out_iindex_1 ? out_prepend_100 : _GEN_2103; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2105 = 8'ha3 == out_iindex_1 ? out_prepend_100 : _GEN_2104; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2106 = 8'ha4 == out_iindex_1 ? out_prepend_100 : _GEN_2105; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2107 = 8'ha5 == out_iindex_1 ? out_prepend_100 : _GEN_2106; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2108 = 8'ha6 == out_iindex_1 ? out_prepend_100 : _GEN_2107; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2109 = 8'ha7 == out_iindex_1 ? out_prepend_100 : _GEN_2108; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2110 = 8'ha8 == out_iindex_1 ? out_prepend_100 : _GEN_2109; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2111 = 8'ha9 == out_iindex_1 ? out_prepend_100 : _GEN_2110; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2112 = 8'haa == out_iindex_1 ? out_prepend_100 : _GEN_2111; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2113 = 8'hab == out_iindex_1 ? out_prepend_100 : _GEN_2112; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2114 = 8'hac == out_iindex_1 ? out_prepend_100 : _GEN_2113; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2115 = 8'had == out_iindex_1 ? out_prepend_100 : _GEN_2114; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2116 = 8'hae == out_iindex_1 ? out_prepend_100 : _GEN_2115; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2117 = 8'haf == out_iindex_1 ? out_prepend_100 : _GEN_2116; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2118 = 8'hb0 == out_iindex_1 ? out_prepend_100 : _GEN_2117; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2119 = 8'hb1 == out_iindex_1 ? out_prepend_100 : _GEN_2118; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2120 = 8'hb2 == out_iindex_1 ? out_prepend_100 : _GEN_2119; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2121 = 8'hb3 == out_iindex_1 ? out_prepend_100 : _GEN_2120; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2122 = 8'hb4 == out_iindex_1 ? out_prepend_100 : _GEN_2121; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2123 = 8'hb5 == out_iindex_1 ? out_prepend_100 : _GEN_2122; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2124 = 8'hb6 == out_iindex_1 ? out_prepend_100 : _GEN_2123; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2125 = 8'hb7 == out_iindex_1 ? out_prepend_100 : _GEN_2124; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2126 = 8'hb8 == out_iindex_1 ? out_prepend_100 : _GEN_2125; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2127 = 8'hb9 == out_iindex_1 ? out_prepend_100 : _GEN_2126; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2128 = 8'hba == out_iindex_1 ? out_prepend_100 : _GEN_2127; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2129 = 8'hbb == out_iindex_1 ? out_prepend_100 : _GEN_2128; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2130 = 8'hbc == out_iindex_1 ? out_prepend_100 : _GEN_2129; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2131 = 8'hbd == out_iindex_1 ? out_prepend_100 : _GEN_2130; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2132 = 8'hbe == out_iindex_1 ? out_prepend_100 : _GEN_2131; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2133 = 8'hbf == out_iindex_1 ? out_prepend_100 : _GEN_2132; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2134 = 8'hc0 == out_iindex_1 ? out_prepend_100 : _GEN_2133; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2135 = 8'hc1 == out_iindex_1 ? out_prepend_100 : _GEN_2134; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2136 = 8'hc2 == out_iindex_1 ? out_prepend_100 : _GEN_2135; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2137 = 8'hc3 == out_iindex_1 ? out_prepend_100 : _GEN_2136; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2138 = 8'hc4 == out_iindex_1 ? out_prepend_100 : _GEN_2137; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2139 = 8'hc5 == out_iindex_1 ? out_prepend_100 : _GEN_2138; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2140 = 8'hc6 == out_iindex_1 ? out_prepend_100 : _GEN_2139; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2141 = 8'hc7 == out_iindex_1 ? out_prepend_100 : _GEN_2140; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2142 = 8'hc8 == out_iindex_1 ? out_prepend_100 : _GEN_2141; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2143 = 8'hc9 == out_iindex_1 ? out_prepend_100 : _GEN_2142; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2144 = 8'hca == out_iindex_1 ? out_prepend_100 : _GEN_2143; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2145 = 8'hcb == out_iindex_1 ? out_prepend_100 : _GEN_2144; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2146 = 8'hcc == out_iindex_1 ? out_prepend_100 : _GEN_2145; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2147 = 8'hcd == out_iindex_1 ? out_prepend_100 : _GEN_2146; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2148 = 8'hce == out_iindex_1 ? out_prepend_100 : _GEN_2147; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2149 = 8'hcf == out_iindex_1 ? out_prepend_100 : _GEN_2148; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2150 = 8'hd0 == out_iindex_1 ? out_prepend_100 : _GEN_2149; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2151 = 8'hd1 == out_iindex_1 ? out_prepend_100 : _GEN_2150; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2152 = 8'hd2 == out_iindex_1 ? out_prepend_100 : _GEN_2151; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2153 = 8'hd3 == out_iindex_1 ? out_prepend_100 : _GEN_2152; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2154 = 8'hd4 == out_iindex_1 ? out_prepend_100 : _GEN_2153; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2155 = 8'hd5 == out_iindex_1 ? out_prepend_100 : _GEN_2154; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2156 = 8'hd6 == out_iindex_1 ? out_prepend_100 : _GEN_2155; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2157 = 8'hd7 == out_iindex_1 ? out_prepend_100 : _GEN_2156; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2158 = 8'hd8 == out_iindex_1 ? out_prepend_100 : _GEN_2157; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2159 = 8'hd9 == out_iindex_1 ? out_prepend_100 : _GEN_2158; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2160 = 8'hda == out_iindex_1 ? out_prepend_100 : _GEN_2159; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2161 = 8'hdb == out_iindex_1 ? out_prepend_100 : _GEN_2160; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2162 = 8'hdc == out_iindex_1 ? out_prepend_100 : _GEN_2161; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2163 = 8'hdd == out_iindex_1 ? out_prepend_100 : _GEN_2162; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2164 = 8'hde == out_iindex_1 ? out_prepend_100 : _GEN_2163; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2165 = 8'hdf == out_iindex_1 ? out_prepend_100 : _GEN_2164; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2166 = 8'he0 == out_iindex_1 ? out_prepend_100 : _GEN_2165; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2167 = 8'he1 == out_iindex_1 ? out_prepend_100 : _GEN_2166; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2168 = 8'he2 == out_iindex_1 ? out_prepend_100 : _GEN_2167; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2169 = 8'he3 == out_iindex_1 ? out_prepend_100 : _GEN_2168; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2170 = 8'he4 == out_iindex_1 ? out_prepend_100 : _GEN_2169; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2171 = 8'he5 == out_iindex_1 ? out_prepend_100 : _GEN_2170; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2172 = 8'he6 == out_iindex_1 ? out_prepend_100 : _GEN_2171; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2173 = 8'he7 == out_iindex_1 ? out_prepend_100 : _GEN_2172; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2174 = 8'he8 == out_iindex_1 ? out_prepend_100 : _GEN_2173; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2175 = 8'he9 == out_iindex_1 ? out_prepend_100 : _GEN_2174; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2176 = 8'hea == out_iindex_1 ? out_prepend_100 : _GEN_2175; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2177 = 8'heb == out_iindex_1 ? out_prepend_100 : _GEN_2176; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2178 = 8'hec == out_iindex_1 ? out_prepend_100 : _GEN_2177; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2179 = 8'hed == out_iindex_1 ? out_prepend_100 : _GEN_2178; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2180 = 8'hee == out_iindex_1 ? out_prepend_100 : _GEN_2179; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2181 = 8'hef == out_iindex_1 ? out_prepend_100 : _GEN_2180; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2182 = 8'hf0 == out_iindex_1 ? out_prepend_100 : _GEN_2181; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2183 = 8'hf1 == out_iindex_1 ? out_prepend_100 : _GEN_2182; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2184 = 8'hf2 == out_iindex_1 ? out_prepend_100 : _GEN_2183; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2185 = 8'hf3 == out_iindex_1 ? out_prepend_100 : _GEN_2184; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2186 = 8'hf4 == out_iindex_1 ? out_prepend_100 : _GEN_2185; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2187 = 8'hf5 == out_iindex_1 ? out_prepend_100 : _GEN_2186; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2188 = 8'hf6 == out_iindex_1 ? out_prepend_100 : _GEN_2187; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2189 = 8'hf7 == out_iindex_1 ? out_prepend_100 : _GEN_2188; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2190 = 8'hf8 == out_iindex_1 ? out_prepend_100 : _GEN_2189; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2191 = 8'hf9 == out_iindex_1 ? out_prepend_100 : _GEN_2190; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2192 = 8'hfa == out_iindex_1 ? out_prepend_100 : _GEN_2191; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2193 = 8'hfb == out_iindex_1 ? out_prepend_100 : _GEN_2192; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2194 = 8'hfc == out_iindex_1 ? out_prepend_100 : _GEN_2193; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2195 = 8'hfd == out_iindex_1 ? out_prepend_100 : _GEN_2194; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2196 = 8'hfe == out_iindex_1 ? out_prepend_100 : _GEN_2195; // @[MuxLiteral.scala 48:{10,10}]
  wire [63:0] _GEN_2197 = 8'hff == out_iindex_1 ? out_prepend_100 : _GEN_2196; // @[MuxLiteral.scala 48:{10,10}]
  wire [1:0] _GEN_2283 = commandRegBadHaltResume ? 2'h0 : 2'h2; // @[Debug.scala 1690:43 1692:22]
  wire [1:0] _GEN_2289 = ~goReg & out_f_woready_657 ? 2'h0 : ctrlStateReg; // @[Debug.scala 1706:116 1707:22]
  wire [1:0] _GEN_2290 = out_f_woready_471 ? 2'h0 : _GEN_2289; // @[Debug.scala 1709:31 1711:24]
  SBToTL sb2tlOpt ( // @[Debug.scala 720:52]
    .clock(sb2tlOpt_clock),
    .reset(sb2tlOpt_reset),
    .auto_out_a_ready(sb2tlOpt_auto_out_a_ready),
    .auto_out_a_valid(sb2tlOpt_auto_out_a_valid),
    .auto_out_a_bits_opcode(sb2tlOpt_auto_out_a_bits_opcode),
    .auto_out_a_bits_address(sb2tlOpt_auto_out_a_bits_address),
    .auto_out_a_bits_mask(sb2tlOpt_auto_out_a_bits_mask),
    .auto_out_a_bits_data(sb2tlOpt_auto_out_a_bits_data),
    .auto_out_d_ready(sb2tlOpt_auto_out_d_ready),
    .auto_out_d_valid(sb2tlOpt_auto_out_d_valid),
    .auto_out_d_bits_denied(sb2tlOpt_auto_out_d_bits_denied),
    .auto_out_d_bits_data(sb2tlOpt_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(sb2tlOpt_auto_out_d_bits_corrupt),
    .io_rdEn(sb2tlOpt_io_rdEn),
    .io_wrEn(sb2tlOpt_io_wrEn),
    .io_addrIn(sb2tlOpt_io_addrIn),
    .io_dataIn(sb2tlOpt_io_dataIn),
    .io_sizeIn(sb2tlOpt_io_sizeIn),
    .io_rdLegal(sb2tlOpt_io_rdLegal),
    .io_wrLegal(sb2tlOpt_io_wrLegal),
    .io_rdDone(sb2tlOpt_io_rdDone),
    .io_wrDone(sb2tlOpt_io_wrDone),
    .io_respError(sb2tlOpt_io_respError),
    .io_dataOut(sb2tlOpt_io_dataOut),
    .io_rdLoad_0(sb2tlOpt_io_rdLoad_0),
    .io_rdLoad_1(sb2tlOpt_io_rdLoad_1),
    .io_rdLoad_2(sb2tlOpt_io_rdLoad_2),
    .io_rdLoad_3(sb2tlOpt_io_rdLoad_3),
    .io_rdLoad_4(sb2tlOpt_io_rdLoad_4),
    .io_rdLoad_5(sb2tlOpt_io_rdLoad_5),
    .io_rdLoad_6(sb2tlOpt_io_rdLoad_6),
    .io_rdLoad_7(sb2tlOpt_io_rdLoad_7),
    .io_sbStateOut(sb2tlOpt_io_sbStateOut)
  );
  AsyncResetSynchronizerShiftReg_w1_d3_i0 hartIsInResetSync_0_debug_hartReset_0 ( // @[ShiftReg.scala 45:23]
    .clock(hartIsInResetSync_0_debug_hartReset_0_clock),
    .reset(hartIsInResetSync_0_debug_hartReset_0_reset),
    .io_d(hartIsInResetSync_0_debug_hartReset_0_io_d),
    .io_q(hartIsInResetSync_0_debug_hartReset_0_io_q)
  );
  assign auto_sb2tlOpt_out_a_valid = sb2tlOpt_auto_out_a_valid; // @[LazyModule.scala 311:12]
  assign auto_sb2tlOpt_out_a_bits_opcode = sb2tlOpt_auto_out_a_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_sb2tlOpt_out_a_bits_address = sb2tlOpt_auto_out_a_bits_address; // @[LazyModule.scala 311:12]
  assign auto_sb2tlOpt_out_a_bits_mask = sb2tlOpt_auto_out_a_bits_mask; // @[LazyModule.scala 311:12]
  assign auto_sb2tlOpt_out_a_bits_data = sb2tlOpt_auto_out_a_bits_data; // @[LazyModule.scala 311:12]
  assign auto_sb2tlOpt_out_d_ready = sb2tlOpt_auto_out_d_ready; // @[LazyModule.scala 311:12]
  assign auto_tl_in_a_ready = auto_tl_in_d_ready; // @[RegisterRouter.scala 82:24]
  assign auto_tl_in_d_valid = auto_tl_in_a_valid; // @[RegisterRouter.scala 82:24]
  assign auto_tl_in_d_bits_opcode = {{2'd0}, in_1_bits_read}; // @[Nodes.scala 1210:84 RegisterRouter.scala 97:19]
  assign auto_tl_in_d_bits_size = auto_tl_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_tl_in_d_bits_source = auto_tl_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_tl_in_d_bits_data = _GEN_1941 ? _GEN_2197 : 64'h0; // @[RegisterRouter.scala 82:24]
  assign auto_dmi_in_a_ready = auto_dmi_in_d_ready; // @[RegisterRouter.scala 82:24]
  assign auto_dmi_in_d_valid = auto_dmi_in_a_valid; // @[RegisterRouter.scala 82:24]
  assign auto_dmi_in_d_bits_opcode = {{2'd0}, in_bits_read}; // @[Nodes.scala 1210:84 RegisterRouter.scala 97:19]
  assign auto_dmi_in_d_bits_size = auto_dmi_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_dmi_in_d_bits_source = auto_dmi_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_dmi_in_d_bits_data = out_out_bits_data_out ? out_out_bits_data_out_1 : 32'h0; // @[RegisterRouter.scala 82:24]
  assign io_innerCtrl_ready = 1'h1; // @[Debug.scala 835:24]
  assign io_hgDebugInt_0 = hrDebugIntReg_0; // @[package.scala 66:75]
  assign sb2tlOpt_clock = io_tl_clock; // @[Debug.scala 753:23]
  assign sb2tlOpt_reset = io_tl_reset; // @[Debug.scala 754:23]
  assign sb2tlOpt_auto_out_a_ready = auto_sb2tlOpt_out_a_ready; // @[LazyModule.scala 311:12]
  assign sb2tlOpt_auto_out_d_valid = auto_sb2tlOpt_out_d_valid; // @[LazyModule.scala 311:12]
  assign sb2tlOpt_auto_out_d_bits_denied = auto_sb2tlOpt_out_d_bits_denied; // @[LazyModule.scala 311:12]
  assign sb2tlOpt_auto_out_d_bits_data = auto_sb2tlOpt_out_d_bits_data; // @[LazyModule.scala 311:12]
  assign sb2tlOpt_auto_out_d_bits_corrupt = auto_sb2tlOpt_out_d_bits_corrupt; // @[LazyModule.scala 311:12]
  assign sb2tlOpt_io_rdEn = tryRdEn & _SBADDRESSFieldsReg_0_T_2 & _SBADDRESSFieldsReg_0_T_4 & _SBADDRESSFieldsReg_0_T &
    _sb2tlOpt_io_wrEn_T_7 & _sb2tlOpt_io_wrEn_T_9; // @[SBA.scala 197:156]
  assign sb2tlOpt_io_wrEn = _SBDATAFieldsReg_0_0_T_5 & ~sbAccessError & ~sbAlignmentError; // @[SBA.scala 196:156]
  assign sb2tlOpt_io_addrIn = out_f_woready_34 ? _sb2tlOpt_io_addrIn_T_1 : _autoIncrementedAddr_T; // @[SBA.scala 128:34]
  assign sb2tlOpt_io_dataIn = sb2tlOpt_io_wrEn ? _sb2tlOpt_io_dataIn_T : _sb2tlOpt_io_dataIn_T_1; // @[SBA.scala 172:34]
  assign sb2tlOpt_io_sizeIn = SBCSFieldsReg_sbaccess; // @[SBA.scala 198:30]
  assign hartIsInResetSync_0_debug_hartReset_0_clock = clock;
  assign hartIsInResetSync_0_debug_hartReset_0_reset = reset;
  assign hartIsInResetSync_0_debug_hartReset_0_io_d = io_hartIsInReset_0; // @[ShiftReg.scala 47:16]
  always @(posedge clock) begin
    haltedBitRegs <= _GEN_65[0];
    resumeReqRegs <= _GEN_66[0];
    if (_T_1) begin // @[Debug.scala 918:44]
      haveResetBitRegs <= 1'h0; // @[Debug.scala 919:24]
    end else if (_T_4 & io_innerCtrl_bits_ackhavereset) begin // @[Debug.scala 921:68]
      haveResetBitRegs <= haveResetBitRegs & _resumeAcks_T_1 | hartIsInResetSync_0; // @[Debug.scala 922:26]
    end else begin
      haveResetBitRegs <= haveResetBitRegs | hartIsInResetSync_0; // @[Debug.scala 924:26]
    end
    if (_T_1) begin // @[Debug.scala 1101:45]
      ABSTRACTCSReg_cmderr <= 3'h0; // @[Debug.scala 1102:21]
    end else if (errorBusy) begin // @[Debug.scala 1104:23]
      ABSTRACTCSReg_cmderr <= 3'h1; // @[Debug.scala 1105:30]
    end else if (errorException) begin // @[Debug.scala 1106:35]
      ABSTRACTCSReg_cmderr <= 3'h3; // @[Debug.scala 1107:30]
    end else if (errorUnsupported) begin // @[Debug.scala 1108:37]
      ABSTRACTCSReg_cmderr <= 3'h2; // @[Debug.scala 1109:30]
    end else begin
      ABSTRACTCSReg_cmderr <= _GEN_38;
    end
    if (_T_1) begin // @[Debug.scala 1723:45]
      ctrlStateReg <= 2'h0; // @[Debug.scala 1724:20]
    end else if (ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1672:47]
      if (wrAccessRegisterCommand | regAccessRegisterCommand) begin // @[Debug.scala 1673:66]
        ctrlStateReg <= 2'h1; // @[Debug.scala 1674:22]
      end
    end else if (ctrlStateReg == 2'h1) begin // @[Debug.scala 1680:59]
      if (commandRegIsUnsupported) begin // @[Debug.scala 1687:38]
        ctrlStateReg <= 2'h0; // @[Debug.scala 1689:22]
      end else begin
        ctrlStateReg <= _GEN_2283;
      end
    end else if (ctrlStateReg == 2'h2) begin // @[Debug.scala 1701:51]
      ctrlStateReg <= _GEN_2290;
    end
    if (_T_1) begin // @[Debug.scala 1182:45]
      COMMANDRdData_cmdtype <= 8'h0; // @[Debug.scala 1183:18]
    end else if (COMMANDWrEn) begin // @[Debug.scala 1185:26]
      COMMANDRdData_cmdtype <= COMMANDWrData_cmdtype; // @[Debug.scala 1186:20]
    end
    if (_T_1) begin // @[Debug.scala 1182:45]
      COMMANDRdData_control <= 24'h0; // @[Debug.scala 1183:18]
    end else if (COMMANDWrEn) begin // @[Debug.scala 1185:26]
      COMMANDRdData_control <= COMMANDWrData_control; // @[Debug.scala 1186:20]
    end
    if (_T_1) begin // @[Debug.scala 1140:45]
      ABSTRACTAUTOReg_autoexecdata <= 12'h0; // @[Debug.scala 1141:23]
    end else if (out_f_woready_23 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1146:61]
      ABSTRACTAUTOReg_autoexecdata <= _ABSTRACTAUTOReg_autoexecdata_T; // @[Debug.scala 1147:38]
    end
    if (_T_1) begin // @[Debug.scala 1140:45]
      ABSTRACTAUTOReg_autoexecprogbuf <= 16'h0; // @[Debug.scala 1141:23]
    end else if (out_f_woready_25 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1143:64]
      ABSTRACTAUTOReg_autoexecprogbuf <= ABSTRACTAUTOWrData_autoexecprogbuf; // @[Debug.scala 1144:41]
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      abstractDataMem_0 <= 8'h0; // @[Debug.scala 1596:40]
    end else if (out_f_wivalid_949) begin // @[RegField.scala 74:88]
      abstractDataMem_0 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 74:92]
    end else if (out_f_woready_115 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1347:91]
      if (out_f_woready_115) begin // @[Debug.scala 264:24]
        abstractDataMem_0 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      abstractDataMem_1 <= 8'h0; // @[Debug.scala 1596:40]
    end else if (out_f_wivalid_950) begin // @[RegField.scala 74:88]
      abstractDataMem_1 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 74:92]
    end else if (out_f_woready_116 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1347:91]
      if (out_f_woready_116) begin // @[Debug.scala 264:24]
        abstractDataMem_1 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      abstractDataMem_2 <= 8'h0; // @[Debug.scala 1596:40]
    end else if (out_f_wivalid_951) begin // @[RegField.scala 74:88]
      abstractDataMem_2 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 74:92]
    end else if (out_f_woready_117 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1347:91]
      if (out_f_woready_117) begin // @[Debug.scala 264:24]
        abstractDataMem_2 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      abstractDataMem_3 <= 8'h0; // @[Debug.scala 1596:40]
    end else if (out_f_wivalid_952) begin // @[RegField.scala 74:88]
      abstractDataMem_3 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 74:92]
    end else if (out_f_woready_118 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1347:91]
      if (out_f_woready_118) begin // @[Debug.scala 264:24]
        abstractDataMem_3 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      abstractDataMem_4 <= 8'h0; // @[Debug.scala 1596:40]
    end else if (out_f_wivalid_953) begin // @[RegField.scala 74:88]
      abstractDataMem_4 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 74:92]
    end else if (out_f_woready & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1347:91]
      if (out_f_woready) begin // @[Debug.scala 264:24]
        abstractDataMem_4 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      abstractDataMem_5 <= 8'h0; // @[Debug.scala 1596:40]
    end else if (out_f_wivalid_954) begin // @[RegField.scala 74:88]
      abstractDataMem_5 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 74:92]
    end else if (out_f_woready_1 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1347:91]
      if (out_f_woready_1) begin // @[Debug.scala 264:24]
        abstractDataMem_5 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      abstractDataMem_6 <= 8'h0; // @[Debug.scala 1596:40]
    end else if (out_f_wivalid_955) begin // @[RegField.scala 74:88]
      abstractDataMem_6 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 74:92]
    end else if (out_f_woready_2 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1347:91]
      if (out_f_woready_2) begin // @[Debug.scala 264:24]
        abstractDataMem_6 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      abstractDataMem_7 <= 8'h0; // @[Debug.scala 1596:40]
    end else if (out_f_wivalid_956) begin // @[RegField.scala 74:88]
      abstractDataMem_7 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 74:92]
    end else if (out_f_woready_3 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1347:91]
      if (out_f_woready_3) begin // @[Debug.scala 264:24]
        abstractDataMem_7 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_0 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1069) begin // @[RegField.scala 74:88]
      programBufferMem_0 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 74:92]
    end else if (out_f_woready_49 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_49) begin // @[Debug.scala 264:24]
        programBufferMem_0 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_1 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1070) begin // @[RegField.scala 74:88]
      programBufferMem_1 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 74:92]
    end else if (out_f_woready_50 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_50) begin // @[Debug.scala 264:24]
        programBufferMem_1 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_2 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1071) begin // @[RegField.scala 74:88]
      programBufferMem_2 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 74:92]
    end else if (out_f_woready_51 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_51) begin // @[Debug.scala 264:24]
        programBufferMem_2 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_3 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1072) begin // @[RegField.scala 74:88]
      programBufferMem_3 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 74:92]
    end else if (out_f_woready_52 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_52) begin // @[Debug.scala 264:24]
        programBufferMem_3 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_4 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1073) begin // @[RegField.scala 74:88]
      programBufferMem_4 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 74:92]
    end else if (out_f_woready_41 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_41) begin // @[Debug.scala 264:24]
        programBufferMem_4 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_5 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1074) begin // @[RegField.scala 74:88]
      programBufferMem_5 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 74:92]
    end else if (out_f_woready_42 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_42) begin // @[Debug.scala 264:24]
        programBufferMem_5 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_6 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1075) begin // @[RegField.scala 74:88]
      programBufferMem_6 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 74:92]
    end else if (out_f_woready_43 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_43) begin // @[Debug.scala 264:24]
        programBufferMem_6 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_7 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1076) begin // @[RegField.scala 74:88]
      programBufferMem_7 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 74:92]
    end else if (out_f_woready_44 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_44) begin // @[Debug.scala 264:24]
        programBufferMem_7 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_8 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_617) begin // @[RegField.scala 74:88]
      programBufferMem_8 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 74:92]
    end else if (out_f_woready_53 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_53) begin // @[Debug.scala 264:24]
        programBufferMem_8 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_9 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_618) begin // @[RegField.scala 74:88]
      programBufferMem_9 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 74:92]
    end else if (out_f_woready_54 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_54) begin // @[Debug.scala 264:24]
        programBufferMem_9 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_10 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_619) begin // @[RegField.scala 74:88]
      programBufferMem_10 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 74:92]
    end else if (out_f_woready_55 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_55) begin // @[Debug.scala 264:24]
        programBufferMem_10 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_11 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_620) begin // @[RegField.scala 74:88]
      programBufferMem_11 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 74:92]
    end else if (out_f_woready_56 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_56) begin // @[Debug.scala 264:24]
        programBufferMem_11 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_12 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_621) begin // @[RegField.scala 74:88]
      programBufferMem_12 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 74:92]
    end else if (out_f_woready_96 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_96) begin // @[Debug.scala 264:24]
        programBufferMem_12 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_13 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_622) begin // @[RegField.scala 74:88]
      programBufferMem_13 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 74:92]
    end else if (out_f_woready_97 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_97) begin // @[Debug.scala 264:24]
        programBufferMem_13 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_14 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_623) begin // @[RegField.scala 74:88]
      programBufferMem_14 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 74:92]
    end else if (out_f_woready_98 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_98) begin // @[Debug.scala 264:24]
        programBufferMem_14 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_15 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_624) begin // @[RegField.scala 74:88]
      programBufferMem_15 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 74:92]
    end else if (out_f_woready_99 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_99) begin // @[Debug.scala 264:24]
        programBufferMem_15 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_16 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_324) begin // @[RegField.scala 74:88]
      programBufferMem_16 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 74:92]
    end else if (out_f_woready_110 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_110) begin // @[Debug.scala 264:24]
        programBufferMem_16 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_17 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_325) begin // @[RegField.scala 74:88]
      programBufferMem_17 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 74:92]
    end else if (out_f_woready_111 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_111) begin // @[Debug.scala 264:24]
        programBufferMem_17 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_18 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_326) begin // @[RegField.scala 74:88]
      programBufferMem_18 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 74:92]
    end else if (out_f_woready_112 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_112) begin // @[Debug.scala 264:24]
        programBufferMem_18 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_19 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_327) begin // @[RegField.scala 74:88]
      programBufferMem_19 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 74:92]
    end else if (out_f_woready_113 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_113) begin // @[Debug.scala 264:24]
        programBufferMem_19 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_20 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_328) begin // @[RegField.scala 74:88]
      programBufferMem_20 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 74:92]
    end else if (out_f_woready_26 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_26) begin // @[Debug.scala 264:24]
        programBufferMem_20 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_21 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_329) begin // @[RegField.scala 74:88]
      programBufferMem_21 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 74:92]
    end else if (out_f_woready_27 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_27) begin // @[Debug.scala 264:24]
        programBufferMem_21 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_22 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_330) begin // @[RegField.scala 74:88]
      programBufferMem_22 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 74:92]
    end else if (out_f_woready_28 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_28) begin // @[Debug.scala 264:24]
        programBufferMem_22 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_23 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_331) begin // @[RegField.scala 74:88]
      programBufferMem_23 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 74:92]
    end else if (out_f_woready_29 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_29) begin // @[Debug.scala 264:24]
        programBufferMem_23 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_24 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1205) begin // @[RegField.scala 74:88]
      programBufferMem_24 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 74:92]
    end else if (out_f_woready_37 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_37) begin // @[Debug.scala 264:24]
        programBufferMem_24 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_25 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1206) begin // @[RegField.scala 74:88]
      programBufferMem_25 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 74:92]
    end else if (out_f_woready_38 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_38) begin // @[Debug.scala 264:24]
        programBufferMem_25 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_26 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1207) begin // @[RegField.scala 74:88]
      programBufferMem_26 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 74:92]
    end else if (out_f_woready_39 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_39) begin // @[Debug.scala 264:24]
        programBufferMem_26 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_27 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1208) begin // @[RegField.scala 74:88]
      programBufferMem_27 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 74:92]
    end else if (out_f_woready_40 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_40) begin // @[Debug.scala 264:24]
        programBufferMem_27 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_28 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1209) begin // @[RegField.scala 74:88]
      programBufferMem_28 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 74:92]
    end else if (out_f_woready_92 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_92) begin // @[Debug.scala 264:24]
        programBufferMem_28 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_29 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1210) begin // @[RegField.scala 74:88]
      programBufferMem_29 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 74:92]
    end else if (out_f_woready_93 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_93) begin // @[Debug.scala 264:24]
        programBufferMem_29 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_30 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1211) begin // @[RegField.scala 74:88]
      programBufferMem_30 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 74:92]
    end else if (out_f_woready_94 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_94) begin // @[Debug.scala 264:24]
        programBufferMem_30 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_31 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1212) begin // @[RegField.scala 74:88]
      programBufferMem_31 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 74:92]
    end else if (out_f_woready_95 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_95) begin // @[Debug.scala 264:24]
        programBufferMem_31 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_32 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_861) begin // @[RegField.scala 74:88]
      programBufferMem_32 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 74:92]
    end else if (out_f_woready_104 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_104) begin // @[Debug.scala 264:24]
        programBufferMem_32 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_33 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_862) begin // @[RegField.scala 74:88]
      programBufferMem_33 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 74:92]
    end else if (out_f_woready_105 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_105) begin // @[Debug.scala 264:24]
        programBufferMem_33 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_34 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_863) begin // @[RegField.scala 74:88]
      programBufferMem_34 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 74:92]
    end else if (out_f_woready_106 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_106) begin // @[Debug.scala 264:24]
        programBufferMem_34 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_35 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_864) begin // @[RegField.scala 74:88]
      programBufferMem_35 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 74:92]
    end else if (out_f_woready_107 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_107) begin // @[Debug.scala 264:24]
        programBufferMem_35 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_36 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_865) begin // @[RegField.scala 74:88]
      programBufferMem_36 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 74:92]
    end else if (out_f_woready_45 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_45) begin // @[Debug.scala 264:24]
        programBufferMem_36 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_37 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_866) begin // @[RegField.scala 74:88]
      programBufferMem_37 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 74:92]
    end else if (out_f_woready_46 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_46) begin // @[Debug.scala 264:24]
        programBufferMem_37 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_38 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_867) begin // @[RegField.scala 74:88]
      programBufferMem_38 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 74:92]
    end else if (out_f_woready_47 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_47) begin // @[Debug.scala 264:24]
        programBufferMem_38 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_39 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_868) begin // @[RegField.scala 74:88]
      programBufferMem_39 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 74:92]
    end else if (out_f_woready_48 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_48) begin // @[Debug.scala 264:24]
        programBufferMem_39 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_40 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_536) begin // @[RegField.scala 74:88]
      programBufferMem_40 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 74:92]
    end else if (out_f_woready_19 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_19) begin // @[Debug.scala 264:24]
        programBufferMem_40 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_41 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_537) begin // @[RegField.scala 74:88]
      programBufferMem_41 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 74:92]
    end else if (out_f_woready_20 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_20) begin // @[Debug.scala 264:24]
        programBufferMem_41 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_42 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_538) begin // @[RegField.scala 74:88]
      programBufferMem_42 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 74:92]
    end else if (out_f_woready_21 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_21) begin // @[Debug.scala 264:24]
        programBufferMem_42 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_43 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_539) begin // @[RegField.scala 74:88]
      programBufferMem_43 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 74:92]
    end else if (out_f_woready_22 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_22) begin // @[Debug.scala 264:24]
        programBufferMem_43 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_44 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_540) begin // @[RegField.scala 74:88]
      programBufferMem_44 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 74:92]
    end else if (out_f_woready_100 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_100) begin // @[Debug.scala 264:24]
        programBufferMem_44 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_45 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_541) begin // @[RegField.scala 74:88]
      programBufferMem_45 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 74:92]
    end else if (out_f_woready_101 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_101) begin // @[Debug.scala 264:24]
        programBufferMem_45 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_46 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_542) begin // @[RegField.scala 74:88]
      programBufferMem_46 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 74:92]
    end else if (out_f_woready_102 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_102) begin // @[Debug.scala 264:24]
        programBufferMem_46 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_47 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_543) begin // @[RegField.scala 74:88]
      programBufferMem_47 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 74:92]
    end else if (out_f_woready_103 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_103) begin // @[Debug.scala 264:24]
        programBufferMem_47 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_48 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_228) begin // @[RegField.scala 74:88]
      programBufferMem_48 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 74:92]
    end else if (out_f_woready_88 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_88) begin // @[Debug.scala 264:24]
        programBufferMem_48 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_49 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_229) begin // @[RegField.scala 74:88]
      programBufferMem_49 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 74:92]
    end else if (out_f_woready_89 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_89) begin // @[Debug.scala 264:24]
        programBufferMem_49 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_50 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_230) begin // @[RegField.scala 74:88]
      programBufferMem_50 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 74:92]
    end else if (out_f_woready_90 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_90) begin // @[Debug.scala 264:24]
        programBufferMem_50 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_51 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_231) begin // @[RegField.scala 74:88]
      programBufferMem_51 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 74:92]
    end else if (out_f_woready_91 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_91) begin // @[Debug.scala 264:24]
        programBufferMem_51 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_52 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_232) begin // @[RegField.scala 74:88]
      programBufferMem_52 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 74:92]
    end else if (out_f_woready_57 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_57) begin // @[Debug.scala 264:24]
        programBufferMem_52 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_53 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_233) begin // @[RegField.scala 74:88]
      programBufferMem_53 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 74:92]
    end else if (out_f_woready_58 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_58) begin // @[Debug.scala 264:24]
        programBufferMem_53 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_54 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_234) begin // @[RegField.scala 74:88]
      programBufferMem_54 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 74:92]
    end else if (out_f_woready_59 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_59) begin // @[Debug.scala 264:24]
        programBufferMem_54 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_55 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_235) begin // @[RegField.scala 74:88]
      programBufferMem_55 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 74:92]
    end else if (out_f_woready_60 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_60) begin // @[Debug.scala 264:24]
        programBufferMem_55 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_56 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1285) begin // @[RegField.scala 74:88]
      programBufferMem_56 <= auto_tl_in_a_bits_data[7:0]; // @[RegField.scala 74:92]
    end else if (out_f_woready_30 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_30) begin // @[Debug.scala 264:24]
        programBufferMem_56 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_57 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1286) begin // @[RegField.scala 74:88]
      programBufferMem_57 <= auto_tl_in_a_bits_data[15:8]; // @[RegField.scala 74:92]
    end else if (out_f_woready_31 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_31) begin // @[Debug.scala 264:24]
        programBufferMem_57 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_58 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1287) begin // @[RegField.scala 74:88]
      programBufferMem_58 <= auto_tl_in_a_bits_data[23:16]; // @[RegField.scala 74:92]
    end else if (out_f_woready_32 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_32) begin // @[Debug.scala 264:24]
        programBufferMem_58 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_59 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1288) begin // @[RegField.scala 74:88]
      programBufferMem_59 <= auto_tl_in_a_bits_data[31:24]; // @[RegField.scala 74:92]
    end else if (out_f_woready_33 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_33) begin // @[Debug.scala 264:24]
        programBufferMem_59 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_60 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1289) begin // @[RegField.scala 74:88]
      programBufferMem_60 <= auto_tl_in_a_bits_data[39:32]; // @[RegField.scala 74:92]
    end else if (out_f_woready_119 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_119) begin // @[Debug.scala 264:24]
        programBufferMem_60 <= auto_dmi_in_a_bits_data[7:0]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_61 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1290) begin // @[RegField.scala 74:88]
      programBufferMem_61 <= auto_tl_in_a_bits_data[47:40]; // @[RegField.scala 74:92]
    end else if (out_f_woready_120 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_120) begin // @[Debug.scala 264:24]
        programBufferMem_61 <= auto_dmi_in_a_bits_data[15:8]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_62 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1291) begin // @[RegField.scala 74:88]
      programBufferMem_62 <= auto_tl_in_a_bits_data[55:48]; // @[RegField.scala 74:92]
    end else if (out_f_woready_121 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_121) begin // @[Debug.scala 264:24]
        programBufferMem_62 <= auto_dmi_in_a_bits_data[23:16]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[Debug.scala 1595:24]
      programBufferMem_63 <= 8'h0; // @[Debug.scala 1597:40]
    end else if (out_f_wivalid_1292) begin // @[RegField.scala 74:88]
      programBufferMem_63 <= auto_tl_in_a_bits_data[63:56]; // @[RegField.scala 74:92]
    end else if (out_f_woready_122 & ABSTRACTCSWrEnLegal) begin // @[Debug.scala 1369:93]
      if (out_f_woready_122) begin // @[Debug.scala 264:24]
        programBufferMem_63 <= auto_dmi_in_a_bits_data[31:24]; // @[Debug.scala 264:30]
      end
    end
    if (_T_1) begin // @[SBA.scala 202:42]
      SBCSFieldsReg_sbbusyerror <= 1'h0; // @[SBA.scala 203:21]
    end else if (out_f_woready_16 & SBCSWrData_sbbusyerror) begin // @[SBA.scala 205:43]
      SBCSFieldsReg_sbbusyerror <= 1'h0;
    end else begin
      SBCSFieldsReg_sbbusyerror <= _SBCSFieldsReg_sbbusyerror_T_5;
    end
    if (_T_1) begin // @[SBA.scala 202:42]
      SBCSFieldsReg_sbbusy <= SBCSFieldsRegReset_sbbusy; // @[SBA.scala 203:21]
    end
    if (_T_1) begin // @[SBA.scala 202:42]
      SBCSFieldsReg_sbreadonaddr <= 1'h0; // @[SBA.scala 203:21]
    end else if (out_f_woready_14) begin // @[SBA.scala 208:43]
      SBCSFieldsReg_sbreadonaddr <= SBCSWrData_sbreadonaddr;
    end
    if (_T_1) begin // @[SBA.scala 202:42]
      SBCSFieldsReg_sbaccess <= 3'h2; // @[SBA.scala 203:21]
    end else if (out_f_woready_13) begin // @[SBA.scala 211:43]
      SBCSFieldsReg_sbaccess <= SBCSWrData_sbaccess;
    end
    if (_T_1) begin // @[SBA.scala 202:42]
      SBCSFieldsReg_sbautoincrement <= 1'h0; // @[SBA.scala 203:21]
    end else if (out_f_woready_12) begin // @[SBA.scala 209:43]
      SBCSFieldsReg_sbautoincrement <= SBCSWrData_sbautoincrement;
    end
    if (_T_1) begin // @[SBA.scala 202:42]
      SBCSFieldsReg_sbreadondata <= 1'h0; // @[SBA.scala 203:21]
    end else if (out_f_woready_11) begin // @[SBA.scala 210:43]
      SBCSFieldsReg_sbreadondata <= SBCSWrData_sbreadondata;
    end
    if (_T_1) begin // @[SBA.scala 113:46]
      SBADDRESSFieldsReg_0 <= 32'h0; // @[SBA.scala 114:13]
    end else if (out_f_woready_34 & SBCSRdData_sberror == 3'h0 & ~SBCSFieldsReg_sbbusy & ~SBCSFieldsReg_sbbusyerror
      ) begin // @[SBA.scala 116:19]
      if (out_f_woready_34) begin // @[Debug.scala 264:24]
        SBADDRESSFieldsReg_0 <= auto_dmi_in_a_bits_data; // @[Debug.scala 264:30]
      end else begin
        SBADDRESSFieldsReg_0 <= 32'h0;
      end
    end else if ((sb2tlOpt_io_rdDone | sb2tlOpt_io_wrDone) & SBCSFieldsReg_sbautoincrement) begin // @[SBA.scala 117:19]
      SBADDRESSFieldsReg_0 <= autoIncrementedAddr[31:0];
    end
    if (_T_1) begin // @[SBA.scala 113:46]
      SBADDRESSFieldsReg_1 <= 32'h0; // @[SBA.scala 114:13]
    end else if (out_f_woready_109 & SBCSRdData_sberror == 3'h0 & ~SBCSFieldsReg_sbbusy & ~SBCSFieldsReg_sbbusyerror
      ) begin // @[SBA.scala 116:19]
      if (out_f_woready_109) begin // @[Debug.scala 264:24]
        SBADDRESSFieldsReg_1 <= auto_dmi_in_a_bits_data; // @[Debug.scala 264:30]
      end else begin
        SBADDRESSFieldsReg_1 <= 32'h0;
      end
    end else if ((sb2tlOpt_io_rdDone | sb2tlOpt_io_wrDone) & SBCSFieldsReg_sbautoincrement) begin // @[SBA.scala 117:19]
      SBADDRESSFieldsReg_1 <= autoIncrementedAddr[63:32];
    end
    if (_T_1) begin // @[SBA.scala 217:41]
      sbErrorReg_2 <= 1'h0; // @[SBA.scala 219:23]
    end else if (out_f_woready_10 & SBCSWrData_sberror[2]) begin // @[SBA.scala 222:29]
      sbErrorReg_2 <= 1'h0;
    end else if (sb2tlOpt_io_wrEn & ~sb2tlOpt_io_wrLegal | sb2tlOpt_io_rdEn & ~sb2tlOpt_io_rdLegal) begin // @[SBA.scala 223:29]
      sbErrorReg_2 <= 1'h0;
    end else if ((out_f_woready_36 | tryRdEn) & sbAlignmentError) begin // @[SBA.scala 224:29]
      sbErrorReg_2 <= 1'h0;
    end else begin
      sbErrorReg_2 <= _sbErrorReg_2_T_15;
    end
    if (_T_1) begin // @[SBA.scala 217:41]
      sbErrorReg_1 <= 1'h0; // @[SBA.scala 219:23]
    end else if (out_f_woready_10 & SBCSWrData_sberror[1]) begin // @[SBA.scala 222:29]
      sbErrorReg_1 <= 1'h0;
    end else begin
      sbErrorReg_1 <= _sbErrorReg_1_T_17;
    end
    if (_T_1) begin // @[SBA.scala 217:41]
      sbErrorReg_0 <= 1'h0; // @[SBA.scala 219:23]
    end else if (out_f_woready_10 & SBCSWrData_sberror[0]) begin // @[SBA.scala 222:29]
      sbErrorReg_0 <= 1'h0;
    end else if (sb2tlOpt_io_wrEn & ~sb2tlOpt_io_wrLegal | sb2tlOpt_io_rdEn & ~sb2tlOpt_io_rdLegal) begin // @[SBA.scala 223:29]
      sbErrorReg_0 <= 1'h0;
    end else begin
      sbErrorReg_0 <= _sbErrorReg_0_T_16;
    end
    if (_T_1) begin // @[SBA.scala 154:48]
      SBDATAFieldsReg_0_0 <= 8'h0; // @[SBA.scala 155:18]
    end else if (out_f_woready_36 & _SBADDRESSFieldsReg_0_T_2 & _SBADDRESSFieldsReg_0_T_4 & _SBADDRESSFieldsReg_0_T
      ) begin // @[SBA.scala 157:24]
      SBDATAFieldsReg_0_0 <= SBDATAWrData_0[7:0];
    end else if (sb2tlOpt_io_rdLoad_0) begin // @[SBA.scala 158:24]
      SBDATAFieldsReg_0_0 <= sb2tlOpt_io_dataOut;
    end
    if (_T_1) begin // @[SBA.scala 154:48]
      SBDATAFieldsReg_0_1 <= 8'h0; // @[SBA.scala 155:18]
    end else if (out_f_woready_36 & _SBADDRESSFieldsReg_0_T_2 & _SBADDRESSFieldsReg_0_T_4 & _SBADDRESSFieldsReg_0_T
      ) begin // @[SBA.scala 157:24]
      SBDATAFieldsReg_0_1 <= SBDATAWrData_0[15:8];
    end else if (sb2tlOpt_io_rdLoad_1) begin // @[SBA.scala 158:24]
      SBDATAFieldsReg_0_1 <= sb2tlOpt_io_dataOut;
    end
    if (_T_1) begin // @[SBA.scala 154:48]
      SBDATAFieldsReg_0_2 <= 8'h0; // @[SBA.scala 155:18]
    end else if (out_f_woready_36 & _SBADDRESSFieldsReg_0_T_2 & _SBADDRESSFieldsReg_0_T_4 & _SBADDRESSFieldsReg_0_T
      ) begin // @[SBA.scala 157:24]
      SBDATAFieldsReg_0_2 <= SBDATAWrData_0[23:16];
    end else if (sb2tlOpt_io_rdLoad_2) begin // @[SBA.scala 158:24]
      SBDATAFieldsReg_0_2 <= sb2tlOpt_io_dataOut;
    end
    if (_T_1) begin // @[SBA.scala 154:48]
      SBDATAFieldsReg_0_3 <= 8'h0; // @[SBA.scala 155:18]
    end else if (out_f_woready_36 & _SBADDRESSFieldsReg_0_T_2 & _SBADDRESSFieldsReg_0_T_4 & _SBADDRESSFieldsReg_0_T
      ) begin // @[SBA.scala 157:24]
      SBDATAFieldsReg_0_3 <= SBDATAWrData_0[31:24];
    end else if (sb2tlOpt_io_rdLoad_3) begin // @[SBA.scala 158:24]
      SBDATAFieldsReg_0_3 <= sb2tlOpt_io_dataOut;
    end
    if (_T_1) begin // @[SBA.scala 154:48]
      SBDATAFieldsReg_1_0 <= 8'h0; // @[SBA.scala 155:18]
    end else if (out_f_woready_35 & _SBADDRESSFieldsReg_0_T_2 & _SBADDRESSFieldsReg_0_T_4 & _SBADDRESSFieldsReg_0_T
      ) begin // @[SBA.scala 157:24]
      SBDATAFieldsReg_1_0 <= SBDATAWrData_1[7:0];
    end else if (sb2tlOpt_io_rdLoad_4) begin // @[SBA.scala 158:24]
      SBDATAFieldsReg_1_0 <= sb2tlOpt_io_dataOut;
    end
    if (_T_1) begin // @[SBA.scala 154:48]
      SBDATAFieldsReg_1_1 <= 8'h0; // @[SBA.scala 155:18]
    end else if (out_f_woready_35 & _SBADDRESSFieldsReg_0_T_2 & _SBADDRESSFieldsReg_0_T_4 & _SBADDRESSFieldsReg_0_T
      ) begin // @[SBA.scala 157:24]
      SBDATAFieldsReg_1_1 <= SBDATAWrData_1[15:8];
    end else if (sb2tlOpt_io_rdLoad_5) begin // @[SBA.scala 158:24]
      SBDATAFieldsReg_1_1 <= sb2tlOpt_io_dataOut;
    end
    if (_T_1) begin // @[SBA.scala 154:48]
      SBDATAFieldsReg_1_2 <= 8'h0; // @[SBA.scala 155:18]
    end else if (out_f_woready_35 & _SBADDRESSFieldsReg_0_T_2 & _SBADDRESSFieldsReg_0_T_4 & _SBADDRESSFieldsReg_0_T
      ) begin // @[SBA.scala 157:24]
      SBDATAFieldsReg_1_2 <= SBDATAWrData_1[23:16];
    end else if (sb2tlOpt_io_rdLoad_6) begin // @[SBA.scala 158:24]
      SBDATAFieldsReg_1_2 <= sb2tlOpt_io_dataOut;
    end
    if (_T_1) begin // @[SBA.scala 154:48]
      SBDATAFieldsReg_1_3 <= 8'h0; // @[SBA.scala 155:18]
    end else if (out_f_woready_35 & _SBADDRESSFieldsReg_0_T_2 & _SBADDRESSFieldsReg_0_T_4 & _SBADDRESSFieldsReg_0_T
      ) begin // @[SBA.scala 157:24]
      SBDATAFieldsReg_1_3 <= SBDATAWrData_1[31:24];
    end else if (sb2tlOpt_io_rdLoad_7) begin // @[SBA.scala 158:24]
      SBDATAFieldsReg_1_3 <= sb2tlOpt_io_dataOut;
    end
    if (_T_1) begin // @[Debug.scala 1384:24]
      goReg <= 1'h0; // @[Debug.scala 1385:13]
    end else begin
      goReg <= _GEN_575;
    end
    if (goAbstract) begin // @[Debug.scala 1519:23]
      if (accessRegisterCommandReg_transfer & accessRegisterCommandReg_size != 3'h2) begin // @[Debug.scala 1537:39]
        abstractGeneratedMem_0 <= 32'h1b;
      end else begin
        abstractGeneratedMem_0 <= 32'h13;
      end
    end
    if (goAbstract) begin // @[Debug.scala 1519:23]
      abstractGeneratedMem_1 <= _abstractGeneratedMem_1_T; // @[Debug.scala 1538:33]
    end
    if (goAbstract) begin // @[Debug.scala 1519:23]
      if (accessRegisterCommandReg_transfer) begin // @[Debug.scala 1539:39]
        if (accessRegisterCommandReg_write) begin // @[Debug.scala 1540:14]
          abstractGeneratedMem_2 <= _abstractGeneratedMem_2_T;
        end else begin
          abstractGeneratedMem_2 <= _abstractGeneratedMem_2_T_1;
        end
      end else begin
        abstractGeneratedMem_2 <= 32'h13;
      end
    end
    if (goAbstract) begin // @[Debug.scala 1519:23]
      abstractGeneratedMem_3 <= _abstractGeneratedMem_1_T; // @[Debug.scala 1543:33]
    end
    if (goAbstract) begin // @[Debug.scala 1519:23]
      if (accessRegisterCommandReg_postexec) begin // @[Debug.scala 1544:39]
        abstractGeneratedMem_4 <= 32'h13;
      end else begin
        abstractGeneratedMem_4 <= 32'h100073;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Debug.scala 860:45]
      hrmaskReg_0 <= 1'h0; // @[Debug.scala 861:17]
    end else if (~io_dmactive) begin // @[Debug.scala 862:37]
      hrmaskReg_0 <= 1'h0; // @[Debug.scala 863:17]
    end else if (_T_4) begin // @[Debug.scala 853:29]
      hrmaskReg_0 <= io_innerCtrl_bits_hrmask_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Debug.scala 868:47]
      hrDebugIntReg_0 <= 1'h0; // @[Debug.scala 869:23]
    end else if (_T_1) begin // @[Debug.scala 871:23]
      hrDebugIntReg_0 <= 1'h0;
    end else begin
      hrDebugIntReg_0 <= _T_13;
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
  haltedBitRegs = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  resumeReqRegs = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  haveResetBitRegs = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  hrmaskReg_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  hrDebugIntReg_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  ABSTRACTCSReg_cmderr = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  ctrlStateReg = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  COMMANDRdData_cmdtype = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  COMMANDRdData_control = _RAND_8[23:0];
  _RAND_9 = {1{`RANDOM}};
  ABSTRACTAUTOReg_autoexecdata = _RAND_9[11:0];
  _RAND_10 = {1{`RANDOM}};
  ABSTRACTAUTOReg_autoexecprogbuf = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  abstractDataMem_0 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  abstractDataMem_1 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  abstractDataMem_2 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  abstractDataMem_3 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  abstractDataMem_4 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  abstractDataMem_5 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  abstractDataMem_6 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  abstractDataMem_7 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  programBufferMem_0 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  programBufferMem_1 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  programBufferMem_2 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  programBufferMem_3 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  programBufferMem_4 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  programBufferMem_5 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  programBufferMem_6 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  programBufferMem_7 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  programBufferMem_8 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  programBufferMem_9 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  programBufferMem_10 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  programBufferMem_11 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  programBufferMem_12 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  programBufferMem_13 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  programBufferMem_14 = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  programBufferMem_15 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  programBufferMem_16 = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  programBufferMem_17 = _RAND_36[7:0];
  _RAND_37 = {1{`RANDOM}};
  programBufferMem_18 = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  programBufferMem_19 = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  programBufferMem_20 = _RAND_39[7:0];
  _RAND_40 = {1{`RANDOM}};
  programBufferMem_21 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  programBufferMem_22 = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  programBufferMem_23 = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  programBufferMem_24 = _RAND_43[7:0];
  _RAND_44 = {1{`RANDOM}};
  programBufferMem_25 = _RAND_44[7:0];
  _RAND_45 = {1{`RANDOM}};
  programBufferMem_26 = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  programBufferMem_27 = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  programBufferMem_28 = _RAND_47[7:0];
  _RAND_48 = {1{`RANDOM}};
  programBufferMem_29 = _RAND_48[7:0];
  _RAND_49 = {1{`RANDOM}};
  programBufferMem_30 = _RAND_49[7:0];
  _RAND_50 = {1{`RANDOM}};
  programBufferMem_31 = _RAND_50[7:0];
  _RAND_51 = {1{`RANDOM}};
  programBufferMem_32 = _RAND_51[7:0];
  _RAND_52 = {1{`RANDOM}};
  programBufferMem_33 = _RAND_52[7:0];
  _RAND_53 = {1{`RANDOM}};
  programBufferMem_34 = _RAND_53[7:0];
  _RAND_54 = {1{`RANDOM}};
  programBufferMem_35 = _RAND_54[7:0];
  _RAND_55 = {1{`RANDOM}};
  programBufferMem_36 = _RAND_55[7:0];
  _RAND_56 = {1{`RANDOM}};
  programBufferMem_37 = _RAND_56[7:0];
  _RAND_57 = {1{`RANDOM}};
  programBufferMem_38 = _RAND_57[7:0];
  _RAND_58 = {1{`RANDOM}};
  programBufferMem_39 = _RAND_58[7:0];
  _RAND_59 = {1{`RANDOM}};
  programBufferMem_40 = _RAND_59[7:0];
  _RAND_60 = {1{`RANDOM}};
  programBufferMem_41 = _RAND_60[7:0];
  _RAND_61 = {1{`RANDOM}};
  programBufferMem_42 = _RAND_61[7:0];
  _RAND_62 = {1{`RANDOM}};
  programBufferMem_43 = _RAND_62[7:0];
  _RAND_63 = {1{`RANDOM}};
  programBufferMem_44 = _RAND_63[7:0];
  _RAND_64 = {1{`RANDOM}};
  programBufferMem_45 = _RAND_64[7:0];
  _RAND_65 = {1{`RANDOM}};
  programBufferMem_46 = _RAND_65[7:0];
  _RAND_66 = {1{`RANDOM}};
  programBufferMem_47 = _RAND_66[7:0];
  _RAND_67 = {1{`RANDOM}};
  programBufferMem_48 = _RAND_67[7:0];
  _RAND_68 = {1{`RANDOM}};
  programBufferMem_49 = _RAND_68[7:0];
  _RAND_69 = {1{`RANDOM}};
  programBufferMem_50 = _RAND_69[7:0];
  _RAND_70 = {1{`RANDOM}};
  programBufferMem_51 = _RAND_70[7:0];
  _RAND_71 = {1{`RANDOM}};
  programBufferMem_52 = _RAND_71[7:0];
  _RAND_72 = {1{`RANDOM}};
  programBufferMem_53 = _RAND_72[7:0];
  _RAND_73 = {1{`RANDOM}};
  programBufferMem_54 = _RAND_73[7:0];
  _RAND_74 = {1{`RANDOM}};
  programBufferMem_55 = _RAND_74[7:0];
  _RAND_75 = {1{`RANDOM}};
  programBufferMem_56 = _RAND_75[7:0];
  _RAND_76 = {1{`RANDOM}};
  programBufferMem_57 = _RAND_76[7:0];
  _RAND_77 = {1{`RANDOM}};
  programBufferMem_58 = _RAND_77[7:0];
  _RAND_78 = {1{`RANDOM}};
  programBufferMem_59 = _RAND_78[7:0];
  _RAND_79 = {1{`RANDOM}};
  programBufferMem_60 = _RAND_79[7:0];
  _RAND_80 = {1{`RANDOM}};
  programBufferMem_61 = _RAND_80[7:0];
  _RAND_81 = {1{`RANDOM}};
  programBufferMem_62 = _RAND_81[7:0];
  _RAND_82 = {1{`RANDOM}};
  programBufferMem_63 = _RAND_82[7:0];
  _RAND_83 = {1{`RANDOM}};
  SBCSFieldsReg_sbbusyerror = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  SBCSFieldsReg_sbbusy = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  SBCSFieldsReg_sbreadonaddr = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  SBCSFieldsReg_sbaccess = _RAND_86[2:0];
  _RAND_87 = {1{`RANDOM}};
  SBCSFieldsReg_sbautoincrement = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  SBCSFieldsReg_sbreadondata = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  SBADDRESSFieldsReg_0 = _RAND_89[31:0];
  _RAND_90 = {1{`RANDOM}};
  SBADDRESSFieldsReg_1 = _RAND_90[31:0];
  _RAND_91 = {1{`RANDOM}};
  sbErrorReg_2 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  sbErrorReg_1 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  sbErrorReg_0 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  SBDATAFieldsReg_0_0 = _RAND_94[7:0];
  _RAND_95 = {1{`RANDOM}};
  SBDATAFieldsReg_0_1 = _RAND_95[7:0];
  _RAND_96 = {1{`RANDOM}};
  SBDATAFieldsReg_0_2 = _RAND_96[7:0];
  _RAND_97 = {1{`RANDOM}};
  SBDATAFieldsReg_0_3 = _RAND_97[7:0];
  _RAND_98 = {1{`RANDOM}};
  SBDATAFieldsReg_1_0 = _RAND_98[7:0];
  _RAND_99 = {1{`RANDOM}};
  SBDATAFieldsReg_1_1 = _RAND_99[7:0];
  _RAND_100 = {1{`RANDOM}};
  SBDATAFieldsReg_1_2 = _RAND_100[7:0];
  _RAND_101 = {1{`RANDOM}};
  SBDATAFieldsReg_1_3 = _RAND_101[7:0];
  _RAND_102 = {1{`RANDOM}};
  goReg = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  abstractGeneratedMem_0 = _RAND_103[31:0];
  _RAND_104 = {1{`RANDOM}};
  abstractGeneratedMem_1 = _RAND_104[31:0];
  _RAND_105 = {1{`RANDOM}};
  abstractGeneratedMem_2 = _RAND_105[31:0];
  _RAND_106 = {1{`RANDOM}};
  abstractGeneratedMem_3 = _RAND_106[31:0];
  _RAND_107 = {1{`RANDOM}};
  abstractGeneratedMem_4 = _RAND_107[31:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    hrmaskReg_0 = 1'h0;
  end
  if (reset) begin
    hrDebugIntReg_0 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

