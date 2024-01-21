module ReservationStationWrapper(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_fromDispatch_0_ready,
  input         io_fromDispatch_0_valid,
  input         io_fromDispatch_0_bits_cf_trigger_backendEn_0,
  input         io_fromDispatch_0_bits_cf_trigger_backendEn_1,
  input         io_fromDispatch_0_bits_cf_pd_isRVC,
  input  [1:0]  io_fromDispatch_0_bits_cf_pd_brType,
  input         io_fromDispatch_0_bits_cf_pd_isCall,
  input         io_fromDispatch_0_bits_cf_pd_isRet,
  input         io_fromDispatch_0_bits_cf_pred_taken,
  input         io_fromDispatch_0_bits_cf_storeSetHit,
  input         io_fromDispatch_0_bits_cf_loadWaitStrict,
  input  [4:0]  io_fromDispatch_0_bits_cf_ssid,
  input         io_fromDispatch_0_bits_cf_ftqPtr_flag,
  input  [2:0]  io_fromDispatch_0_bits_cf_ftqPtr_value,
  input  [2:0]  io_fromDispatch_0_bits_cf_ftqOffset,
  input  [1:0]  io_fromDispatch_0_bits_ctrl_srcType_0,
  input  [1:0]  io_fromDispatch_0_bits_ctrl_srcType_1,
  input  [3:0]  io_fromDispatch_0_bits_ctrl_fuType,
  input  [6:0]  io_fromDispatch_0_bits_ctrl_fuOpType,
  input         io_fromDispatch_0_bits_ctrl_rfWen,
  input         io_fromDispatch_0_bits_ctrl_fpWen,
  input  [3:0]  io_fromDispatch_0_bits_ctrl_selImm,
  input  [19:0] io_fromDispatch_0_bits_ctrl_imm,
  input         io_fromDispatch_0_bits_srcState_0,
  input         io_fromDispatch_0_bits_srcState_1,
  input  [5:0]  io_fromDispatch_0_bits_psrc_0,
  input  [5:0]  io_fromDispatch_0_bits_psrc_1,
  input  [5:0]  io_fromDispatch_0_bits_pdest,
  input         io_fromDispatch_0_bits_robIdx_flag,
  input  [4:0]  io_fromDispatch_0_bits_robIdx_value,
  input         io_fromDispatch_0_bits_lqIdx_flag,
  input  [3:0]  io_fromDispatch_0_bits_lqIdx_value,
  input         io_fromDispatch_0_bits_sqIdx_flag,
  input  [3:0]  io_fromDispatch_0_bits_sqIdx_value,
  output        io_fromDispatch_1_ready,
  input         io_fromDispatch_1_valid,
  input         io_fromDispatch_1_bits_cf_trigger_backendEn_0,
  input         io_fromDispatch_1_bits_cf_trigger_backendEn_1,
  input         io_fromDispatch_1_bits_cf_pd_isRVC,
  input  [1:0]  io_fromDispatch_1_bits_cf_pd_brType,
  input         io_fromDispatch_1_bits_cf_pd_isCall,
  input         io_fromDispatch_1_bits_cf_pd_isRet,
  input         io_fromDispatch_1_bits_cf_pred_taken,
  input         io_fromDispatch_1_bits_cf_storeSetHit,
  input         io_fromDispatch_1_bits_cf_loadWaitStrict,
  input  [4:0]  io_fromDispatch_1_bits_cf_ssid,
  input         io_fromDispatch_1_bits_cf_ftqPtr_flag,
  input  [2:0]  io_fromDispatch_1_bits_cf_ftqPtr_value,
  input  [2:0]  io_fromDispatch_1_bits_cf_ftqOffset,
  input  [1:0]  io_fromDispatch_1_bits_ctrl_srcType_0,
  input  [1:0]  io_fromDispatch_1_bits_ctrl_srcType_1,
  input  [3:0]  io_fromDispatch_1_bits_ctrl_fuType,
  input  [6:0]  io_fromDispatch_1_bits_ctrl_fuOpType,
  input         io_fromDispatch_1_bits_ctrl_rfWen,
  input         io_fromDispatch_1_bits_ctrl_fpWen,
  input  [3:0]  io_fromDispatch_1_bits_ctrl_selImm,
  input  [19:0] io_fromDispatch_1_bits_ctrl_imm,
  input         io_fromDispatch_1_bits_srcState_0,
  input         io_fromDispatch_1_bits_srcState_1,
  input  [5:0]  io_fromDispatch_1_bits_psrc_0,
  input  [5:0]  io_fromDispatch_1_bits_psrc_1,
  input  [5:0]  io_fromDispatch_1_bits_pdest,
  input         io_fromDispatch_1_bits_robIdx_flag,
  input  [4:0]  io_fromDispatch_1_bits_robIdx_value,
  input         io_fromDispatch_1_bits_lqIdx_flag,
  input  [3:0]  io_fromDispatch_1_bits_lqIdx_value,
  input         io_fromDispatch_1_bits_sqIdx_flag,
  input  [3:0]  io_fromDispatch_1_bits_sqIdx_value,
  input  [63:0] io_srcRegValue_0_0,
  input  [63:0] io_srcRegValue_0_1,
  input  [63:0] io_srcRegValue_1_0,
  input  [63:0] io_srcRegValue_1_1,
  output        io_deq_0_valid,
  output        io_deq_0_bits_uop_cf_pd_isRVC,
  output [1:0]  io_deq_0_bits_uop_cf_pd_brType,
  output        io_deq_0_bits_uop_cf_pd_isCall,
  output        io_deq_0_bits_uop_cf_pd_isRet,
  output        io_deq_0_bits_uop_cf_pred_taken,
  output        io_deq_0_bits_uop_cf_ftqPtr_flag,
  output [2:0]  io_deq_0_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_deq_0_bits_uop_cf_ftqOffset,
  output [3:0]  io_deq_0_bits_uop_ctrl_fuType,
  output [6:0]  io_deq_0_bits_uop_ctrl_fuOpType,
  output [19:0] io_deq_0_bits_uop_ctrl_imm,
  output        io_deq_0_bits_uop_robIdx_flag,
  output [4:0]  io_deq_0_bits_uop_robIdx_value,
  output [63:0] io_deq_0_bits_src_0,
  output [63:0] io_deq_0_bits_src_1,
  output        io_deq_1_valid,
  output        io_deq_1_bits_uop_cf_pd_isRVC,
  output [1:0]  io_deq_1_bits_uop_cf_pd_brType,
  output        io_deq_1_bits_uop_cf_pd_isCall,
  output        io_deq_1_bits_uop_cf_pd_isRet,
  output        io_deq_1_bits_uop_cf_pred_taken,
  output        io_deq_1_bits_uop_cf_ftqPtr_flag,
  output [2:0]  io_deq_1_bits_uop_cf_ftqPtr_value,
  output [2:0]  io_deq_1_bits_uop_cf_ftqOffset,
  output [3:0]  io_deq_1_bits_uop_ctrl_fuType,
  output [6:0]  io_deq_1_bits_uop_ctrl_fuOpType,
  output [19:0] io_deq_1_bits_uop_ctrl_imm,
  output        io_deq_1_bits_uop_robIdx_flag,
  output [4:0]  io_deq_1_bits_uop_robIdx_value,
  output [63:0] io_deq_1_bits_src_0,
  output [63:0] io_deq_1_bits_src_1,
  input         io_fastUopsIn_0_valid,
  input         io_fastUopsIn_0_bits_ctrl_rfWen,
  input  [5:0]  io_fastUopsIn_0_bits_pdest,
  input         io_fastUopsIn_1_valid,
  input         io_fastUopsIn_1_bits_ctrl_rfWen,
  input  [5:0]  io_fastUopsIn_1_bits_pdest,
  input         io_fastUopsIn_2_valid,
  input         io_fastUopsIn_2_bits_ctrl_rfWen,
  input  [5:0]  io_fastUopsIn_2_bits_pdest,
  input         io_fastUopsIn_3_valid,
  input         io_fastUopsIn_3_bits_ctrl_rfWen,
  input  [5:0]  io_fastUopsIn_3_bits_pdest,
  input         io_fastUopsIn_4_valid,
  input         io_fastUopsIn_4_bits_ctrl_rfWen,
  input  [5:0]  io_fastUopsIn_4_bits_pdest,
  input  [63:0] io_fastDatas_0,
  input  [63:0] io_fastDatas_1,
  input  [63:0] io_fastDatas_2,
  input  [63:0] io_fastDatas_3,
  input  [63:0] io_fastDatas_4,
  input         io_slowPorts_0_valid,
  input         io_slowPorts_0_bits_uop_ctrl_rfWen,
  input  [5:0]  io_slowPorts_0_bits_uop_pdest,
  input  [63:0] io_slowPorts_0_bits_data,
  input         io_slowPorts_1_valid,
  input         io_slowPorts_1_bits_uop_ctrl_rfWen,
  input  [5:0]  io_slowPorts_1_bits_uop_pdest,
  input  [63:0] io_slowPorts_1_bits_data,
  input         io_slowPorts_2_valid,
  input         io_slowPorts_2_bits_uop_ctrl_rfWen,
  input  [5:0]  io_slowPorts_2_bits_uop_pdest,
  input  [63:0] io_slowPorts_2_bits_data,
  input         io_slowPorts_3_valid,
  input         io_slowPorts_3_bits_uop_ctrl_rfWen,
  input  [5:0]  io_slowPorts_3_bits_uop_pdest,
  input  [63:0] io_slowPorts_3_bits_data,
  input         io_slowPorts_4_valid,
  input         io_slowPorts_4_bits_uop_ctrl_rfWen,
  input  [5:0]  io_slowPorts_4_bits_uop_pdest,
  input  [63:0] io_slowPorts_4_bits_data,
  output        io_fastWakeup_0_valid,
  output        io_fastWakeup_0_bits_ctrl_rfWen,
  output        io_fastWakeup_0_bits_ctrl_fpWen,
  output [5:0]  io_fastWakeup_0_bits_pdest,
  output        io_fastWakeup_0_bits_robIdx_flag,
  output [4:0]  io_fastWakeup_0_bits_robIdx_value,
  output        io_fastWakeup_0_bits_lqIdx_flag,
  output [3:0]  io_fastWakeup_0_bits_lqIdx_value,
  output        io_fastWakeup_1_valid,
  output        io_fastWakeup_1_bits_ctrl_rfWen,
  output        io_fastWakeup_1_bits_ctrl_fpWen,
  output [5:0]  io_fastWakeup_1_bits_pdest,
  output        io_fastWakeup_1_bits_robIdx_flag,
  output [4:0]  io_fastWakeup_1_bits_robIdx_value,
  output        io_fastWakeup_1_bits_lqIdx_flag,
  output [3:0]  io_fastWakeup_1_bits_lqIdx_value,
  output [5:0]  io_perf_0_value
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  aluRS_0_clock; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_reset; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_redirect_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_redirect_bits_robIdx_flag; // @[ReservationStation.scala 154:13]
  wire [4:0] aluRS_0_io_redirect_bits_robIdx_value; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_redirect_bits_level; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_ready; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_cf_pd_isRVC; // @[ReservationStation.scala 154:13]
  wire [1:0] aluRS_0_io_fromDispatch_0_bits_cf_pd_brType; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_cf_pd_isCall; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_cf_pd_isRet; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_cf_pred_taken; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_cf_storeSetHit; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_cf_loadWaitStrict; // @[ReservationStation.scala 154:13]
  wire [4:0] aluRS_0_io_fromDispatch_0_bits_cf_ssid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 154:13]
  wire [2:0] aluRS_0_io_fromDispatch_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 154:13]
  wire [2:0] aluRS_0_io_fromDispatch_0_bits_cf_ftqOffset; // @[ReservationStation.scala 154:13]
  wire [1:0] aluRS_0_io_fromDispatch_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 154:13]
  wire [1:0] aluRS_0_io_fromDispatch_0_bits_ctrl_srcType_1; // @[ReservationStation.scala 154:13]
  wire [3:0] aluRS_0_io_fromDispatch_0_bits_ctrl_fuType; // @[ReservationStation.scala 154:13]
  wire [6:0] aluRS_0_io_fromDispatch_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_ctrl_fpWen; // @[ReservationStation.scala 154:13]
  wire [3:0] aluRS_0_io_fromDispatch_0_bits_ctrl_selImm; // @[ReservationStation.scala 154:13]
  wire [19:0] aluRS_0_io_fromDispatch_0_bits_ctrl_imm; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_srcState_0; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_srcState_1; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_fromDispatch_0_bits_psrc_0; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_fromDispatch_0_bits_psrc_1; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_fromDispatch_0_bits_pdest; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_robIdx_flag; // @[ReservationStation.scala 154:13]
  wire [4:0] aluRS_0_io_fromDispatch_0_bits_robIdx_value; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_lqIdx_flag; // @[ReservationStation.scala 154:13]
  wire [3:0] aluRS_0_io_fromDispatch_0_bits_lqIdx_value; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_0_bits_sqIdx_flag; // @[ReservationStation.scala 154:13]
  wire [3:0] aluRS_0_io_fromDispatch_0_bits_sqIdx_value; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_ready; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_cf_pd_isRVC; // @[ReservationStation.scala 154:13]
  wire [1:0] aluRS_0_io_fromDispatch_1_bits_cf_pd_brType; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_cf_pd_isCall; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_cf_pd_isRet; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_cf_pred_taken; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_cf_storeSetHit; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_cf_loadWaitStrict; // @[ReservationStation.scala 154:13]
  wire [4:0] aluRS_0_io_fromDispatch_1_bits_cf_ssid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 154:13]
  wire [2:0] aluRS_0_io_fromDispatch_1_bits_cf_ftqPtr_value; // @[ReservationStation.scala 154:13]
  wire [2:0] aluRS_0_io_fromDispatch_1_bits_cf_ftqOffset; // @[ReservationStation.scala 154:13]
  wire [1:0] aluRS_0_io_fromDispatch_1_bits_ctrl_srcType_0; // @[ReservationStation.scala 154:13]
  wire [1:0] aluRS_0_io_fromDispatch_1_bits_ctrl_srcType_1; // @[ReservationStation.scala 154:13]
  wire [3:0] aluRS_0_io_fromDispatch_1_bits_ctrl_fuType; // @[ReservationStation.scala 154:13]
  wire [6:0] aluRS_0_io_fromDispatch_1_bits_ctrl_fuOpType; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_ctrl_fpWen; // @[ReservationStation.scala 154:13]
  wire [3:0] aluRS_0_io_fromDispatch_1_bits_ctrl_selImm; // @[ReservationStation.scala 154:13]
  wire [19:0] aluRS_0_io_fromDispatch_1_bits_ctrl_imm; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_srcState_0; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_srcState_1; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_fromDispatch_1_bits_psrc_0; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_fromDispatch_1_bits_psrc_1; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_fromDispatch_1_bits_pdest; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_robIdx_flag; // @[ReservationStation.scala 154:13]
  wire [4:0] aluRS_0_io_fromDispatch_1_bits_robIdx_value; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_lqIdx_flag; // @[ReservationStation.scala 154:13]
  wire [3:0] aluRS_0_io_fromDispatch_1_bits_lqIdx_value; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fromDispatch_1_bits_sqIdx_flag; // @[ReservationStation.scala 154:13]
  wire [3:0] aluRS_0_io_fromDispatch_1_bits_sqIdx_value; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_srcRegValue_0_0; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_srcRegValue_0_1; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_srcRegValue_1_0; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_srcRegValue_1_1; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_deq_0_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_deq_0_bits_uop_cf_pd_isRVC; // @[ReservationStation.scala 154:13]
  wire [1:0] aluRS_0_io_deq_0_bits_uop_cf_pd_brType; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_deq_0_bits_uop_cf_pd_isCall; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_deq_0_bits_uop_cf_pd_isRet; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_deq_0_bits_uop_cf_pred_taken; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_deq_0_bits_uop_cf_ftqPtr_flag; // @[ReservationStation.scala 154:13]
  wire [2:0] aluRS_0_io_deq_0_bits_uop_cf_ftqPtr_value; // @[ReservationStation.scala 154:13]
  wire [2:0] aluRS_0_io_deq_0_bits_uop_cf_ftqOffset; // @[ReservationStation.scala 154:13]
  wire [3:0] aluRS_0_io_deq_0_bits_uop_ctrl_fuType; // @[ReservationStation.scala 154:13]
  wire [6:0] aluRS_0_io_deq_0_bits_uop_ctrl_fuOpType; // @[ReservationStation.scala 154:13]
  wire [19:0] aluRS_0_io_deq_0_bits_uop_ctrl_imm; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_deq_0_bits_uop_robIdx_flag; // @[ReservationStation.scala 154:13]
  wire [4:0] aluRS_0_io_deq_0_bits_uop_robIdx_value; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_deq_0_bits_src_0; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_deq_0_bits_src_1; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_deq_1_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_deq_1_bits_uop_cf_pd_isRVC; // @[ReservationStation.scala 154:13]
  wire [1:0] aluRS_0_io_deq_1_bits_uop_cf_pd_brType; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_deq_1_bits_uop_cf_pd_isCall; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_deq_1_bits_uop_cf_pd_isRet; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_deq_1_bits_uop_cf_pred_taken; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_deq_1_bits_uop_cf_ftqPtr_flag; // @[ReservationStation.scala 154:13]
  wire [2:0] aluRS_0_io_deq_1_bits_uop_cf_ftqPtr_value; // @[ReservationStation.scala 154:13]
  wire [2:0] aluRS_0_io_deq_1_bits_uop_cf_ftqOffset; // @[ReservationStation.scala 154:13]
  wire [3:0] aluRS_0_io_deq_1_bits_uop_ctrl_fuType; // @[ReservationStation.scala 154:13]
  wire [6:0] aluRS_0_io_deq_1_bits_uop_ctrl_fuOpType; // @[ReservationStation.scala 154:13]
  wire [19:0] aluRS_0_io_deq_1_bits_uop_ctrl_imm; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_deq_1_bits_uop_robIdx_flag; // @[ReservationStation.scala 154:13]
  wire [4:0] aluRS_0_io_deq_1_bits_uop_robIdx_value; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_deq_1_bits_src_0; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_deq_1_bits_src_1; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastUopsIn_0_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastUopsIn_0_bits_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_fastUopsIn_0_bits_pdest; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastUopsIn_1_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastUopsIn_1_bits_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_fastUopsIn_1_bits_pdest; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastUopsIn_2_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastUopsIn_2_bits_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_fastUopsIn_2_bits_pdest; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastUopsIn_3_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastUopsIn_3_bits_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_fastUopsIn_3_bits_pdest; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastUopsIn_4_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastUopsIn_4_bits_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_fastUopsIn_4_bits_pdest; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_fastDatas_0; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_fastDatas_1; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_fastDatas_2; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_fastDatas_3; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_fastDatas_4; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_slowPorts_0_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_slowPorts_0_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_slowPorts_0_bits_uop_pdest; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_slowPorts_0_bits_data; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_slowPorts_1_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_slowPorts_1_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_slowPorts_1_bits_uop_pdest; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_slowPorts_1_bits_data; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_slowPorts_2_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_slowPorts_2_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_slowPorts_2_bits_uop_pdest; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_slowPorts_2_bits_data; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_slowPorts_3_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_slowPorts_3_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_slowPorts_3_bits_uop_pdest; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_slowPorts_3_bits_data; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_slowPorts_4_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_slowPorts_4_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_slowPorts_4_bits_uop_pdest; // @[ReservationStation.scala 154:13]
  wire [63:0] aluRS_0_io_slowPorts_4_bits_data; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastWakeup_0_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastWakeup_0_bits_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastWakeup_0_bits_ctrl_fpWen; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_fastWakeup_0_bits_pdest; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastWakeup_0_bits_robIdx_flag; // @[ReservationStation.scala 154:13]
  wire [4:0] aluRS_0_io_fastWakeup_0_bits_robIdx_value; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastWakeup_0_bits_lqIdx_flag; // @[ReservationStation.scala 154:13]
  wire [3:0] aluRS_0_io_fastWakeup_0_bits_lqIdx_value; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastWakeup_1_valid; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastWakeup_1_bits_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastWakeup_1_bits_ctrl_fpWen; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_fastWakeup_1_bits_pdest; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastWakeup_1_bits_robIdx_flag; // @[ReservationStation.scala 154:13]
  wire [4:0] aluRS_0_io_fastWakeup_1_bits_robIdx_value; // @[ReservationStation.scala 154:13]
  wire  aluRS_0_io_fastWakeup_1_bits_lqIdx_flag; // @[ReservationStation.scala 154:13]
  wire [3:0] aluRS_0_io_fastWakeup_1_bits_lqIdx_value; // @[ReservationStation.scala 154:13]
  wire [5:0] aluRS_0_io_perf_0_value; // @[ReservationStation.scala 154:13]
  reg  aluRS_0_io_redirect_next_valid_REG; // @[BitUtils.scala 28:28]
  reg  aluRS_0_io_redirect_next_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] aluRS_0_io_redirect_next_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg  aluRS_0_io_redirect_next_bits_rlevel; // @[Reg.scala 16:16]
  reg [5:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  ReservationStation aluRS_0 ( // @[ReservationStation.scala 154:13]
    .clock(aluRS_0_clock),
    .reset(aluRS_0_reset),
    .io_redirect_valid(aluRS_0_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(aluRS_0_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(aluRS_0_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(aluRS_0_io_redirect_bits_level),
    .io_fromDispatch_0_ready(aluRS_0_io_fromDispatch_0_ready),
    .io_fromDispatch_0_valid(aluRS_0_io_fromDispatch_0_valid),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_0(aluRS_0_io_fromDispatch_0_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_0_bits_cf_trigger_backendEn_1(aluRS_0_io_fromDispatch_0_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_0_bits_cf_pd_isRVC(aluRS_0_io_fromDispatch_0_bits_cf_pd_isRVC),
    .io_fromDispatch_0_bits_cf_pd_brType(aluRS_0_io_fromDispatch_0_bits_cf_pd_brType),
    .io_fromDispatch_0_bits_cf_pd_isCall(aluRS_0_io_fromDispatch_0_bits_cf_pd_isCall),
    .io_fromDispatch_0_bits_cf_pd_isRet(aluRS_0_io_fromDispatch_0_bits_cf_pd_isRet),
    .io_fromDispatch_0_bits_cf_pred_taken(aluRS_0_io_fromDispatch_0_bits_cf_pred_taken),
    .io_fromDispatch_0_bits_cf_storeSetHit(aluRS_0_io_fromDispatch_0_bits_cf_storeSetHit),
    .io_fromDispatch_0_bits_cf_loadWaitStrict(aluRS_0_io_fromDispatch_0_bits_cf_loadWaitStrict),
    .io_fromDispatch_0_bits_cf_ssid(aluRS_0_io_fromDispatch_0_bits_cf_ssid),
    .io_fromDispatch_0_bits_cf_ftqPtr_flag(aluRS_0_io_fromDispatch_0_bits_cf_ftqPtr_flag),
    .io_fromDispatch_0_bits_cf_ftqPtr_value(aluRS_0_io_fromDispatch_0_bits_cf_ftqPtr_value),
    .io_fromDispatch_0_bits_cf_ftqOffset(aluRS_0_io_fromDispatch_0_bits_cf_ftqOffset),
    .io_fromDispatch_0_bits_ctrl_srcType_0(aluRS_0_io_fromDispatch_0_bits_ctrl_srcType_0),
    .io_fromDispatch_0_bits_ctrl_srcType_1(aluRS_0_io_fromDispatch_0_bits_ctrl_srcType_1),
    .io_fromDispatch_0_bits_ctrl_fuType(aluRS_0_io_fromDispatch_0_bits_ctrl_fuType),
    .io_fromDispatch_0_bits_ctrl_fuOpType(aluRS_0_io_fromDispatch_0_bits_ctrl_fuOpType),
    .io_fromDispatch_0_bits_ctrl_rfWen(aluRS_0_io_fromDispatch_0_bits_ctrl_rfWen),
    .io_fromDispatch_0_bits_ctrl_fpWen(aluRS_0_io_fromDispatch_0_bits_ctrl_fpWen),
    .io_fromDispatch_0_bits_ctrl_selImm(aluRS_0_io_fromDispatch_0_bits_ctrl_selImm),
    .io_fromDispatch_0_bits_ctrl_imm(aluRS_0_io_fromDispatch_0_bits_ctrl_imm),
    .io_fromDispatch_0_bits_srcState_0(aluRS_0_io_fromDispatch_0_bits_srcState_0),
    .io_fromDispatch_0_bits_srcState_1(aluRS_0_io_fromDispatch_0_bits_srcState_1),
    .io_fromDispatch_0_bits_psrc_0(aluRS_0_io_fromDispatch_0_bits_psrc_0),
    .io_fromDispatch_0_bits_psrc_1(aluRS_0_io_fromDispatch_0_bits_psrc_1),
    .io_fromDispatch_0_bits_pdest(aluRS_0_io_fromDispatch_0_bits_pdest),
    .io_fromDispatch_0_bits_robIdx_flag(aluRS_0_io_fromDispatch_0_bits_robIdx_flag),
    .io_fromDispatch_0_bits_robIdx_value(aluRS_0_io_fromDispatch_0_bits_robIdx_value),
    .io_fromDispatch_0_bits_lqIdx_flag(aluRS_0_io_fromDispatch_0_bits_lqIdx_flag),
    .io_fromDispatch_0_bits_lqIdx_value(aluRS_0_io_fromDispatch_0_bits_lqIdx_value),
    .io_fromDispatch_0_bits_sqIdx_flag(aluRS_0_io_fromDispatch_0_bits_sqIdx_flag),
    .io_fromDispatch_0_bits_sqIdx_value(aluRS_0_io_fromDispatch_0_bits_sqIdx_value),
    .io_fromDispatch_1_ready(aluRS_0_io_fromDispatch_1_ready),
    .io_fromDispatch_1_valid(aluRS_0_io_fromDispatch_1_valid),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_0(aluRS_0_io_fromDispatch_1_bits_cf_trigger_backendEn_0),
    .io_fromDispatch_1_bits_cf_trigger_backendEn_1(aluRS_0_io_fromDispatch_1_bits_cf_trigger_backendEn_1),
    .io_fromDispatch_1_bits_cf_pd_isRVC(aluRS_0_io_fromDispatch_1_bits_cf_pd_isRVC),
    .io_fromDispatch_1_bits_cf_pd_brType(aluRS_0_io_fromDispatch_1_bits_cf_pd_brType),
    .io_fromDispatch_1_bits_cf_pd_isCall(aluRS_0_io_fromDispatch_1_bits_cf_pd_isCall),
    .io_fromDispatch_1_bits_cf_pd_isRet(aluRS_0_io_fromDispatch_1_bits_cf_pd_isRet),
    .io_fromDispatch_1_bits_cf_pred_taken(aluRS_0_io_fromDispatch_1_bits_cf_pred_taken),
    .io_fromDispatch_1_bits_cf_storeSetHit(aluRS_0_io_fromDispatch_1_bits_cf_storeSetHit),
    .io_fromDispatch_1_bits_cf_loadWaitStrict(aluRS_0_io_fromDispatch_1_bits_cf_loadWaitStrict),
    .io_fromDispatch_1_bits_cf_ssid(aluRS_0_io_fromDispatch_1_bits_cf_ssid),
    .io_fromDispatch_1_bits_cf_ftqPtr_flag(aluRS_0_io_fromDispatch_1_bits_cf_ftqPtr_flag),
    .io_fromDispatch_1_bits_cf_ftqPtr_value(aluRS_0_io_fromDispatch_1_bits_cf_ftqPtr_value),
    .io_fromDispatch_1_bits_cf_ftqOffset(aluRS_0_io_fromDispatch_1_bits_cf_ftqOffset),
    .io_fromDispatch_1_bits_ctrl_srcType_0(aluRS_0_io_fromDispatch_1_bits_ctrl_srcType_0),
    .io_fromDispatch_1_bits_ctrl_srcType_1(aluRS_0_io_fromDispatch_1_bits_ctrl_srcType_1),
    .io_fromDispatch_1_bits_ctrl_fuType(aluRS_0_io_fromDispatch_1_bits_ctrl_fuType),
    .io_fromDispatch_1_bits_ctrl_fuOpType(aluRS_0_io_fromDispatch_1_bits_ctrl_fuOpType),
    .io_fromDispatch_1_bits_ctrl_rfWen(aluRS_0_io_fromDispatch_1_bits_ctrl_rfWen),
    .io_fromDispatch_1_bits_ctrl_fpWen(aluRS_0_io_fromDispatch_1_bits_ctrl_fpWen),
    .io_fromDispatch_1_bits_ctrl_selImm(aluRS_0_io_fromDispatch_1_bits_ctrl_selImm),
    .io_fromDispatch_1_bits_ctrl_imm(aluRS_0_io_fromDispatch_1_bits_ctrl_imm),
    .io_fromDispatch_1_bits_srcState_0(aluRS_0_io_fromDispatch_1_bits_srcState_0),
    .io_fromDispatch_1_bits_srcState_1(aluRS_0_io_fromDispatch_1_bits_srcState_1),
    .io_fromDispatch_1_bits_psrc_0(aluRS_0_io_fromDispatch_1_bits_psrc_0),
    .io_fromDispatch_1_bits_psrc_1(aluRS_0_io_fromDispatch_1_bits_psrc_1),
    .io_fromDispatch_1_bits_pdest(aluRS_0_io_fromDispatch_1_bits_pdest),
    .io_fromDispatch_1_bits_robIdx_flag(aluRS_0_io_fromDispatch_1_bits_robIdx_flag),
    .io_fromDispatch_1_bits_robIdx_value(aluRS_0_io_fromDispatch_1_bits_robIdx_value),
    .io_fromDispatch_1_bits_lqIdx_flag(aluRS_0_io_fromDispatch_1_bits_lqIdx_flag),
    .io_fromDispatch_1_bits_lqIdx_value(aluRS_0_io_fromDispatch_1_bits_lqIdx_value),
    .io_fromDispatch_1_bits_sqIdx_flag(aluRS_0_io_fromDispatch_1_bits_sqIdx_flag),
    .io_fromDispatch_1_bits_sqIdx_value(aluRS_0_io_fromDispatch_1_bits_sqIdx_value),
    .io_srcRegValue_0_0(aluRS_0_io_srcRegValue_0_0),
    .io_srcRegValue_0_1(aluRS_0_io_srcRegValue_0_1),
    .io_srcRegValue_1_0(aluRS_0_io_srcRegValue_1_0),
    .io_srcRegValue_1_1(aluRS_0_io_srcRegValue_1_1),
    .io_deq_0_valid(aluRS_0_io_deq_0_valid),
    .io_deq_0_bits_uop_cf_pd_isRVC(aluRS_0_io_deq_0_bits_uop_cf_pd_isRVC),
    .io_deq_0_bits_uop_cf_pd_brType(aluRS_0_io_deq_0_bits_uop_cf_pd_brType),
    .io_deq_0_bits_uop_cf_pd_isCall(aluRS_0_io_deq_0_bits_uop_cf_pd_isCall),
    .io_deq_0_bits_uop_cf_pd_isRet(aluRS_0_io_deq_0_bits_uop_cf_pd_isRet),
    .io_deq_0_bits_uop_cf_pred_taken(aluRS_0_io_deq_0_bits_uop_cf_pred_taken),
    .io_deq_0_bits_uop_cf_ftqPtr_flag(aluRS_0_io_deq_0_bits_uop_cf_ftqPtr_flag),
    .io_deq_0_bits_uop_cf_ftqPtr_value(aluRS_0_io_deq_0_bits_uop_cf_ftqPtr_value),
    .io_deq_0_bits_uop_cf_ftqOffset(aluRS_0_io_deq_0_bits_uop_cf_ftqOffset),
    .io_deq_0_bits_uop_ctrl_fuType(aluRS_0_io_deq_0_bits_uop_ctrl_fuType),
    .io_deq_0_bits_uop_ctrl_fuOpType(aluRS_0_io_deq_0_bits_uop_ctrl_fuOpType),
    .io_deq_0_bits_uop_ctrl_imm(aluRS_0_io_deq_0_bits_uop_ctrl_imm),
    .io_deq_0_bits_uop_robIdx_flag(aluRS_0_io_deq_0_bits_uop_robIdx_flag),
    .io_deq_0_bits_uop_robIdx_value(aluRS_0_io_deq_0_bits_uop_robIdx_value),
    .io_deq_0_bits_src_0(aluRS_0_io_deq_0_bits_src_0),
    .io_deq_0_bits_src_1(aluRS_0_io_deq_0_bits_src_1),
    .io_deq_1_valid(aluRS_0_io_deq_1_valid),
    .io_deq_1_bits_uop_cf_pd_isRVC(aluRS_0_io_deq_1_bits_uop_cf_pd_isRVC),
    .io_deq_1_bits_uop_cf_pd_brType(aluRS_0_io_deq_1_bits_uop_cf_pd_brType),
    .io_deq_1_bits_uop_cf_pd_isCall(aluRS_0_io_deq_1_bits_uop_cf_pd_isCall),
    .io_deq_1_bits_uop_cf_pd_isRet(aluRS_0_io_deq_1_bits_uop_cf_pd_isRet),
    .io_deq_1_bits_uop_cf_pred_taken(aluRS_0_io_deq_1_bits_uop_cf_pred_taken),
    .io_deq_1_bits_uop_cf_ftqPtr_flag(aluRS_0_io_deq_1_bits_uop_cf_ftqPtr_flag),
    .io_deq_1_bits_uop_cf_ftqPtr_value(aluRS_0_io_deq_1_bits_uop_cf_ftqPtr_value),
    .io_deq_1_bits_uop_cf_ftqOffset(aluRS_0_io_deq_1_bits_uop_cf_ftqOffset),
    .io_deq_1_bits_uop_ctrl_fuType(aluRS_0_io_deq_1_bits_uop_ctrl_fuType),
    .io_deq_1_bits_uop_ctrl_fuOpType(aluRS_0_io_deq_1_bits_uop_ctrl_fuOpType),
    .io_deq_1_bits_uop_ctrl_imm(aluRS_0_io_deq_1_bits_uop_ctrl_imm),
    .io_deq_1_bits_uop_robIdx_flag(aluRS_0_io_deq_1_bits_uop_robIdx_flag),
    .io_deq_1_bits_uop_robIdx_value(aluRS_0_io_deq_1_bits_uop_robIdx_value),
    .io_deq_1_bits_src_0(aluRS_0_io_deq_1_bits_src_0),
    .io_deq_1_bits_src_1(aluRS_0_io_deq_1_bits_src_1),
    .io_fastUopsIn_0_valid(aluRS_0_io_fastUopsIn_0_valid),
    .io_fastUopsIn_0_bits_ctrl_rfWen(aluRS_0_io_fastUopsIn_0_bits_ctrl_rfWen),
    .io_fastUopsIn_0_bits_pdest(aluRS_0_io_fastUopsIn_0_bits_pdest),
    .io_fastUopsIn_1_valid(aluRS_0_io_fastUopsIn_1_valid),
    .io_fastUopsIn_1_bits_ctrl_rfWen(aluRS_0_io_fastUopsIn_1_bits_ctrl_rfWen),
    .io_fastUopsIn_1_bits_pdest(aluRS_0_io_fastUopsIn_1_bits_pdest),
    .io_fastUopsIn_2_valid(aluRS_0_io_fastUopsIn_2_valid),
    .io_fastUopsIn_2_bits_ctrl_rfWen(aluRS_0_io_fastUopsIn_2_bits_ctrl_rfWen),
    .io_fastUopsIn_2_bits_pdest(aluRS_0_io_fastUopsIn_2_bits_pdest),
    .io_fastUopsIn_3_valid(aluRS_0_io_fastUopsIn_3_valid),
    .io_fastUopsIn_3_bits_ctrl_rfWen(aluRS_0_io_fastUopsIn_3_bits_ctrl_rfWen),
    .io_fastUopsIn_3_bits_pdest(aluRS_0_io_fastUopsIn_3_bits_pdest),
    .io_fastUopsIn_4_valid(aluRS_0_io_fastUopsIn_4_valid),
    .io_fastUopsIn_4_bits_ctrl_rfWen(aluRS_0_io_fastUopsIn_4_bits_ctrl_rfWen),
    .io_fastUopsIn_4_bits_pdest(aluRS_0_io_fastUopsIn_4_bits_pdest),
    .io_fastDatas_0(aluRS_0_io_fastDatas_0),
    .io_fastDatas_1(aluRS_0_io_fastDatas_1),
    .io_fastDatas_2(aluRS_0_io_fastDatas_2),
    .io_fastDatas_3(aluRS_0_io_fastDatas_3),
    .io_fastDatas_4(aluRS_0_io_fastDatas_4),
    .io_slowPorts_0_valid(aluRS_0_io_slowPorts_0_valid),
    .io_slowPorts_0_bits_uop_ctrl_rfWen(aluRS_0_io_slowPorts_0_bits_uop_ctrl_rfWen),
    .io_slowPorts_0_bits_uop_pdest(aluRS_0_io_slowPorts_0_bits_uop_pdest),
    .io_slowPorts_0_bits_data(aluRS_0_io_slowPorts_0_bits_data),
    .io_slowPorts_1_valid(aluRS_0_io_slowPorts_1_valid),
    .io_slowPorts_1_bits_uop_ctrl_rfWen(aluRS_0_io_slowPorts_1_bits_uop_ctrl_rfWen),
    .io_slowPorts_1_bits_uop_pdest(aluRS_0_io_slowPorts_1_bits_uop_pdest),
    .io_slowPorts_1_bits_data(aluRS_0_io_slowPorts_1_bits_data),
    .io_slowPorts_2_valid(aluRS_0_io_slowPorts_2_valid),
    .io_slowPorts_2_bits_uop_ctrl_rfWen(aluRS_0_io_slowPorts_2_bits_uop_ctrl_rfWen),
    .io_slowPorts_2_bits_uop_pdest(aluRS_0_io_slowPorts_2_bits_uop_pdest),
    .io_slowPorts_2_bits_data(aluRS_0_io_slowPorts_2_bits_data),
    .io_slowPorts_3_valid(aluRS_0_io_slowPorts_3_valid),
    .io_slowPorts_3_bits_uop_ctrl_rfWen(aluRS_0_io_slowPorts_3_bits_uop_ctrl_rfWen),
    .io_slowPorts_3_bits_uop_pdest(aluRS_0_io_slowPorts_3_bits_uop_pdest),
    .io_slowPorts_3_bits_data(aluRS_0_io_slowPorts_3_bits_data),
    .io_slowPorts_4_valid(aluRS_0_io_slowPorts_4_valid),
    .io_slowPorts_4_bits_uop_ctrl_rfWen(aluRS_0_io_slowPorts_4_bits_uop_ctrl_rfWen),
    .io_slowPorts_4_bits_uop_pdest(aluRS_0_io_slowPorts_4_bits_uop_pdest),
    .io_slowPorts_4_bits_data(aluRS_0_io_slowPorts_4_bits_data),
    .io_fastWakeup_0_valid(aluRS_0_io_fastWakeup_0_valid),
    .io_fastWakeup_0_bits_ctrl_rfWen(aluRS_0_io_fastWakeup_0_bits_ctrl_rfWen),
    .io_fastWakeup_0_bits_ctrl_fpWen(aluRS_0_io_fastWakeup_0_bits_ctrl_fpWen),
    .io_fastWakeup_0_bits_pdest(aluRS_0_io_fastWakeup_0_bits_pdest),
    .io_fastWakeup_0_bits_robIdx_flag(aluRS_0_io_fastWakeup_0_bits_robIdx_flag),
    .io_fastWakeup_0_bits_robIdx_value(aluRS_0_io_fastWakeup_0_bits_robIdx_value),
    .io_fastWakeup_0_bits_lqIdx_flag(aluRS_0_io_fastWakeup_0_bits_lqIdx_flag),
    .io_fastWakeup_0_bits_lqIdx_value(aluRS_0_io_fastWakeup_0_bits_lqIdx_value),
    .io_fastWakeup_1_valid(aluRS_0_io_fastWakeup_1_valid),
    .io_fastWakeup_1_bits_ctrl_rfWen(aluRS_0_io_fastWakeup_1_bits_ctrl_rfWen),
    .io_fastWakeup_1_bits_ctrl_fpWen(aluRS_0_io_fastWakeup_1_bits_ctrl_fpWen),
    .io_fastWakeup_1_bits_pdest(aluRS_0_io_fastWakeup_1_bits_pdest),
    .io_fastWakeup_1_bits_robIdx_flag(aluRS_0_io_fastWakeup_1_bits_robIdx_flag),
    .io_fastWakeup_1_bits_robIdx_value(aluRS_0_io_fastWakeup_1_bits_robIdx_value),
    .io_fastWakeup_1_bits_lqIdx_flag(aluRS_0_io_fastWakeup_1_bits_lqIdx_flag),
    .io_fastWakeup_1_bits_lqIdx_value(aluRS_0_io_fastWakeup_1_bits_lqIdx_value),
    .io_perf_0_value(aluRS_0_io_perf_0_value)
  );
  assign io_fromDispatch_0_ready = aluRS_0_io_fromDispatch_0_ready; // @[ReservationStation.scala 172:21]
  assign io_fromDispatch_1_ready = aluRS_0_io_fromDispatch_1_ready; // @[ReservationStation.scala 172:21]
  assign io_deq_0_valid = aluRS_0_io_deq_0_valid; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_cf_pd_isRVC = aluRS_0_io_deq_0_bits_uop_cf_pd_isRVC; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_cf_pd_brType = aluRS_0_io_deq_0_bits_uop_cf_pd_brType; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_cf_pd_isCall = aluRS_0_io_deq_0_bits_uop_cf_pd_isCall; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_cf_pd_isRet = aluRS_0_io_deq_0_bits_uop_cf_pd_isRet; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_cf_pred_taken = aluRS_0_io_deq_0_bits_uop_cf_pred_taken; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_cf_ftqPtr_flag = aluRS_0_io_deq_0_bits_uop_cf_ftqPtr_flag; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_cf_ftqPtr_value = aluRS_0_io_deq_0_bits_uop_cf_ftqPtr_value; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_cf_ftqOffset = aluRS_0_io_deq_0_bits_uop_cf_ftqOffset; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_ctrl_fuType = aluRS_0_io_deq_0_bits_uop_ctrl_fuType; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_ctrl_fuOpType = aluRS_0_io_deq_0_bits_uop_ctrl_fuOpType; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_ctrl_imm = aluRS_0_io_deq_0_bits_uop_ctrl_imm; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_robIdx_flag = aluRS_0_io_deq_0_bits_uop_robIdx_flag; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_robIdx_value = aluRS_0_io_deq_0_bits_uop_robIdx_value; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_src_0 = aluRS_0_io_deq_0_bits_src_0; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_src_1 = aluRS_0_io_deq_0_bits_src_1; // @[ReservationStation.scala 178:12]
  assign io_deq_1_valid = aluRS_0_io_deq_1_valid; // @[ReservationStation.scala 178:12]
  assign io_deq_1_bits_uop_cf_pd_isRVC = aluRS_0_io_deq_1_bits_uop_cf_pd_isRVC; // @[ReservationStation.scala 178:12]
  assign io_deq_1_bits_uop_cf_pd_brType = aluRS_0_io_deq_1_bits_uop_cf_pd_brType; // @[ReservationStation.scala 178:12]
  assign io_deq_1_bits_uop_cf_pd_isCall = aluRS_0_io_deq_1_bits_uop_cf_pd_isCall; // @[ReservationStation.scala 178:12]
  assign io_deq_1_bits_uop_cf_pd_isRet = aluRS_0_io_deq_1_bits_uop_cf_pd_isRet; // @[ReservationStation.scala 178:12]
  assign io_deq_1_bits_uop_cf_pred_taken = aluRS_0_io_deq_1_bits_uop_cf_pred_taken; // @[ReservationStation.scala 178:12]
  assign io_deq_1_bits_uop_cf_ftqPtr_flag = aluRS_0_io_deq_1_bits_uop_cf_ftqPtr_flag; // @[ReservationStation.scala 178:12]
  assign io_deq_1_bits_uop_cf_ftqPtr_value = aluRS_0_io_deq_1_bits_uop_cf_ftqPtr_value; // @[ReservationStation.scala 178:12]
  assign io_deq_1_bits_uop_cf_ftqOffset = aluRS_0_io_deq_1_bits_uop_cf_ftqOffset; // @[ReservationStation.scala 178:12]
  assign io_deq_1_bits_uop_ctrl_fuType = aluRS_0_io_deq_1_bits_uop_ctrl_fuType; // @[ReservationStation.scala 178:12]
  assign io_deq_1_bits_uop_ctrl_fuOpType = aluRS_0_io_deq_1_bits_uop_ctrl_fuOpType; // @[ReservationStation.scala 178:12]
  assign io_deq_1_bits_uop_ctrl_imm = aluRS_0_io_deq_1_bits_uop_ctrl_imm; // @[ReservationStation.scala 178:12]
  assign io_deq_1_bits_uop_robIdx_flag = aluRS_0_io_deq_1_bits_uop_robIdx_flag; // @[ReservationStation.scala 178:12]
  assign io_deq_1_bits_uop_robIdx_value = aluRS_0_io_deq_1_bits_uop_robIdx_value; // @[ReservationStation.scala 178:12]
  assign io_deq_1_bits_src_0 = aluRS_0_io_deq_1_bits_src_0; // @[ReservationStation.scala 178:12]
  assign io_deq_1_bits_src_1 = aluRS_0_io_deq_1_bits_src_1; // @[ReservationStation.scala 178:12]
  assign io_fastWakeup_0_valid = aluRS_0_io_fastWakeup_0_valid; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_0_bits_ctrl_rfWen = aluRS_0_io_fastWakeup_0_bits_ctrl_rfWen; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_0_bits_ctrl_fpWen = aluRS_0_io_fastWakeup_0_bits_ctrl_fpWen; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_0_bits_pdest = aluRS_0_io_fastWakeup_0_bits_pdest; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_0_bits_robIdx_flag = aluRS_0_io_fastWakeup_0_bits_robIdx_flag; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_0_bits_robIdx_value = aluRS_0_io_fastWakeup_0_bits_robIdx_value; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_0_bits_lqIdx_flag = aluRS_0_io_fastWakeup_0_bits_lqIdx_flag; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_0_bits_lqIdx_value = aluRS_0_io_fastWakeup_0_bits_lqIdx_value; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_1_valid = aluRS_0_io_fastWakeup_1_valid; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_1_bits_ctrl_rfWen = aluRS_0_io_fastWakeup_1_bits_ctrl_rfWen; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_1_bits_ctrl_fpWen = aluRS_0_io_fastWakeup_1_bits_ctrl_fpWen; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_1_bits_pdest = aluRS_0_io_fastWakeup_1_bits_pdest; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_1_bits_robIdx_flag = aluRS_0_io_fastWakeup_1_bits_robIdx_flag; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_1_bits_robIdx_value = aluRS_0_io_fastWakeup_1_bits_robIdx_value; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_1_bits_lqIdx_flag = aluRS_0_io_fastWakeup_1_bits_lqIdx_flag; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_1_bits_lqIdx_value = aluRS_0_io_fastWakeup_1_bits_lqIdx_value; // @[ReservationStation.scala 183:25]
  assign io_perf_0_value = io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign aluRS_0_clock = clock;
  assign aluRS_0_reset = reset;
  assign aluRS_0_io_redirect_valid = aluRS_0_io_redirect_next_valid_REG; // @[BitUtils.scala 26:20 28:18]
  assign aluRS_0_io_redirect_bits_robIdx_flag = aluRS_0_io_redirect_next_bits_rrobIdx_flag; // @[BitUtils.scala 26:20 33:15]
  assign aluRS_0_io_redirect_bits_robIdx_value = aluRS_0_io_redirect_next_bits_rrobIdx_value; // @[BitUtils.scala 26:20 33:15]
  assign aluRS_0_io_redirect_bits_level = aluRS_0_io_redirect_next_bits_rlevel; // @[BitUtils.scala 26:20 33:15]
  assign aluRS_0_io_fromDispatch_0_valid = io_fromDispatch_0_valid; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_cf_trigger_backendEn_0 = io_fromDispatch_0_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_cf_trigger_backendEn_1 = io_fromDispatch_0_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_cf_pd_isRVC = io_fromDispatch_0_bits_cf_pd_isRVC; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_cf_pd_brType = io_fromDispatch_0_bits_cf_pd_brType; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_cf_pd_isCall = io_fromDispatch_0_bits_cf_pd_isCall; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_cf_pd_isRet = io_fromDispatch_0_bits_cf_pd_isRet; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_cf_pred_taken = io_fromDispatch_0_bits_cf_pred_taken; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_cf_storeSetHit = io_fromDispatch_0_bits_cf_storeSetHit; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_cf_loadWaitStrict = io_fromDispatch_0_bits_cf_loadWaitStrict; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_cf_ssid = io_fromDispatch_0_bits_cf_ssid; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_cf_ftqPtr_flag = io_fromDispatch_0_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_cf_ftqPtr_value = io_fromDispatch_0_bits_cf_ftqPtr_value; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_cf_ftqOffset = io_fromDispatch_0_bits_cf_ftqOffset; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_ctrl_srcType_0 = io_fromDispatch_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_ctrl_srcType_1 = io_fromDispatch_0_bits_ctrl_srcType_1; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_ctrl_fuType = io_fromDispatch_0_bits_ctrl_fuType; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_ctrl_fuOpType = io_fromDispatch_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_ctrl_rfWen = io_fromDispatch_0_bits_ctrl_rfWen; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_ctrl_fpWen = io_fromDispatch_0_bits_ctrl_fpWen; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_ctrl_selImm = io_fromDispatch_0_bits_ctrl_selImm; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_ctrl_imm = io_fromDispatch_0_bits_ctrl_imm; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_srcState_0 = io_fromDispatch_0_bits_srcState_0; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_srcState_1 = io_fromDispatch_0_bits_srcState_1; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_psrc_0 = io_fromDispatch_0_bits_psrc_0; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_psrc_1 = io_fromDispatch_0_bits_psrc_1; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_pdest = io_fromDispatch_0_bits_pdest; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_robIdx_flag = io_fromDispatch_0_bits_robIdx_flag; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_robIdx_value = io_fromDispatch_0_bits_robIdx_value; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_lqIdx_flag = io_fromDispatch_0_bits_lqIdx_flag; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_lqIdx_value = io_fromDispatch_0_bits_lqIdx_value; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_sqIdx_flag = io_fromDispatch_0_bits_sqIdx_flag; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_0_bits_sqIdx_value = io_fromDispatch_0_bits_sqIdx_value; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_valid = io_fromDispatch_1_valid; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_cf_trigger_backendEn_0 = io_fromDispatch_1_bits_cf_trigger_backendEn_0; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_cf_trigger_backendEn_1 = io_fromDispatch_1_bits_cf_trigger_backendEn_1; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_cf_pd_isRVC = io_fromDispatch_1_bits_cf_pd_isRVC; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_cf_pd_brType = io_fromDispatch_1_bits_cf_pd_brType; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_cf_pd_isCall = io_fromDispatch_1_bits_cf_pd_isCall; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_cf_pd_isRet = io_fromDispatch_1_bits_cf_pd_isRet; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_cf_pred_taken = io_fromDispatch_1_bits_cf_pred_taken; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_cf_storeSetHit = io_fromDispatch_1_bits_cf_storeSetHit; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_cf_loadWaitStrict = io_fromDispatch_1_bits_cf_loadWaitStrict; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_cf_ssid = io_fromDispatch_1_bits_cf_ssid; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_cf_ftqPtr_flag = io_fromDispatch_1_bits_cf_ftqPtr_flag; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_cf_ftqPtr_value = io_fromDispatch_1_bits_cf_ftqPtr_value; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_cf_ftqOffset = io_fromDispatch_1_bits_cf_ftqOffset; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_ctrl_srcType_0 = io_fromDispatch_1_bits_ctrl_srcType_0; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_ctrl_srcType_1 = io_fromDispatch_1_bits_ctrl_srcType_1; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_ctrl_fuType = io_fromDispatch_1_bits_ctrl_fuType; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_ctrl_fuOpType = io_fromDispatch_1_bits_ctrl_fuOpType; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_ctrl_rfWen = io_fromDispatch_1_bits_ctrl_rfWen; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_ctrl_fpWen = io_fromDispatch_1_bits_ctrl_fpWen; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_ctrl_selImm = io_fromDispatch_1_bits_ctrl_selImm; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_ctrl_imm = io_fromDispatch_1_bits_ctrl_imm; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_srcState_0 = io_fromDispatch_1_bits_srcState_0; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_srcState_1 = io_fromDispatch_1_bits_srcState_1; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_psrc_0 = io_fromDispatch_1_bits_psrc_0; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_psrc_1 = io_fromDispatch_1_bits_psrc_1; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_pdest = io_fromDispatch_1_bits_pdest; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_robIdx_flag = io_fromDispatch_1_bits_robIdx_flag; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_robIdx_value = io_fromDispatch_1_bits_robIdx_value; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_lqIdx_flag = io_fromDispatch_1_bits_lqIdx_flag; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_lqIdx_value = io_fromDispatch_1_bits_lqIdx_value; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_sqIdx_flag = io_fromDispatch_1_bits_sqIdx_flag; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_fromDispatch_1_bits_sqIdx_value = io_fromDispatch_1_bits_sqIdx_value; // @[ReservationStation.scala 172:21]
  assign aluRS_0_io_srcRegValue_0_0 = io_srcRegValue_0_0; // @[ReservationStation.scala 173:20]
  assign aluRS_0_io_srcRegValue_0_1 = io_srcRegValue_0_1; // @[ReservationStation.scala 173:20]
  assign aluRS_0_io_srcRegValue_1_0 = io_srcRegValue_1_0; // @[ReservationStation.scala 173:20]
  assign aluRS_0_io_srcRegValue_1_1 = io_srcRegValue_1_1; // @[ReservationStation.scala 173:20]
  assign aluRS_0_io_fastUopsIn_0_valid = io_fastUopsIn_0_valid; // @[ReservationStation.scala 179:32]
  assign aluRS_0_io_fastUopsIn_0_bits_ctrl_rfWen = io_fastUopsIn_0_bits_ctrl_rfWen; // @[ReservationStation.scala 179:32]
  assign aluRS_0_io_fastUopsIn_0_bits_pdest = io_fastUopsIn_0_bits_pdest; // @[ReservationStation.scala 179:32]
  assign aluRS_0_io_fastUopsIn_1_valid = io_fastUopsIn_1_valid; // @[ReservationStation.scala 179:32]
  assign aluRS_0_io_fastUopsIn_1_bits_ctrl_rfWen = io_fastUopsIn_1_bits_ctrl_rfWen; // @[ReservationStation.scala 179:32]
  assign aluRS_0_io_fastUopsIn_1_bits_pdest = io_fastUopsIn_1_bits_pdest; // @[ReservationStation.scala 179:32]
  assign aluRS_0_io_fastUopsIn_2_valid = io_fastUopsIn_2_valid; // @[ReservationStation.scala 179:32]
  assign aluRS_0_io_fastUopsIn_2_bits_ctrl_rfWen = io_fastUopsIn_2_bits_ctrl_rfWen; // @[ReservationStation.scala 179:32]
  assign aluRS_0_io_fastUopsIn_2_bits_pdest = io_fastUopsIn_2_bits_pdest; // @[ReservationStation.scala 179:32]
  assign aluRS_0_io_fastUopsIn_3_valid = io_fastUopsIn_3_valid; // @[ReservationStation.scala 179:32]
  assign aluRS_0_io_fastUopsIn_3_bits_ctrl_rfWen = io_fastUopsIn_3_bits_ctrl_rfWen; // @[ReservationStation.scala 179:32]
  assign aluRS_0_io_fastUopsIn_3_bits_pdest = io_fastUopsIn_3_bits_pdest; // @[ReservationStation.scala 179:32]
  assign aluRS_0_io_fastUopsIn_4_valid = io_fastUopsIn_4_valid; // @[ReservationStation.scala 179:32]
  assign aluRS_0_io_fastUopsIn_4_bits_ctrl_rfWen = io_fastUopsIn_4_bits_ctrl_rfWen; // @[ReservationStation.scala 179:32]
  assign aluRS_0_io_fastUopsIn_4_bits_pdest = io_fastUopsIn_4_bits_pdest; // @[ReservationStation.scala 179:32]
  assign aluRS_0_io_fastDatas_0 = io_fastDatas_0; // @[ReservationStation.scala 180:31]
  assign aluRS_0_io_fastDatas_1 = io_fastDatas_1; // @[ReservationStation.scala 180:31]
  assign aluRS_0_io_fastDatas_2 = io_fastDatas_2; // @[ReservationStation.scala 180:31]
  assign aluRS_0_io_fastDatas_3 = io_fastDatas_3; // @[ReservationStation.scala 180:31]
  assign aluRS_0_io_fastDatas_4 = io_fastDatas_4; // @[ReservationStation.scala 180:31]
  assign aluRS_0_io_slowPorts_0_valid = io_slowPorts_0_valid; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_0_bits_uop_ctrl_rfWen = io_slowPorts_0_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_0_bits_uop_pdest = io_slowPorts_0_bits_uop_pdest; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_0_bits_data = io_slowPorts_0_bits_data; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_1_valid = io_slowPorts_1_valid; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_1_bits_uop_ctrl_rfWen = io_slowPorts_1_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_1_bits_uop_pdest = io_slowPorts_1_bits_uop_pdest; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_1_bits_data = io_slowPorts_1_bits_data; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_2_valid = io_slowPorts_2_valid; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_2_bits_uop_ctrl_rfWen = io_slowPorts_2_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_2_bits_uop_pdest = io_slowPorts_2_bits_uop_pdest; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_2_bits_data = io_slowPorts_2_bits_data; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_3_valid = io_slowPorts_3_valid; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_3_bits_uop_ctrl_rfWen = io_slowPorts_3_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_3_bits_uop_pdest = io_slowPorts_3_bits_uop_pdest; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_3_bits_data = io_slowPorts_3_bits_data; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_4_valid = io_slowPorts_4_valid; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_4_bits_uop_ctrl_rfWen = io_slowPorts_4_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_4_bits_uop_pdest = io_slowPorts_4_bits_uop_pdest; // @[ReservationStation.scala 181:31]
  assign aluRS_0_io_slowPorts_4_bits_data = io_slowPorts_4_bits_data; // @[ReservationStation.scala 181:31]
  always @(posedge clock) begin
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      aluRS_0_io_redirect_next_bits_rrobIdx_flag <= io_redirect_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      aluRS_0_io_redirect_next_bits_rrobIdx_value <= io_redirect_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      aluRS_0_io_redirect_next_bits_rlevel <= io_redirect_bits_level; // @[Reg.scala 17:22]
    end
    io_perf_0_value_REG <= aluRS_0_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BitUtils.scala 28:28]
      aluRS_0_io_redirect_next_valid_REG <= 1'h0; // @[BitUtils.scala 28:28]
    end else begin
      aluRS_0_io_redirect_next_valid_REG <= io_redirect_valid; // @[BitUtils.scala 28:28]
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
  aluRS_0_io_redirect_next_valid_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  aluRS_0_io_redirect_next_bits_rrobIdx_flag = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  aluRS_0_io_redirect_next_bits_rrobIdx_value = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  aluRS_0_io_redirect_next_bits_rlevel = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_5[5:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    aluRS_0_io_redirect_next_valid_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

