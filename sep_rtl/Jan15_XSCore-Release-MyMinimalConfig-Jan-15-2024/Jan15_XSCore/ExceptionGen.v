module ExceptionGen(
  input        clock,
  input        reset,
  input        io_redirect_valid,
  input        io_redirect_bits_robIdx_flag,
  input  [4:0] io_redirect_bits_robIdx_value,
  input        io_redirect_bits_level,
  input        io_flush,
  input        io_enq_0_valid,
  input        io_enq_0_bits_robIdx_flag,
  input  [4:0] io_enq_0_bits_robIdx_value,
  input        io_enq_0_bits_exceptionVec_1,
  input        io_enq_0_bits_exceptionVec_2,
  input        io_enq_0_bits_exceptionVec_12,
  input        io_enq_0_bits_flushPipe,
  input        io_enq_0_bits_singleStep,
  input        io_enq_0_bits_crossPageIPFFix,
  input        io_enq_0_bits_trigger_frontendHit_0,
  input        io_enq_0_bits_trigger_frontendHit_1,
  input        io_enq_0_bits_trigger_frontendHit_2,
  input        io_enq_0_bits_trigger_frontendHit_3,
  input        io_enq_1_valid,
  input        io_enq_1_bits_robIdx_flag,
  input  [4:0] io_enq_1_bits_robIdx_value,
  input        io_enq_1_bits_exceptionVec_1,
  input        io_enq_1_bits_exceptionVec_2,
  input        io_enq_1_bits_exceptionVec_12,
  input        io_enq_1_bits_flushPipe,
  input        io_enq_1_bits_singleStep,
  input        io_enq_1_bits_crossPageIPFFix,
  input        io_enq_1_bits_trigger_frontendHit_0,
  input        io_enq_1_bits_trigger_frontendHit_1,
  input        io_enq_1_bits_trigger_frontendHit_2,
  input        io_enq_1_bits_trigger_frontendHit_3,
  input        io_wb_0_valid,
  input        io_wb_0_bits_robIdx_flag,
  input  [4:0] io_wb_0_bits_robIdx_value,
  input        io_wb_0_bits_exceptionVec_2,
  input        io_wb_0_bits_exceptionVec_3,
  input        io_wb_0_bits_exceptionVec_8,
  input        io_wb_0_bits_exceptionVec_9,
  input        io_wb_0_bits_exceptionVec_11,
  input        io_wb_0_bits_flushPipe,
  input        io_wb_1_valid,
  input        io_wb_1_bits_robIdx_flag,
  input  [4:0] io_wb_1_bits_robIdx_value,
  input        io_wb_1_bits_exceptionVec_4,
  input        io_wb_1_bits_exceptionVec_5,
  input        io_wb_1_bits_exceptionVec_13,
  input        io_wb_1_bits_replayInst,
  input        io_wb_1_bits_trigger_backendHit_0,
  input        io_wb_1_bits_trigger_backendHit_1,
  input        io_wb_1_bits_trigger_backendHit_2,
  input        io_wb_1_bits_trigger_backendHit_3,
  input        io_wb_1_bits_trigger_backendHit_4,
  input        io_wb_1_bits_trigger_backendHit_5,
  input        io_wb_2_valid,
  input        io_wb_2_bits_robIdx_flag,
  input  [4:0] io_wb_2_bits_robIdx_value,
  input        io_wb_2_bits_exceptionVec_4,
  input        io_wb_2_bits_exceptionVec_5,
  input        io_wb_2_bits_exceptionVec_13,
  input        io_wb_2_bits_replayInst,
  input        io_wb_2_bits_trigger_backendHit_0,
  input        io_wb_2_bits_trigger_backendHit_1,
  input        io_wb_2_bits_trigger_backendHit_2,
  input        io_wb_2_bits_trigger_backendHit_3,
  input        io_wb_2_bits_trigger_backendHit_4,
  input        io_wb_2_bits_trigger_backendHit_5,
  input        io_wb_3_valid,
  input        io_wb_3_bits_robIdx_flag,
  input  [4:0] io_wb_3_bits_robIdx_value,
  input        io_wb_3_bits_exceptionVec_4,
  input        io_wb_3_bits_exceptionVec_5,
  input        io_wb_3_bits_exceptionVec_6,
  input        io_wb_3_bits_exceptionVec_7,
  input        io_wb_3_bits_exceptionVec_13,
  input        io_wb_3_bits_exceptionVec_15,
  input        io_wb_3_bits_trigger_backendHit_0,
  input        io_wb_3_bits_trigger_backendHit_1,
  input        io_wb_3_bits_trigger_backendHit_2,
  input        io_wb_3_bits_trigger_backendHit_3,
  input        io_wb_3_bits_trigger_backendHit_4,
  input        io_wb_3_bits_trigger_backendHit_5,
  input        io_wb_4_valid,
  input        io_wb_4_bits_robIdx_flag,
  input  [4:0] io_wb_4_bits_robIdx_value,
  input        io_wb_4_bits_exceptionVec_6,
  input        io_wb_4_bits_exceptionVec_7,
  input        io_wb_4_bits_exceptionVec_15,
  input        io_wb_4_bits_trigger_backendHit_0,
  input        io_wb_4_bits_trigger_backendHit_1,
  input        io_wb_4_bits_trigger_backendHit_4,
  output       io_out_valid,
  output [4:0] io_out_bits_robIdx_value,
  output       io_state_valid,
  output       io_state_bits_robIdx_flag,
  output [4:0] io_state_bits_robIdx_value,
  output       io_state_bits_exceptionVec_0,
  output       io_state_bits_exceptionVec_1,
  output       io_state_bits_exceptionVec_2,
  output       io_state_bits_exceptionVec_3,
  output       io_state_bits_exceptionVec_4,
  output       io_state_bits_exceptionVec_5,
  output       io_state_bits_exceptionVec_6,
  output       io_state_bits_exceptionVec_7,
  output       io_state_bits_exceptionVec_8,
  output       io_state_bits_exceptionVec_9,
  output       io_state_bits_exceptionVec_10,
  output       io_state_bits_exceptionVec_11,
  output       io_state_bits_exceptionVec_12,
  output       io_state_bits_exceptionVec_13,
  output       io_state_bits_exceptionVec_14,
  output       io_state_bits_exceptionVec_15,
  output       io_state_bits_flushPipe,
  output       io_state_bits_replayInst,
  output       io_state_bits_singleStep,
  output       io_state_bits_crossPageIPFFix,
  output       io_state_bits_trigger_frontendHit_0,
  output       io_state_bits_trigger_frontendHit_1,
  output       io_state_bits_trigger_frontendHit_2,
  output       io_state_bits_trigger_frontendHit_3,
  output       io_state_bits_trigger_backendHit_0,
  output       io_state_bits_trigger_backendHit_1,
  output       io_state_bits_trigger_backendHit_2,
  output       io_state_bits_trigger_backendHit_3,
  output       io_state_bits_trigger_backendHit_4,
  output       io_state_bits_trigger_backendHit_5
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
  reg  currentValid; // @[Rob.scala 318:29]
  reg  current_robIdx_flag; // @[Rob.scala 319:20]
  reg [4:0] current_robIdx_value; // @[Rob.scala 319:20]
  reg  current_exceptionVec_0; // @[Rob.scala 319:20]
  reg  current_exceptionVec_1; // @[Rob.scala 319:20]
  reg  current_exceptionVec_2; // @[Rob.scala 319:20]
  reg  current_exceptionVec_3; // @[Rob.scala 319:20]
  reg  current_exceptionVec_4; // @[Rob.scala 319:20]
  reg  current_exceptionVec_5; // @[Rob.scala 319:20]
  reg  current_exceptionVec_6; // @[Rob.scala 319:20]
  reg  current_exceptionVec_7; // @[Rob.scala 319:20]
  reg  current_exceptionVec_8; // @[Rob.scala 319:20]
  reg  current_exceptionVec_9; // @[Rob.scala 319:20]
  reg  current_exceptionVec_10; // @[Rob.scala 319:20]
  reg  current_exceptionVec_11; // @[Rob.scala 319:20]
  reg  current_exceptionVec_12; // @[Rob.scala 319:20]
  reg  current_exceptionVec_13; // @[Rob.scala 319:20]
  reg  current_exceptionVec_14; // @[Rob.scala 319:20]
  reg  current_exceptionVec_15; // @[Rob.scala 319:20]
  reg  current_flushPipe; // @[Rob.scala 319:20]
  reg  current_replayInst; // @[Rob.scala 319:20]
  reg  current_singleStep; // @[Rob.scala 319:20]
  reg  current_crossPageIPFFix; // @[Rob.scala 319:20]
  reg  current_trigger_frontendHit_0; // @[Rob.scala 319:20]
  reg  current_trigger_frontendHit_1; // @[Rob.scala 319:20]
  reg  current_trigger_frontendHit_2; // @[Rob.scala 319:20]
  reg  current_trigger_frontendHit_3; // @[Rob.scala 319:20]
  reg  current_trigger_backendEn_0; // @[Rob.scala 319:20]
  reg  current_trigger_backendEn_1; // @[Rob.scala 319:20]
  reg  current_trigger_backendHit_0; // @[Rob.scala 319:20]
  reg  current_trigger_backendHit_1; // @[Rob.scala 319:20]
  reg  current_trigger_backendHit_2; // @[Rob.scala 319:20]
  reg  current_trigger_backendHit_3; // @[Rob.scala 319:20]
  reg  current_trigger_backendHit_4; // @[Rob.scala 319:20]
  reg  current_trigger_backendHit_5; // @[Rob.scala 319:20]
  reg  lastCycleFlush; // @[Rob.scala 322:31]
  wire [15:0] _in_enq_valid_T = {2'h0,1'h0,io_enq_0_bits_exceptionVec_12,4'h0,4'h0,1'h0,io_enq_0_bits_exceptionVec_2,
    io_enq_0_bits_exceptionVec_1,1'h0}; // @[Rob.scala 282:36]
  wire  _in_enq_valid_T_7 = io_enq_0_bits_trigger_frontendHit_0 | io_enq_0_bits_trigger_frontendHit_1 |
    io_enq_0_bits_trigger_frontendHit_2 | io_enq_0_bits_trigger_frontendHit_3; // @[Bundle.scala 644:45]
  wire  _in_enq_valid_T_14 = |_in_enq_valid_T | io_enq_0_bits_flushPipe | io_enq_0_bits_singleStep | _in_enq_valid_T_7; // @[Rob.scala 282:88]
  wire  _in_enq_valid_T_16 = ~lastCycleFlush; // @[Rob.scala 323:81]
  wire  in_enq_valid_0 = io_enq_0_valid & _in_enq_valid_T_14 & ~lastCycleFlush; // @[Rob.scala 323:78]
  wire [15:0] _in_enq_valid_T_18 = {2'h0,1'h0,io_enq_1_bits_exceptionVec_12,4'h0,4'h0,1'h0,io_enq_1_bits_exceptionVec_2,
    io_enq_1_bits_exceptionVec_1,1'h0}; // @[Rob.scala 282:36]
  wire  _in_enq_valid_T_25 = io_enq_1_bits_trigger_frontendHit_0 | io_enq_1_bits_trigger_frontendHit_1 |
    io_enq_1_bits_trigger_frontendHit_2 | io_enq_1_bits_trigger_frontendHit_3; // @[Bundle.scala 644:45]
  wire  _in_enq_valid_T_32 = |_in_enq_valid_T_18 | io_enq_1_bits_flushPipe | io_enq_1_bits_singleStep |
    _in_enq_valid_T_25; // @[Rob.scala 282:88]
  wire  in_enq_valid_1 = io_enq_1_valid & _in_enq_valid_T_32 & ~lastCycleFlush; // @[Rob.scala 323:78]
  wire [15:0] _in_wb_valid_T = {4'h0,io_wb_0_bits_exceptionVec_11,1'h0,io_wb_0_bits_exceptionVec_9,
    io_wb_0_bits_exceptionVec_8,4'h0,io_wb_0_bits_exceptionVec_3,io_wb_0_bits_exceptionVec_2,2'h0}; // @[Rob.scala 282:36]
  wire  _in_wb_valid_T_2 = |_in_wb_valid_T | io_wb_0_bits_flushPipe; // @[Rob.scala 282:47]
  wire  in_wb_valid_0 = io_wb_0_valid & _in_wb_valid_T_2 & _in_enq_valid_T_16; // @[Rob.scala 324:68]
  wire [15:0] _in_wb_valid_T_17 = {2'h0,io_wb_1_bits_exceptionVec_13,1'h0,4'h0,2'h0,io_wb_1_bits_exceptionVec_5,
    io_wb_1_bits_exceptionVec_4,4'h0}; // @[Rob.scala 282:36]
  wire  _in_wb_valid_T_29 = io_wb_1_bits_trigger_backendHit_0 | io_wb_1_bits_trigger_backendHit_1 |
    io_wb_1_bits_trigger_backendHit_2 | io_wb_1_bits_trigger_backendHit_3 | io_wb_1_bits_trigger_backendHit_4 |
    io_wb_1_bits_trigger_backendHit_5; // @[Bundle.scala 645:43]
  wire  _in_wb_valid_T_31 = |_in_wb_valid_T_17 | io_wb_1_bits_replayInst | _in_wb_valid_T_29; // @[Rob.scala 282:88]
  wire  in_wb_valid_1 = io_wb_1_valid & _in_wb_valid_T_31 & _in_enq_valid_T_16; // @[Rob.scala 324:68]
  wire [15:0] _in_wb_valid_T_34 = {2'h0,io_wb_2_bits_exceptionVec_13,1'h0,4'h0,2'h0,io_wb_2_bits_exceptionVec_5,
    io_wb_2_bits_exceptionVec_4,4'h0}; // @[Rob.scala 282:36]
  wire  _in_wb_valid_T_46 = io_wb_2_bits_trigger_backendHit_0 | io_wb_2_bits_trigger_backendHit_1 |
    io_wb_2_bits_trigger_backendHit_2 | io_wb_2_bits_trigger_backendHit_3 | io_wb_2_bits_trigger_backendHit_4 |
    io_wb_2_bits_trigger_backendHit_5; // @[Bundle.scala 645:43]
  wire  _in_wb_valid_T_48 = |_in_wb_valid_T_34 | io_wb_2_bits_replayInst | _in_wb_valid_T_46; // @[Rob.scala 282:88]
  wire  in_wb_valid_2 = io_wb_2_valid & _in_wb_valid_T_48 & _in_enq_valid_T_16; // @[Rob.scala 324:68]
  wire [15:0] _in_wb_valid_T_51 = {io_wb_3_bits_exceptionVec_15,1'h0,io_wb_3_bits_exceptionVec_13,1'h0,4'h0,
    io_wb_3_bits_exceptionVec_7,io_wb_3_bits_exceptionVec_6,io_wb_3_bits_exceptionVec_5,io_wb_3_bits_exceptionVec_4,4'h0
    }; // @[Rob.scala 282:36]
  wire  _in_wb_valid_T_63 = io_wb_3_bits_trigger_backendHit_0 | io_wb_3_bits_trigger_backendHit_1 |
    io_wb_3_bits_trigger_backendHit_2 | io_wb_3_bits_trigger_backendHit_3 | io_wb_3_bits_trigger_backendHit_4 |
    io_wb_3_bits_trigger_backendHit_5; // @[Bundle.scala 645:43]
  wire  _in_wb_valid_T_65 = |_in_wb_valid_T_51 | _in_wb_valid_T_63; // @[Rob.scala 282:88]
  wire  in_wb_valid_3 = io_wb_3_valid & _in_wb_valid_T_65 & _in_enq_valid_T_16; // @[Rob.scala 324:68]
  wire [15:0] _in_wb_valid_T_68 = {io_wb_4_bits_exceptionVec_15,1'h0,2'h0,4'h0,io_wb_4_bits_exceptionVec_7,
    io_wb_4_bits_exceptionVec_6,2'h0,4'h0}; // @[Rob.scala 282:36]
  wire  _in_wb_valid_T_79 = io_wb_4_bits_trigger_backendHit_0 | io_wb_4_bits_trigger_backendHit_1 |
    io_wb_4_bits_trigger_backendHit_4; // @[Bundle.scala 645:43]
  wire  _in_wb_valid_T_82 = |_in_wb_valid_T_68 | _in_wb_valid_T_79; // @[Rob.scala 282:88]
  wire  in_wb_valid_4 = io_wb_4_valid & _in_wb_valid_T_82 & _in_enq_valid_T_16; // @[Rob.scala 324:68]
  wire [5:0] _wb_valid_flushItself_T_1 = {io_wb_0_bits_robIdx_flag,io_wb_0_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _wb_valid_flushItself_T_2 = {io_redirect_bits_robIdx_flag,io_redirect_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _wb_valid_flushItself_T_3 = _wb_valid_flushItself_T_1 == _wb_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  wb_valid_flushItself = io_redirect_bits_level & _wb_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  wb_valid_differentFlag = io_wb_0_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  wb_valid_compare = io_wb_0_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _wb_valid_T = wb_valid_differentFlag ^ wb_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _wb_valid_T_2 = io_redirect_valid & (wb_valid_flushItself | _wb_valid_T); // @[Rob.scala 143:20]
  wire [5:0] _wb_valid_flushItself_T_5 = {io_wb_1_bits_robIdx_flag,io_wb_1_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _wb_valid_flushItself_T_7 = _wb_valid_flushItself_T_5 == _wb_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  wb_valid_flushItself_1 = io_redirect_bits_level & _wb_valid_flushItself_T_7; // @[Rob.scala 142:51]
  wire  wb_valid_differentFlag_1 = io_wb_1_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  wb_valid_compare_1 = io_wb_1_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _wb_valid_T_5 = wb_valid_differentFlag_1 ^ wb_valid_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _wb_valid_T_7 = io_redirect_valid & (wb_valid_flushItself_1 | _wb_valid_T_5); // @[Rob.scala 143:20]
  wire  wb_valid_1 = in_wb_valid_1 & ~(_wb_valid_T_7 | io_flush); // @[Rob.scala 327:78]
  wire [5:0] _wb_valid_flushItself_T_9 = {io_wb_2_bits_robIdx_flag,io_wb_2_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _wb_valid_flushItself_T_11 = _wb_valid_flushItself_T_9 == _wb_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  wb_valid_flushItself_2 = io_redirect_bits_level & _wb_valid_flushItself_T_11; // @[Rob.scala 142:51]
  wire  wb_valid_differentFlag_2 = io_wb_2_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  wb_valid_compare_2 = io_wb_2_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _wb_valid_T_10 = wb_valid_differentFlag_2 ^ wb_valid_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  _wb_valid_T_12 = io_redirect_valid & (wb_valid_flushItself_2 | _wb_valid_T_10); // @[Rob.scala 143:20]
  wire  wb_valid_2 = in_wb_valid_2 & ~(_wb_valid_T_12 | io_flush); // @[Rob.scala 327:78]
  wire [5:0] _wb_valid_flushItself_T_13 = {io_wb_3_bits_robIdx_flag,io_wb_3_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _wb_valid_flushItself_T_15 = _wb_valid_flushItself_T_13 == _wb_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  wb_valid_flushItself_3 = io_redirect_bits_level & _wb_valid_flushItself_T_15; // @[Rob.scala 142:51]
  wire  wb_valid_differentFlag_3 = io_wb_3_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  wb_valid_compare_3 = io_wb_3_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _wb_valid_T_15 = wb_valid_differentFlag_3 ^ wb_valid_compare_3; // @[CircularQueuePtr.scala 68:19]
  wire  _wb_valid_T_17 = io_redirect_valid & (wb_valid_flushItself_3 | _wb_valid_T_15); // @[Rob.scala 143:20]
  wire  wb_valid_3 = in_wb_valid_3 & ~(_wb_valid_T_17 | io_flush); // @[Rob.scala 327:78]
  wire [5:0] _wb_valid_flushItself_T_17 = {io_wb_4_bits_robIdx_flag,io_wb_4_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _wb_valid_flushItself_T_19 = _wb_valid_flushItself_T_17 == _wb_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  wb_valid_flushItself_4 = io_redirect_bits_level & _wb_valid_flushItself_T_19; // @[Rob.scala 142:51]
  wire  wb_valid_differentFlag_4 = io_wb_4_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  wb_valid_compare_4 = io_wb_4_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _wb_valid_T_20 = wb_valid_differentFlag_4 ^ wb_valid_compare_4; // @[CircularQueuePtr.scala 68:19]
  wire  _wb_valid_T_22 = io_redirect_valid & (wb_valid_flushItself_4 | _wb_valid_T_20); // @[Rob.scala 143:20]
  wire  wb_valid_4 = in_wb_valid_4 & ~(_wb_valid_T_22 | io_flush); // @[Rob.scala 327:78]
  wire  load_wb_bits_oldest_differentFlag = io_wb_2_bits_robIdx_flag ^ io_wb_1_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  load_wb_bits_oldest_compare = io_wb_2_bits_robIdx_value > io_wb_1_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _load_wb_bits_oldest_T_1 = load_wb_bits_oldest_differentFlag ^ load_wb_bits_oldest_compare; // @[CircularQueuePtr.scala 68:19]
  wire  store_wb_bits_oldest_differentFlag = io_wb_4_bits_robIdx_flag ^ io_wb_3_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  store_wb_bits_oldest_compare = io_wb_4_bits_robIdx_value > io_wb_3_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _store_wb_bits_oldest_T_1 = store_wb_bits_oldest_differentFlag ^ store_wb_bits_oldest_compare; // @[CircularQueuePtr.scala 68:19]
  reg  s0_out_valid_0; // @[Rob.scala 331:29]
  reg  s0_out_valid_1; // @[Rob.scala 331:29]
  reg  s0_out_valid_2; // @[Rob.scala 331:29]
  reg  s0_out_bits_0_robIdx_flag; // @[Rob.scala 332:28]
  reg [4:0] s0_out_bits_0_robIdx_value; // @[Rob.scala 332:28]
  reg  s0_out_bits_0_exceptionVec_2; // @[Rob.scala 332:28]
  reg  s0_out_bits_0_exceptionVec_3; // @[Rob.scala 332:28]
  reg  s0_out_bits_0_exceptionVec_8; // @[Rob.scala 332:28]
  reg  s0_out_bits_0_exceptionVec_9; // @[Rob.scala 332:28]
  reg  s0_out_bits_0_exceptionVec_11; // @[Rob.scala 332:28]
  reg  s0_out_bits_0_flushPipe; // @[Rob.scala 332:28]
  reg  s0_out_bits_1_robIdx_flag; // @[Rob.scala 332:28]
  reg [4:0] s0_out_bits_1_robIdx_value; // @[Rob.scala 332:28]
  reg  s0_out_bits_1_exceptionVec_4; // @[Rob.scala 332:28]
  reg  s0_out_bits_1_exceptionVec_5; // @[Rob.scala 332:28]
  reg  s0_out_bits_1_exceptionVec_13; // @[Rob.scala 332:28]
  reg  s0_out_bits_1_replayInst; // @[Rob.scala 332:28]
  reg  s0_out_bits_1_trigger_backendHit_0; // @[Rob.scala 332:28]
  reg  s0_out_bits_1_trigger_backendHit_1; // @[Rob.scala 332:28]
  reg  s0_out_bits_1_trigger_backendHit_2; // @[Rob.scala 332:28]
  reg  s0_out_bits_1_trigger_backendHit_3; // @[Rob.scala 332:28]
  reg  s0_out_bits_1_trigger_backendHit_4; // @[Rob.scala 332:28]
  reg  s0_out_bits_1_trigger_backendHit_5; // @[Rob.scala 332:28]
  reg  s0_out_bits_2_robIdx_flag; // @[Rob.scala 332:28]
  reg [4:0] s0_out_bits_2_robIdx_value; // @[Rob.scala 332:28]
  reg  s0_out_bits_2_exceptionVec_4; // @[Rob.scala 332:28]
  reg  s0_out_bits_2_exceptionVec_5; // @[Rob.scala 332:28]
  reg  s0_out_bits_2_exceptionVec_6; // @[Rob.scala 332:28]
  reg  s0_out_bits_2_exceptionVec_7; // @[Rob.scala 332:28]
  reg  s0_out_bits_2_exceptionVec_13; // @[Rob.scala 332:28]
  reg  s0_out_bits_2_exceptionVec_15; // @[Rob.scala 332:28]
  reg  s0_out_bits_2_trigger_backendHit_0; // @[Rob.scala 332:28]
  reg  s0_out_bits_2_trigger_backendHit_1; // @[Rob.scala 332:28]
  reg  s0_out_bits_2_trigger_backendHit_2; // @[Rob.scala 332:28]
  reg  s0_out_bits_2_trigger_backendHit_3; // @[Rob.scala 332:28]
  reg  s0_out_bits_2_trigger_backendHit_4; // @[Rob.scala 332:28]
  reg  s0_out_bits_2_trigger_backendHit_5; // @[Rob.scala 332:28]
  wire [5:0] _s1_valid_flushItself_T_1 = {s0_out_bits_0_robIdx_flag,s0_out_bits_0_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s1_valid_flushItself_T_3 = _s1_valid_flushItself_T_1 == _wb_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s1_valid_flushItself = io_redirect_bits_level & _s1_valid_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s1_valid_differentFlag = s0_out_bits_0_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_valid_compare = s0_out_bits_0_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_valid_T = s1_valid_differentFlag ^ s1_valid_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_valid_T_2 = io_redirect_valid & (s1_valid_flushItself | _s1_valid_T); // @[Rob.scala 143:20]
  wire  s1_valid_0 = s0_out_valid_0 & ~(_s1_valid_T_2 | io_flush); // @[Rob.scala 335:78]
  wire [5:0] _s1_valid_flushItself_T_5 = {s0_out_bits_1_robIdx_flag,s0_out_bits_1_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s1_valid_flushItself_T_7 = _s1_valid_flushItself_T_5 == _wb_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s1_valid_flushItself_1 = io_redirect_bits_level & _s1_valid_flushItself_T_7; // @[Rob.scala 142:51]
  wire  s1_valid_differentFlag_1 = s0_out_bits_1_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_valid_compare_1 = s0_out_bits_1_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_valid_T_6 = s1_valid_differentFlag_1 ^ s1_valid_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_valid_T_8 = io_redirect_valid & (s1_valid_flushItself_1 | _s1_valid_T_6); // @[Rob.scala 143:20]
  wire  s1_valid_1 = s0_out_valid_1 & ~(_s1_valid_T_8 | io_flush); // @[Rob.scala 335:78]
  wire [5:0] _s1_valid_flushItself_T_9 = {s0_out_bits_2_robIdx_flag,s0_out_bits_2_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s1_valid_flushItself_T_11 = _s1_valid_flushItself_T_9 == _wb_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s1_valid_flushItself_2 = io_redirect_bits_level & _s1_valid_flushItself_T_11; // @[Rob.scala 142:51]
  wire  s1_valid_differentFlag_2 = s0_out_bits_2_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_valid_compare_2 = s0_out_bits_2_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_valid_T_12 = s1_valid_differentFlag_2 ^ s1_valid_compare_2; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_valid_T_14 = io_redirect_valid & (s1_valid_flushItself_2 | _s1_valid_T_12); // @[Rob.scala 143:20]
  wire  s1_valid_2 = s0_out_valid_2 & ~(_s1_valid_T_14 | io_flush); // @[Rob.scala 335:78]
  wire  compare_01_valid = s0_out_valid_0 | s0_out_valid_1; // @[Rob.scala 336:42]
  wire  compare_01_bits_differentFlag = s0_out_bits_0_robIdx_flag ^ s0_out_bits_1_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_01_bits_compare = s0_out_bits_0_robIdx_value > s0_out_bits_1_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _compare_01_bits_T_1 = compare_01_bits_differentFlag ^ compare_01_bits_compare; // @[CircularQueuePtr.scala 68:19]
  wire  compare_01_bits_robIdx_flag = ~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1 ?
    s0_out_bits_1_robIdx_flag : s0_out_bits_0_robIdx_flag; // @[Rob.scala 337:28]
  wire [4:0] compare_01_bits_robIdx_value = ~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1 ?
    s0_out_bits_1_robIdx_value : s0_out_bits_0_robIdx_value; // @[Rob.scala 337:28]
  wire  compare_01_bits_exceptionVec_2 = ~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1 ? 1'h0 :
    s0_out_bits_0_exceptionVec_2; // @[Rob.scala 337:28]
  wire  compare_01_bits_exceptionVec_3 = ~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1 ? 1'h0 :
    s0_out_bits_0_exceptionVec_3; // @[Rob.scala 337:28]
  wire  compare_01_bits_exceptionVec_4 = (~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1) &
    s0_out_bits_1_exceptionVec_4; // @[Rob.scala 337:28]
  wire  compare_01_bits_exceptionVec_5 = (~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1) &
    s0_out_bits_1_exceptionVec_5; // @[Rob.scala 337:28]
  wire  compare_01_bits_exceptionVec_8 = ~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1 ? 1'h0 :
    s0_out_bits_0_exceptionVec_8; // @[Rob.scala 337:28]
  wire  compare_01_bits_exceptionVec_9 = ~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1 ? 1'h0 :
    s0_out_bits_0_exceptionVec_9; // @[Rob.scala 337:28]
  wire  compare_01_bits_exceptionVec_11 = ~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1 ? 1'h0 :
    s0_out_bits_0_exceptionVec_11; // @[Rob.scala 337:28]
  wire  compare_01_bits_exceptionVec_13 = (~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1) &
    s0_out_bits_1_exceptionVec_13; // @[Rob.scala 337:28]
  wire  compare_01_bits_flushPipe = ~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1 ? 1'h0 :
    s0_out_bits_0_flushPipe; // @[Rob.scala 337:28]
  wire  compare_01_bits_replayInst = (~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1) &
    s0_out_bits_1_replayInst; // @[Rob.scala 337:28]
  wire  compare_01_bits_trigger_backendHit_0 = (~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1) &
    s0_out_bits_1_trigger_backendHit_0; // @[Rob.scala 337:28]
  wire  compare_01_bits_trigger_backendHit_1 = (~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1) &
    s0_out_bits_1_trigger_backendHit_1; // @[Rob.scala 337:28]
  wire  compare_01_bits_trigger_backendHit_2 = (~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1) &
    s0_out_bits_1_trigger_backendHit_2; // @[Rob.scala 337:28]
  wire  compare_01_bits_trigger_backendHit_3 = (~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1) &
    s0_out_bits_1_trigger_backendHit_3; // @[Rob.scala 337:28]
  wire  compare_01_bits_trigger_backendHit_4 = (~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1) &
    s0_out_bits_1_trigger_backendHit_4; // @[Rob.scala 337:28]
  wire  compare_01_bits_trigger_backendHit_5 = (~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1) &
    s0_out_bits_1_trigger_backendHit_5; // @[Rob.scala 337:28]
  wire  compare_bits_differentFlag = s0_out_bits_2_robIdx_flag ^ compare_01_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare_bits_compare = s0_out_bits_2_robIdx_value > compare_01_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _compare_bits_T_1 = compare_bits_differentFlag ^ compare_bits_compare; // @[CircularQueuePtr.scala 68:19]
  reg  s1_out_bits_robIdx_flag; // @[Rob.scala 339:28]
  reg [4:0] s1_out_bits_robIdx_value; // @[Rob.scala 339:28]
  reg  s1_out_bits_exceptionVec_2; // @[Rob.scala 339:28]
  reg  s1_out_bits_exceptionVec_3; // @[Rob.scala 339:28]
  reg  s1_out_bits_exceptionVec_4; // @[Rob.scala 339:28]
  reg  s1_out_bits_exceptionVec_5; // @[Rob.scala 339:28]
  reg  s1_out_bits_exceptionVec_6; // @[Rob.scala 339:28]
  reg  s1_out_bits_exceptionVec_7; // @[Rob.scala 339:28]
  reg  s1_out_bits_exceptionVec_8; // @[Rob.scala 339:28]
  reg  s1_out_bits_exceptionVec_9; // @[Rob.scala 339:28]
  reg  s1_out_bits_exceptionVec_11; // @[Rob.scala 339:28]
  reg  s1_out_bits_exceptionVec_13; // @[Rob.scala 339:28]
  reg  s1_out_bits_exceptionVec_15; // @[Rob.scala 339:28]
  reg  s1_out_bits_flushPipe; // @[Rob.scala 339:28]
  reg  s1_out_bits_replayInst; // @[Rob.scala 339:28]
  reg  s1_out_bits_trigger_backendHit_0; // @[Rob.scala 339:28]
  reg  s1_out_bits_trigger_backendHit_1; // @[Rob.scala 339:28]
  reg  s1_out_bits_trigger_backendHit_2; // @[Rob.scala 339:28]
  reg  s1_out_bits_trigger_backendHit_3; // @[Rob.scala 339:28]
  reg  s1_out_bits_trigger_backendHit_4; // @[Rob.scala 339:28]
  reg  s1_out_bits_trigger_backendHit_5; // @[Rob.scala 339:28]
  wire [2:0] _s1_out_valid_T = {s1_valid_2,s1_valid_1,s1_valid_0}; // @[Rob.scala 340:39]
  reg  s1_out_valid; // @[Rob.scala 340:29]
  wire [1:0] _enq_valid_T = {in_enq_valid_1,in_enq_valid_0}; // @[Rob.scala 342:40]
  reg  enq_valid; // @[Rob.scala 342:26]
  reg  enq_bits_robIdx_flag; // @[Rob.scala 343:25]
  reg [4:0] enq_bits_robIdx_value; // @[Rob.scala 343:25]
  reg  enq_bits_exceptionVec_1; // @[Rob.scala 343:25]
  reg  enq_bits_exceptionVec_2; // @[Rob.scala 343:25]
  reg  enq_bits_exceptionVec_12; // @[Rob.scala 343:25]
  reg  enq_bits_flushPipe; // @[Rob.scala 343:25]
  reg  enq_bits_singleStep; // @[Rob.scala 343:25]
  reg  enq_bits_crossPageIPFFix; // @[Rob.scala 343:25]
  reg  enq_bits_trigger_frontendHit_0; // @[Rob.scala 343:25]
  reg  enq_bits_trigger_frontendHit_1; // @[Rob.scala 343:25]
  reg  enq_bits_trigger_frontendHit_2; // @[Rob.scala 343:25]
  reg  enq_bits_trigger_frontendHit_3; // @[Rob.scala 343:25]
  wire [5:0] _current_flush_flushItself_T_1 = {current_robIdx_flag,current_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _current_flush_flushItself_T_3 = _current_flush_flushItself_T_1 == _wb_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  current_flush_flushItself = io_redirect_bits_level & _current_flush_flushItself_T_3; // @[Rob.scala 142:51]
  wire  current_flush_differentFlag = current_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  current_flush_compare = current_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _current_flush_T = current_flush_differentFlag ^ current_flush_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _current_flush_T_2 = io_redirect_valid & (current_flush_flushItself | _current_flush_T); // @[Rob.scala 143:20]
  wire  current_flush = _current_flush_T_2 | io_flush; // @[Rob.scala 350:61]
  wire [5:0] _s1_flush_flushItself_T_1 = {s1_out_bits_robIdx_flag,s1_out_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _s1_flush_flushItself_T_3 = _s1_flush_flushItself_T_1 == _wb_valid_flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  s1_flush_flushItself = io_redirect_bits_level & _s1_flush_flushItself_T_3; // @[Rob.scala 142:51]
  wire  s1_flush_differentFlag = s1_out_bits_robIdx_flag ^ io_redirect_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  s1_flush_compare = s1_out_bits_robIdx_value > io_redirect_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _s1_flush_T = s1_flush_differentFlag ^ s1_flush_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _s1_flush_T_2 = io_redirect_valid & (s1_flush_flushItself | _s1_flush_T); // @[Rob.scala 143:20]
  wire  s1_flush = _s1_flush_T_2 | io_flush; // @[Rob.scala 351:60]
  wire  _T_1 = s1_out_valid & ~s1_flush; // @[Rob.scala 356:24]
  wire  differentFlag = current_robIdx_flag ^ s1_out_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare = current_robIdx_value > s1_out_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_2 = differentFlag ^ compare; // @[CircularQueuePtr.scala 68:19]
  wire  _T_5 = _current_flush_flushItself_T_1 == _s1_flush_flushItself_T_1; // @[CircularQueuePtr.scala 61:47]
  wire [7:0] lo = {s1_out_bits_exceptionVec_7,s1_out_bits_exceptionVec_6,s1_out_bits_exceptionVec_5,
    s1_out_bits_exceptionVec_4,s1_out_bits_exceptionVec_3,s1_out_bits_exceptionVec_2,2'h0}; // @[Rob.scala 360:59]
  wire [15:0] _T_6 = {s1_out_bits_exceptionVec_15,1'h0,s1_out_bits_exceptionVec_13,1'h0,s1_out_bits_exceptionVec_11,1'h0
    ,s1_out_bits_exceptionVec_9,s1_out_bits_exceptionVec_8,lo}; // @[Rob.scala 360:59]
  wire [7:0] lo_1 = {current_exceptionVec_7,current_exceptionVec_6,current_exceptionVec_5,current_exceptionVec_4,
    current_exceptionVec_3,current_exceptionVec_2,current_exceptionVec_1,current_exceptionVec_0}; // @[Rob.scala 360:89]
  wire [15:0] _T_7 = {current_exceptionVec_15,current_exceptionVec_14,current_exceptionVec_13,current_exceptionVec_12,
    current_exceptionVec_11,current_exceptionVec_10,current_exceptionVec_9,current_exceptionVec_8,lo_1}; // @[Rob.scala 360:89]
  wire [15:0] _T_8 = _T_6 | _T_7; // @[Rob.scala 360:66]
  wire [11:0] _current_trigger_T = {6'h0,s1_out_bits_trigger_backendHit_5,s1_out_bits_trigger_backendHit_4,
    s1_out_bits_trigger_backendHit_3,s1_out_bits_trigger_backendHit_2,s1_out_bits_trigger_backendHit_1,
    s1_out_bits_trigger_backendHit_0}; // @[Rob.scala 364:49]
  wire [5:0] current_trigger_lo_1 = {current_trigger_backendHit_5,current_trigger_backendHit_4,
    current_trigger_backendHit_3,current_trigger_backendHit_2,current_trigger_backendHit_1,current_trigger_backendHit_0}
    ; // @[Rob.scala 364:74]
  wire [11:0] _current_trigger_T_1 = {current_trigger_frontendHit_3,current_trigger_frontendHit_2,
    current_trigger_frontendHit_1,current_trigger_frontendHit_0,current_trigger_backendEn_1,current_trigger_backendEn_0,
    current_trigger_lo_1}; // @[Rob.scala 364:74]
  wire [11:0] _current_trigger_T_2 = _current_trigger_T | _current_trigger_T_1; // @[Rob.scala 364:56]
  wire  _GEN_100 = enq_valid & ~(io_redirect_valid | io_flush) | currentValid; // @[Rob.scala 370:62 371:18 318:29]
  wire  _GEN_135 = _T_1 | _GEN_100; // @[Rob.scala 367:42 368:18]
  wire [15:0] _io_out_valid_T = {2'h0,1'h0,enq_bits_exceptionVec_12,4'h0,4'h0,1'h0,enq_bits_exceptionVec_2,
    enq_bits_exceptionVec_1,1'h0}; // @[Rob.scala 285:36]
  wire  _io_out_valid_T_5 = enq_bits_trigger_frontendHit_0 | enq_bits_trigger_frontendHit_1 |
    enq_bits_trigger_frontendHit_2 | enq_bits_trigger_frontendHit_3; // @[Bundle.scala 644:45]
  wire  _io_out_valid_T_12 = |_io_out_valid_T | enq_bits_singleStep | _io_out_valid_T_5; // @[Rob.scala 285:61]
  assign io_out_valid = s1_out_valid | enq_valid & _io_out_valid_T_12; // @[Rob.scala 375:34]
  assign io_out_bits_robIdx_value = s1_out_valid ? s1_out_bits_robIdx_value : enq_bits_robIdx_value; // @[Rob.scala 376:24]
  assign io_state_valid = currentValid; // @[Rob.scala 377:18]
  assign io_state_bits_robIdx_flag = current_robIdx_flag; // @[Rob.scala 378:18]
  assign io_state_bits_robIdx_value = current_robIdx_value; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_0 = current_exceptionVec_0; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_1 = current_exceptionVec_1; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_2 = current_exceptionVec_2; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_3 = current_exceptionVec_3; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_4 = current_exceptionVec_4; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_5 = current_exceptionVec_5; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_6 = current_exceptionVec_6; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_7 = current_exceptionVec_7; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_8 = current_exceptionVec_8; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_9 = current_exceptionVec_9; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_10 = current_exceptionVec_10; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_11 = current_exceptionVec_11; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_12 = current_exceptionVec_12; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_13 = current_exceptionVec_13; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_14 = current_exceptionVec_14; // @[Rob.scala 378:18]
  assign io_state_bits_exceptionVec_15 = current_exceptionVec_15; // @[Rob.scala 378:18]
  assign io_state_bits_flushPipe = current_flushPipe; // @[Rob.scala 378:18]
  assign io_state_bits_replayInst = current_replayInst; // @[Rob.scala 378:18]
  assign io_state_bits_singleStep = current_singleStep; // @[Rob.scala 378:18]
  assign io_state_bits_crossPageIPFFix = current_crossPageIPFFix; // @[Rob.scala 378:18]
  assign io_state_bits_trigger_frontendHit_0 = current_trigger_frontendHit_0; // @[Rob.scala 378:18]
  assign io_state_bits_trigger_frontendHit_1 = current_trigger_frontendHit_1; // @[Rob.scala 378:18]
  assign io_state_bits_trigger_frontendHit_2 = current_trigger_frontendHit_2; // @[Rob.scala 378:18]
  assign io_state_bits_trigger_frontendHit_3 = current_trigger_frontendHit_3; // @[Rob.scala 378:18]
  assign io_state_bits_trigger_backendHit_0 = current_trigger_backendHit_0; // @[Rob.scala 378:18]
  assign io_state_bits_trigger_backendHit_1 = current_trigger_backendHit_1; // @[Rob.scala 378:18]
  assign io_state_bits_trigger_backendHit_2 = current_trigger_backendHit_2; // @[Rob.scala 378:18]
  assign io_state_bits_trigger_backendHit_3 = current_trigger_backendHit_3; // @[Rob.scala 378:18]
  assign io_state_bits_trigger_backendHit_4 = current_trigger_backendHit_4; // @[Rob.scala 378:18]
  assign io_state_bits_trigger_backendHit_5 = current_trigger_backendHit_5; // @[Rob.scala 378:18]
  always @(posedge clock) begin
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_robIdx_flag <= s1_out_bits_robIdx_flag; // @[Rob.scala 358:17]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_robIdx_flag <= s1_out_bits_robIdx_flag; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_robIdx_flag <= enq_bits_robIdx_flag; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_robIdx_value <= s1_out_bits_robIdx_value; // @[Rob.scala 358:17]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_robIdx_value <= s1_out_bits_robIdx_value; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_robIdx_value <= enq_bits_robIdx_value; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_0 <= 1'h0; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_0 <= _T_8[0]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_0 <= 1'h0; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_0 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_1 <= 1'h0; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_1 <= _T_8[1]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_1 <= 1'h0; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_1 <= enq_bits_exceptionVec_1; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_2 <= s1_out_bits_exceptionVec_2; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_2 <= _T_8[2]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_2 <= s1_out_bits_exceptionVec_2; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_2 <= enq_bits_exceptionVec_2; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_3 <= s1_out_bits_exceptionVec_3; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_3 <= _T_8[3]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_3 <= s1_out_bits_exceptionVec_3; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_3 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_4 <= s1_out_bits_exceptionVec_4; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_4 <= _T_8[4]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_4 <= s1_out_bits_exceptionVec_4; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_4 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_5 <= s1_out_bits_exceptionVec_5; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_5 <= _T_8[5]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_5 <= s1_out_bits_exceptionVec_5; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_5 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_6 <= s1_out_bits_exceptionVec_6; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_6 <= _T_8[6]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_6 <= s1_out_bits_exceptionVec_6; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_6 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_7 <= s1_out_bits_exceptionVec_7; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_7 <= _T_8[7]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_7 <= s1_out_bits_exceptionVec_7; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_7 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_8 <= s1_out_bits_exceptionVec_8; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_8 <= _T_8[8]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_8 <= s1_out_bits_exceptionVec_8; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_8 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_9 <= s1_out_bits_exceptionVec_9; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_9 <= _T_8[9]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_9 <= s1_out_bits_exceptionVec_9; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_9 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_10 <= 1'h0; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_10 <= _T_8[10]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_10 <= 1'h0; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_10 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_11 <= s1_out_bits_exceptionVec_11; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_11 <= _T_8[11]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_11 <= s1_out_bits_exceptionVec_11; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_11 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_12 <= 1'h0; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_12 <= _T_8[12]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_12 <= 1'h0; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_12 <= enq_bits_exceptionVec_12; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_13 <= s1_out_bits_exceptionVec_13; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_13 <= _T_8[13]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_13 <= s1_out_bits_exceptionVec_13; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_13 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_14 <= 1'h0; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_14 <= _T_8[14]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_14 <= 1'h0; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_14 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_exceptionVec_15 <= s1_out_bits_exceptionVec_15; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_exceptionVec_15 <= _T_8[15]; // @[Rob.scala 360:30]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_exceptionVec_15 <= s1_out_bits_exceptionVec_15; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_exceptionVec_15 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_flushPipe <= s1_out_bits_flushPipe; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_flushPipe <= s1_out_bits_flushPipe | current_flushPipe; // @[Rob.scala 361:27]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_flushPipe <= s1_out_bits_flushPipe; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_flushPipe <= enq_bits_flushPipe; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_replayInst <= s1_out_bits_replayInst; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_replayInst <= s1_out_bits_replayInst | current_replayInst; // @[Rob.scala 362:28]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_replayInst <= s1_out_bits_replayInst; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_replayInst <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_singleStep <= 1'h0; // @[Rob.scala 358:17]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_singleStep <= 1'h0; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_singleStep <= enq_bits_singleStep; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_crossPageIPFFix <= 1'h0; // @[Rob.scala 358:17]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_crossPageIPFFix <= 1'h0; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_crossPageIPFFix <= enq_bits_crossPageIPFFix; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_trigger_frontendHit_0 <= 1'h0; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_trigger_frontendHit_0 <= _current_trigger_T_2[8]; // @[Rob.scala 364:25]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_trigger_frontendHit_0 <= 1'h0; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_trigger_frontendHit_0 <= enq_bits_trigger_frontendHit_0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_trigger_frontendHit_1 <= 1'h0; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_trigger_frontendHit_1 <= _current_trigger_T_2[9]; // @[Rob.scala 364:25]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_trigger_frontendHit_1 <= 1'h0; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_trigger_frontendHit_1 <= enq_bits_trigger_frontendHit_1; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_trigger_frontendHit_2 <= 1'h0; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_trigger_frontendHit_2 <= _current_trigger_T_2[10]; // @[Rob.scala 364:25]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_trigger_frontendHit_2 <= 1'h0; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_trigger_frontendHit_2 <= enq_bits_trigger_frontendHit_2; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_trigger_frontendHit_3 <= 1'h0; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_trigger_frontendHit_3 <= _current_trigger_T_2[11]; // @[Rob.scala 364:25]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_trigger_frontendHit_3 <= 1'h0; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_trigger_frontendHit_3 <= enq_bits_trigger_frontendHit_3; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_trigger_backendEn_0 <= 1'h0; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_trigger_backendEn_0 <= _current_trigger_T_2[6]; // @[Rob.scala 364:25]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_trigger_backendEn_0 <= 1'h0; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_trigger_backendEn_0 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_trigger_backendEn_1 <= 1'h0; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_trigger_backendEn_1 <= _current_trigger_T_2[7]; // @[Rob.scala 364:25]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_trigger_backendEn_1 <= 1'h0; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_trigger_backendEn_1 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_trigger_backendHit_0 <= s1_out_bits_trigger_backendHit_0; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_trigger_backendHit_0 <= _current_trigger_T_2[0]; // @[Rob.scala 364:25]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_trigger_backendHit_0 <= s1_out_bits_trigger_backendHit_0; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_trigger_backendHit_0 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_trigger_backendHit_1 <= s1_out_bits_trigger_backendHit_1; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_trigger_backendHit_1 <= _current_trigger_T_2[1]; // @[Rob.scala 364:25]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_trigger_backendHit_1 <= s1_out_bits_trigger_backendHit_1; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_trigger_backendHit_1 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_trigger_backendHit_2 <= s1_out_bits_trigger_backendHit_2; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_trigger_backendHit_2 <= _current_trigger_T_2[2]; // @[Rob.scala 364:25]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_trigger_backendHit_2 <= s1_out_bits_trigger_backendHit_2; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_trigger_backendHit_2 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_trigger_backendHit_3 <= s1_out_bits_trigger_backendHit_3; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_trigger_backendHit_3 <= _current_trigger_T_2[3]; // @[Rob.scala 364:25]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_trigger_backendHit_3 <= s1_out_bits_trigger_backendHit_3; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_trigger_backendHit_3 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_trigger_backendHit_4 <= s1_out_bits_trigger_backendHit_4; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_trigger_backendHit_4 <= _current_trigger_T_2[4]; // @[Rob.scala 364:25]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_trigger_backendHit_4 <= s1_out_bits_trigger_backendHit_4; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_trigger_backendHit_4 <= 1'h0; // @[Rob.scala 372:13]
    end
    if (currentValid) begin // @[Rob.scala 352:23]
      if (s1_out_valid & ~s1_flush) begin // @[Rob.scala 356:38]
        if (_T_2) begin // @[Rob.scala 357:58]
          current_trigger_backendHit_5 <= s1_out_bits_trigger_backendHit_5; // @[Rob.scala 358:17]
        end else if (_T_5) begin // @[Rob.scala 359:58]
          current_trigger_backendHit_5 <= _current_trigger_T_2[5]; // @[Rob.scala 364:25]
        end
      end
    end else if (_T_1) begin // @[Rob.scala 367:42]
      current_trigger_backendHit_5 <= s1_out_bits_trigger_backendHit_5; // @[Rob.scala 369:13]
    end else if (enq_valid & ~(io_redirect_valid | io_flush)) begin // @[Rob.scala 370:62]
      current_trigger_backendHit_5 <= 1'h0; // @[Rob.scala 372:13]
    end
    lastCycleFlush <= io_flush; // @[Rob.scala 322:31]
    s0_out_valid_0 <= in_wb_valid_0 & ~(_wb_valid_T_2 | io_flush); // @[Rob.scala 327:78]
    s0_out_valid_1 <= wb_valid_1 | wb_valid_2; // @[Rob.scala 331:105]
    s0_out_valid_2 <= wb_valid_3 | wb_valid_4; // @[Rob.scala 331:203]
    s0_out_bits_0_robIdx_flag <= io_wb_0_bits_robIdx_flag; // @[Rob.scala 332:{36,36}]
    s0_out_bits_0_robIdx_value <= io_wb_0_bits_robIdx_value; // @[Rob.scala 332:{36,36}]
    s0_out_bits_0_exceptionVec_2 <= io_wb_0_bits_exceptionVec_2; // @[Rob.scala 332:{36,36}]
    s0_out_bits_0_exceptionVec_3 <= io_wb_0_bits_exceptionVec_3; // @[Rob.scala 332:{36,36}]
    s0_out_bits_0_exceptionVec_8 <= io_wb_0_bits_exceptionVec_8; // @[Rob.scala 332:{36,36}]
    s0_out_bits_0_exceptionVec_9 <= io_wb_0_bits_exceptionVec_9; // @[Rob.scala 332:{36,36}]
    s0_out_bits_0_exceptionVec_11 <= io_wb_0_bits_exceptionVec_11; // @[Rob.scala 332:{36,36}]
    s0_out_bits_0_flushPipe <= io_wb_0_bits_flushPipe; // @[Rob.scala 332:{36,36}]
    if (~in_wb_valid_2 | in_wb_valid_1 & _load_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_1_robIdx_flag <= io_wb_1_bits_robIdx_flag;
    end else begin
      s0_out_bits_1_robIdx_flag <= io_wb_2_bits_robIdx_flag;
    end
    if (~in_wb_valid_2 | in_wb_valid_1 & _load_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_1_robIdx_value <= io_wb_1_bits_robIdx_value;
    end else begin
      s0_out_bits_1_robIdx_value <= io_wb_2_bits_robIdx_value;
    end
    if (~in_wb_valid_2 | in_wb_valid_1 & _load_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_1_exceptionVec_4 <= io_wb_1_bits_exceptionVec_4;
    end else begin
      s0_out_bits_1_exceptionVec_4 <= io_wb_2_bits_exceptionVec_4;
    end
    if (~in_wb_valid_2 | in_wb_valid_1 & _load_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_1_exceptionVec_5 <= io_wb_1_bits_exceptionVec_5;
    end else begin
      s0_out_bits_1_exceptionVec_5 <= io_wb_2_bits_exceptionVec_5;
    end
    if (~in_wb_valid_2 | in_wb_valid_1 & _load_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_1_exceptionVec_13 <= io_wb_1_bits_exceptionVec_13;
    end else begin
      s0_out_bits_1_exceptionVec_13 <= io_wb_2_bits_exceptionVec_13;
    end
    if (~in_wb_valid_2 | in_wb_valid_1 & _load_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_1_replayInst <= io_wb_1_bits_replayInst;
    end else begin
      s0_out_bits_1_replayInst <= io_wb_2_bits_replayInst;
    end
    if (~in_wb_valid_2 | in_wb_valid_1 & _load_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_1_trigger_backendHit_0 <= io_wb_1_bits_trigger_backendHit_0;
    end else begin
      s0_out_bits_1_trigger_backendHit_0 <= io_wb_2_bits_trigger_backendHit_0;
    end
    if (~in_wb_valid_2 | in_wb_valid_1 & _load_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_1_trigger_backendHit_1 <= io_wb_1_bits_trigger_backendHit_1;
    end else begin
      s0_out_bits_1_trigger_backendHit_1 <= io_wb_2_bits_trigger_backendHit_1;
    end
    if (~in_wb_valid_2 | in_wb_valid_1 & _load_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_1_trigger_backendHit_2 <= io_wb_1_bits_trigger_backendHit_2;
    end else begin
      s0_out_bits_1_trigger_backendHit_2 <= io_wb_2_bits_trigger_backendHit_2;
    end
    if (~in_wb_valid_2 | in_wb_valid_1 & _load_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_1_trigger_backendHit_3 <= io_wb_1_bits_trigger_backendHit_3;
    end else begin
      s0_out_bits_1_trigger_backendHit_3 <= io_wb_2_bits_trigger_backendHit_3;
    end
    if (~in_wb_valid_2 | in_wb_valid_1 & _load_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_1_trigger_backendHit_4 <= io_wb_1_bits_trigger_backendHit_4;
    end else begin
      s0_out_bits_1_trigger_backendHit_4 <= io_wb_2_bits_trigger_backendHit_4;
    end
    if (~in_wb_valid_2 | in_wb_valid_1 & _load_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_1_trigger_backendHit_5 <= io_wb_1_bits_trigger_backendHit_5;
    end else begin
      s0_out_bits_1_trigger_backendHit_5 <= io_wb_2_bits_trigger_backendHit_5;
    end
    if (~in_wb_valid_4 | in_wb_valid_3 & _store_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_2_robIdx_flag <= io_wb_3_bits_robIdx_flag;
    end else begin
      s0_out_bits_2_robIdx_flag <= io_wb_4_bits_robIdx_flag;
    end
    if (~in_wb_valid_4 | in_wb_valid_3 & _store_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_2_robIdx_value <= io_wb_3_bits_robIdx_value;
    end else begin
      s0_out_bits_2_robIdx_value <= io_wb_4_bits_robIdx_value;
    end
    s0_out_bits_2_exceptionVec_4 <= (~in_wb_valid_4 | in_wb_valid_3 & _store_wb_bits_oldest_T_1) &
      io_wb_3_bits_exceptionVec_4; // @[Rob.scala 309:23]
    s0_out_bits_2_exceptionVec_5 <= (~in_wb_valid_4 | in_wb_valid_3 & _store_wb_bits_oldest_T_1) &
      io_wb_3_bits_exceptionVec_5; // @[Rob.scala 309:23]
    if (~in_wb_valid_4 | in_wb_valid_3 & _store_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_2_exceptionVec_6 <= io_wb_3_bits_exceptionVec_6;
    end else begin
      s0_out_bits_2_exceptionVec_6 <= io_wb_4_bits_exceptionVec_6;
    end
    if (~in_wb_valid_4 | in_wb_valid_3 & _store_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_2_exceptionVec_7 <= io_wb_3_bits_exceptionVec_7;
    end else begin
      s0_out_bits_2_exceptionVec_7 <= io_wb_4_bits_exceptionVec_7;
    end
    s0_out_bits_2_exceptionVec_13 <= (~in_wb_valid_4 | in_wb_valid_3 & _store_wb_bits_oldest_T_1) &
      io_wb_3_bits_exceptionVec_13; // @[Rob.scala 309:23]
    if (~in_wb_valid_4 | in_wb_valid_3 & _store_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_2_exceptionVec_15 <= io_wb_3_bits_exceptionVec_15;
    end else begin
      s0_out_bits_2_exceptionVec_15 <= io_wb_4_bits_exceptionVec_15;
    end
    if (~in_wb_valid_4 | in_wb_valid_3 & _store_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_2_trigger_backendHit_0 <= io_wb_3_bits_trigger_backendHit_0;
    end else begin
      s0_out_bits_2_trigger_backendHit_0 <= io_wb_4_bits_trigger_backendHit_0;
    end
    if (~in_wb_valid_4 | in_wb_valid_3 & _store_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_2_trigger_backendHit_1 <= io_wb_3_bits_trigger_backendHit_1;
    end else begin
      s0_out_bits_2_trigger_backendHit_1 <= io_wb_4_bits_trigger_backendHit_1;
    end
    s0_out_bits_2_trigger_backendHit_2 <= (~in_wb_valid_4 | in_wb_valid_3 & _store_wb_bits_oldest_T_1) &
      io_wb_3_bits_trigger_backendHit_2; // @[Rob.scala 309:23]
    s0_out_bits_2_trigger_backendHit_3 <= (~in_wb_valid_4 | in_wb_valid_3 & _store_wb_bits_oldest_T_1) &
      io_wb_3_bits_trigger_backendHit_3; // @[Rob.scala 309:23]
    if (~in_wb_valid_4 | in_wb_valid_3 & _store_wb_bits_oldest_T_1) begin // @[Rob.scala 309:23]
      s0_out_bits_2_trigger_backendHit_4 <= io_wb_3_bits_trigger_backendHit_4;
    end else begin
      s0_out_bits_2_trigger_backendHit_4 <= io_wb_4_bits_trigger_backendHit_4;
    end
    s0_out_bits_2_trigger_backendHit_5 <= (~in_wb_valid_4 | in_wb_valid_3 & _store_wb_bits_oldest_T_1) &
      io_wb_3_bits_trigger_backendHit_5; // @[Rob.scala 309:23]
    if (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) begin // @[Rob.scala 338:25]
      if (~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1) begin // @[Rob.scala 337:28]
        s1_out_bits_robIdx_flag <= s0_out_bits_1_robIdx_flag;
      end else begin
        s1_out_bits_robIdx_flag <= s0_out_bits_0_robIdx_flag;
      end
    end else begin
      s1_out_bits_robIdx_flag <= s0_out_bits_2_robIdx_flag;
    end
    if (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) begin // @[Rob.scala 338:25]
      if (~s0_out_valid_0 | s0_out_valid_1 & _compare_01_bits_T_1) begin // @[Rob.scala 337:28]
        s1_out_bits_robIdx_value <= s0_out_bits_1_robIdx_value;
      end else begin
        s1_out_bits_robIdx_value <= s0_out_bits_0_robIdx_value;
      end
    end else begin
      s1_out_bits_robIdx_value <= s0_out_bits_2_robIdx_value;
    end
    s1_out_bits_exceptionVec_2 <= (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) &
      compare_01_bits_exceptionVec_2; // @[Rob.scala 338:25]
    s1_out_bits_exceptionVec_3 <= (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) &
      compare_01_bits_exceptionVec_3; // @[Rob.scala 338:25]
    if (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) begin // @[Rob.scala 338:25]
      s1_out_bits_exceptionVec_4 <= compare_01_bits_exceptionVec_4;
    end else begin
      s1_out_bits_exceptionVec_4 <= s0_out_bits_2_exceptionVec_4;
    end
    if (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) begin // @[Rob.scala 338:25]
      s1_out_bits_exceptionVec_5 <= compare_01_bits_exceptionVec_5;
    end else begin
      s1_out_bits_exceptionVec_5 <= s0_out_bits_2_exceptionVec_5;
    end
    if (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) begin // @[Rob.scala 338:25]
      s1_out_bits_exceptionVec_6 <= 1'h0;
    end else begin
      s1_out_bits_exceptionVec_6 <= s0_out_bits_2_exceptionVec_6;
    end
    if (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) begin // @[Rob.scala 338:25]
      s1_out_bits_exceptionVec_7 <= 1'h0;
    end else begin
      s1_out_bits_exceptionVec_7 <= s0_out_bits_2_exceptionVec_7;
    end
    s1_out_bits_exceptionVec_8 <= (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) &
      compare_01_bits_exceptionVec_8; // @[Rob.scala 338:25]
    s1_out_bits_exceptionVec_9 <= (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) &
      compare_01_bits_exceptionVec_9; // @[Rob.scala 338:25]
    s1_out_bits_exceptionVec_11 <= (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) &
      compare_01_bits_exceptionVec_11; // @[Rob.scala 338:25]
    if (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) begin // @[Rob.scala 338:25]
      s1_out_bits_exceptionVec_13 <= compare_01_bits_exceptionVec_13;
    end else begin
      s1_out_bits_exceptionVec_13 <= s0_out_bits_2_exceptionVec_13;
    end
    if (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) begin // @[Rob.scala 338:25]
      s1_out_bits_exceptionVec_15 <= 1'h0;
    end else begin
      s1_out_bits_exceptionVec_15 <= s0_out_bits_2_exceptionVec_15;
    end
    s1_out_bits_flushPipe <= (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) & compare_01_bits_flushPipe; // @[Rob.scala 338:25]
    s1_out_bits_replayInst <= (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) & compare_01_bits_replayInst; // @[Rob.scala 338:25]
    if (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) begin // @[Rob.scala 338:25]
      s1_out_bits_trigger_backendHit_0 <= compare_01_bits_trigger_backendHit_0;
    end else begin
      s1_out_bits_trigger_backendHit_0 <= s0_out_bits_2_trigger_backendHit_0;
    end
    if (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) begin // @[Rob.scala 338:25]
      s1_out_bits_trigger_backendHit_1 <= compare_01_bits_trigger_backendHit_1;
    end else begin
      s1_out_bits_trigger_backendHit_1 <= s0_out_bits_2_trigger_backendHit_1;
    end
    if (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) begin // @[Rob.scala 338:25]
      s1_out_bits_trigger_backendHit_2 <= compare_01_bits_trigger_backendHit_2;
    end else begin
      s1_out_bits_trigger_backendHit_2 <= s0_out_bits_2_trigger_backendHit_2;
    end
    if (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) begin // @[Rob.scala 338:25]
      s1_out_bits_trigger_backendHit_3 <= compare_01_bits_trigger_backendHit_3;
    end else begin
      s1_out_bits_trigger_backendHit_3 <= s0_out_bits_2_trigger_backendHit_3;
    end
    if (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) begin // @[Rob.scala 338:25]
      s1_out_bits_trigger_backendHit_4 <= compare_01_bits_trigger_backendHit_4;
    end else begin
      s1_out_bits_trigger_backendHit_4 <= s0_out_bits_2_trigger_backendHit_4;
    end
    if (~s0_out_valid_2 | compare_01_valid & _compare_bits_T_1) begin // @[Rob.scala 338:25]
      s1_out_bits_trigger_backendHit_5 <= compare_01_bits_trigger_backendHit_5;
    end else begin
      s1_out_bits_trigger_backendHit_5 <= s0_out_bits_2_trigger_backendHit_5;
    end
    s1_out_valid <= |_s1_out_valid_T; // @[Rob.scala 340:46]
    enq_valid <= |_enq_valid_T & ~io_redirect_valid & ~io_flush; // @[Rob.scala 342:73]
    if (in_enq_valid_0) begin // @[ParallelMux.scala 90:77]
      enq_bits_robIdx_flag <= io_enq_0_bits_robIdx_flag;
    end else begin
      enq_bits_robIdx_flag <= io_enq_1_bits_robIdx_flag;
    end
    if (in_enq_valid_0) begin // @[ParallelMux.scala 90:77]
      enq_bits_robIdx_value <= io_enq_0_bits_robIdx_value;
    end else begin
      enq_bits_robIdx_value <= io_enq_1_bits_robIdx_value;
    end
    if (in_enq_valid_0) begin // @[ParallelMux.scala 90:77]
      enq_bits_exceptionVec_1 <= io_enq_0_bits_exceptionVec_1;
    end else begin
      enq_bits_exceptionVec_1 <= io_enq_1_bits_exceptionVec_1;
    end
    if (in_enq_valid_0) begin // @[ParallelMux.scala 90:77]
      enq_bits_exceptionVec_2 <= io_enq_0_bits_exceptionVec_2;
    end else begin
      enq_bits_exceptionVec_2 <= io_enq_1_bits_exceptionVec_2;
    end
    if (in_enq_valid_0) begin // @[ParallelMux.scala 90:77]
      enq_bits_exceptionVec_12 <= io_enq_0_bits_exceptionVec_12;
    end else begin
      enq_bits_exceptionVec_12 <= io_enq_1_bits_exceptionVec_12;
    end
    if (in_enq_valid_0) begin // @[ParallelMux.scala 90:77]
      enq_bits_flushPipe <= io_enq_0_bits_flushPipe;
    end else begin
      enq_bits_flushPipe <= io_enq_1_bits_flushPipe;
    end
    if (in_enq_valid_0) begin // @[ParallelMux.scala 90:77]
      enq_bits_singleStep <= io_enq_0_bits_singleStep;
    end else begin
      enq_bits_singleStep <= io_enq_1_bits_singleStep;
    end
    if (in_enq_valid_0) begin // @[ParallelMux.scala 90:77]
      enq_bits_crossPageIPFFix <= io_enq_0_bits_crossPageIPFFix;
    end else begin
      enq_bits_crossPageIPFFix <= io_enq_1_bits_crossPageIPFFix;
    end
    if (in_enq_valid_0) begin // @[ParallelMux.scala 90:77]
      enq_bits_trigger_frontendHit_0 <= io_enq_0_bits_trigger_frontendHit_0;
    end else begin
      enq_bits_trigger_frontendHit_0 <= io_enq_1_bits_trigger_frontendHit_0;
    end
    if (in_enq_valid_0) begin // @[ParallelMux.scala 90:77]
      enq_bits_trigger_frontendHit_1 <= io_enq_0_bits_trigger_frontendHit_1;
    end else begin
      enq_bits_trigger_frontendHit_1 <= io_enq_1_bits_trigger_frontendHit_1;
    end
    if (in_enq_valid_0) begin // @[ParallelMux.scala 90:77]
      enq_bits_trigger_frontendHit_2 <= io_enq_0_bits_trigger_frontendHit_2;
    end else begin
      enq_bits_trigger_frontendHit_2 <= io_enq_1_bits_trigger_frontendHit_2;
    end
    if (in_enq_valid_0) begin // @[ParallelMux.scala 90:77]
      enq_bits_trigger_frontendHit_3 <= io_enq_0_bits_trigger_frontendHit_3;
    end else begin
      enq_bits_trigger_frontendHit_3 <= io_enq_1_bits_trigger_frontendHit_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Rob.scala 352:23]
      currentValid <= 1'h0; // @[Rob.scala 353:26 354:26 318:29]
    end else if (currentValid) begin
      if (current_flush) begin
        if (s1_flush) begin
          currentValid <= 1'h0;
        end else begin
          currentValid <= s1_out_valid;
        end
      end
    end else begin
      currentValid <= _GEN_135;
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
  currentValid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  current_robIdx_flag = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  current_robIdx_value = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  current_exceptionVec_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  current_exceptionVec_1 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  current_exceptionVec_2 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  current_exceptionVec_3 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  current_exceptionVec_4 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  current_exceptionVec_5 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  current_exceptionVec_6 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  current_exceptionVec_7 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  current_exceptionVec_8 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  current_exceptionVec_9 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  current_exceptionVec_10 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  current_exceptionVec_11 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  current_exceptionVec_12 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  current_exceptionVec_13 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  current_exceptionVec_14 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  current_exceptionVec_15 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  current_flushPipe = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  current_replayInst = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  current_singleStep = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  current_crossPageIPFFix = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  current_trigger_frontendHit_0 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  current_trigger_frontendHit_1 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  current_trigger_frontendHit_2 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  current_trigger_frontendHit_3 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  current_trigger_backendEn_0 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  current_trigger_backendEn_1 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  current_trigger_backendHit_0 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  current_trigger_backendHit_1 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  current_trigger_backendHit_2 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  current_trigger_backendHit_3 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  current_trigger_backendHit_4 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  current_trigger_backendHit_5 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  lastCycleFlush = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  s0_out_valid_0 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  s0_out_valid_1 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  s0_out_valid_2 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  s0_out_bits_0_robIdx_flag = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  s0_out_bits_0_robIdx_value = _RAND_40[4:0];
  _RAND_41 = {1{`RANDOM}};
  s0_out_bits_0_exceptionVec_2 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  s0_out_bits_0_exceptionVec_3 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  s0_out_bits_0_exceptionVec_8 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  s0_out_bits_0_exceptionVec_9 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  s0_out_bits_0_exceptionVec_11 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  s0_out_bits_0_flushPipe = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  s0_out_bits_1_robIdx_flag = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  s0_out_bits_1_robIdx_value = _RAND_48[4:0];
  _RAND_49 = {1{`RANDOM}};
  s0_out_bits_1_exceptionVec_4 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  s0_out_bits_1_exceptionVec_5 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  s0_out_bits_1_exceptionVec_13 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  s0_out_bits_1_replayInst = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  s0_out_bits_1_trigger_backendHit_0 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  s0_out_bits_1_trigger_backendHit_1 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  s0_out_bits_1_trigger_backendHit_2 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  s0_out_bits_1_trigger_backendHit_3 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  s0_out_bits_1_trigger_backendHit_4 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  s0_out_bits_1_trigger_backendHit_5 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  s0_out_bits_2_robIdx_flag = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  s0_out_bits_2_robIdx_value = _RAND_60[4:0];
  _RAND_61 = {1{`RANDOM}};
  s0_out_bits_2_exceptionVec_4 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  s0_out_bits_2_exceptionVec_5 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  s0_out_bits_2_exceptionVec_6 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  s0_out_bits_2_exceptionVec_7 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  s0_out_bits_2_exceptionVec_13 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  s0_out_bits_2_exceptionVec_15 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  s0_out_bits_2_trigger_backendHit_0 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  s0_out_bits_2_trigger_backendHit_1 = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  s0_out_bits_2_trigger_backendHit_2 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  s0_out_bits_2_trigger_backendHit_3 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  s0_out_bits_2_trigger_backendHit_4 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  s0_out_bits_2_trigger_backendHit_5 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  s1_out_bits_robIdx_flag = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  s1_out_bits_robIdx_value = _RAND_74[4:0];
  _RAND_75 = {1{`RANDOM}};
  s1_out_bits_exceptionVec_2 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  s1_out_bits_exceptionVec_3 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  s1_out_bits_exceptionVec_4 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  s1_out_bits_exceptionVec_5 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  s1_out_bits_exceptionVec_6 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  s1_out_bits_exceptionVec_7 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  s1_out_bits_exceptionVec_8 = _RAND_81[0:0];
  _RAND_82 = {1{`RANDOM}};
  s1_out_bits_exceptionVec_9 = _RAND_82[0:0];
  _RAND_83 = {1{`RANDOM}};
  s1_out_bits_exceptionVec_11 = _RAND_83[0:0];
  _RAND_84 = {1{`RANDOM}};
  s1_out_bits_exceptionVec_13 = _RAND_84[0:0];
  _RAND_85 = {1{`RANDOM}};
  s1_out_bits_exceptionVec_15 = _RAND_85[0:0];
  _RAND_86 = {1{`RANDOM}};
  s1_out_bits_flushPipe = _RAND_86[0:0];
  _RAND_87 = {1{`RANDOM}};
  s1_out_bits_replayInst = _RAND_87[0:0];
  _RAND_88 = {1{`RANDOM}};
  s1_out_bits_trigger_backendHit_0 = _RAND_88[0:0];
  _RAND_89 = {1{`RANDOM}};
  s1_out_bits_trigger_backendHit_1 = _RAND_89[0:0];
  _RAND_90 = {1{`RANDOM}};
  s1_out_bits_trigger_backendHit_2 = _RAND_90[0:0];
  _RAND_91 = {1{`RANDOM}};
  s1_out_bits_trigger_backendHit_3 = _RAND_91[0:0];
  _RAND_92 = {1{`RANDOM}};
  s1_out_bits_trigger_backendHit_4 = _RAND_92[0:0];
  _RAND_93 = {1{`RANDOM}};
  s1_out_bits_trigger_backendHit_5 = _RAND_93[0:0];
  _RAND_94 = {1{`RANDOM}};
  s1_out_valid = _RAND_94[0:0];
  _RAND_95 = {1{`RANDOM}};
  enq_valid = _RAND_95[0:0];
  _RAND_96 = {1{`RANDOM}};
  enq_bits_robIdx_flag = _RAND_96[0:0];
  _RAND_97 = {1{`RANDOM}};
  enq_bits_robIdx_value = _RAND_97[4:0];
  _RAND_98 = {1{`RANDOM}};
  enq_bits_exceptionVec_1 = _RAND_98[0:0];
  _RAND_99 = {1{`RANDOM}};
  enq_bits_exceptionVec_2 = _RAND_99[0:0];
  _RAND_100 = {1{`RANDOM}};
  enq_bits_exceptionVec_12 = _RAND_100[0:0];
  _RAND_101 = {1{`RANDOM}};
  enq_bits_flushPipe = _RAND_101[0:0];
  _RAND_102 = {1{`RANDOM}};
  enq_bits_singleStep = _RAND_102[0:0];
  _RAND_103 = {1{`RANDOM}};
  enq_bits_crossPageIPFFix = _RAND_103[0:0];
  _RAND_104 = {1{`RANDOM}};
  enq_bits_trigger_frontendHit_0 = _RAND_104[0:0];
  _RAND_105 = {1{`RANDOM}};
  enq_bits_trigger_frontendHit_1 = _RAND_105[0:0];
  _RAND_106 = {1{`RANDOM}};
  enq_bits_trigger_frontendHit_2 = _RAND_106[0:0];
  _RAND_107 = {1{`RANDOM}};
  enq_bits_trigger_frontendHit_3 = _RAND_107[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    currentValid = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

