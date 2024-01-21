module ReservationStationWrapper_1(
  input         clock,
  input         reset,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  output        io_fromDispatch_0_ready,
  input         io_fromDispatch_0_valid,
  input  [1:0]  io_fromDispatch_0_bits_ctrl_srcType_0,
  input  [1:0]  io_fromDispatch_0_bits_ctrl_srcType_1,
  input  [3:0]  io_fromDispatch_0_bits_ctrl_fuType,
  input  [6:0]  io_fromDispatch_0_bits_ctrl_fuOpType,
  input         io_fromDispatch_0_bits_ctrl_rfWen,
  input         io_fromDispatch_0_bits_ctrl_fpWen,
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
  output        io_fromDispatch_1_ready,
  input         io_fromDispatch_1_valid,
  input  [1:0]  io_fromDispatch_1_bits_ctrl_srcType_0,
  input  [1:0]  io_fromDispatch_1_bits_ctrl_srcType_1,
  input  [3:0]  io_fromDispatch_1_bits_ctrl_fuType,
  input  [6:0]  io_fromDispatch_1_bits_ctrl_fuOpType,
  input         io_fromDispatch_1_bits_ctrl_rfWen,
  input         io_fromDispatch_1_bits_ctrl_fpWen,
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
  input  [63:0] io_srcRegValue_0_0,
  input  [63:0] io_srcRegValue_0_1,
  input  [63:0] io_srcRegValue_1_0,
  input  [63:0] io_srcRegValue_1_1,
  input         io_deq_0_ready,
  output        io_deq_0_valid,
  output [3:0]  io_deq_0_bits_uop_ctrl_fuType,
  output [6:0]  io_deq_0_bits_uop_ctrl_fuOpType,
  output        io_deq_0_bits_uop_ctrl_rfWen,
  output        io_deq_0_bits_uop_ctrl_fpWen,
  output [5:0]  io_deq_0_bits_uop_pdest,
  output        io_deq_0_bits_uop_robIdx_flag,
  output [4:0]  io_deq_0_bits_uop_robIdx_value,
  output        io_deq_0_bits_uop_lqIdx_flag,
  output [3:0]  io_deq_0_bits_uop_lqIdx_value,
  output [63:0] io_deq_0_bits_src_0,
  output [63:0] io_deq_0_bits_src_1,
  input         io_fastUopsIn_0_valid,
  input         io_fastUopsIn_0_bits_ctrl_rfWen,
  input  [5:0]  io_fastUopsIn_0_bits_pdest,
  input  [63:0] io_fastDatas_0,
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
  output [5:0]  io_fastWakeup_0_bits_pdest,
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
  wire  mulRS_0_clock; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_reset; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_redirect_valid; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_redirect_bits_robIdx_flag; // @[ReservationStation.scala 154:13]
  wire [4:0] mulRS_0_io_redirect_bits_robIdx_value; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_redirect_bits_level; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_0_ready; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_0_valid; // @[ReservationStation.scala 154:13]
  wire [1:0] mulRS_0_io_fromDispatch_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 154:13]
  wire [1:0] mulRS_0_io_fromDispatch_0_bits_ctrl_srcType_1; // @[ReservationStation.scala 154:13]
  wire [3:0] mulRS_0_io_fromDispatch_0_bits_ctrl_fuType; // @[ReservationStation.scala 154:13]
  wire [6:0] mulRS_0_io_fromDispatch_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_0_bits_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_0_bits_ctrl_fpWen; // @[ReservationStation.scala 154:13]
  wire [19:0] mulRS_0_io_fromDispatch_0_bits_ctrl_imm; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_0_bits_srcState_0; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_0_bits_srcState_1; // @[ReservationStation.scala 154:13]
  wire [5:0] mulRS_0_io_fromDispatch_0_bits_psrc_0; // @[ReservationStation.scala 154:13]
  wire [5:0] mulRS_0_io_fromDispatch_0_bits_psrc_1; // @[ReservationStation.scala 154:13]
  wire [5:0] mulRS_0_io_fromDispatch_0_bits_pdest; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_0_bits_robIdx_flag; // @[ReservationStation.scala 154:13]
  wire [4:0] mulRS_0_io_fromDispatch_0_bits_robIdx_value; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_0_bits_lqIdx_flag; // @[ReservationStation.scala 154:13]
  wire [3:0] mulRS_0_io_fromDispatch_0_bits_lqIdx_value; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_1_ready; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_1_valid; // @[ReservationStation.scala 154:13]
  wire [1:0] mulRS_0_io_fromDispatch_1_bits_ctrl_srcType_0; // @[ReservationStation.scala 154:13]
  wire [1:0] mulRS_0_io_fromDispatch_1_bits_ctrl_srcType_1; // @[ReservationStation.scala 154:13]
  wire [3:0] mulRS_0_io_fromDispatch_1_bits_ctrl_fuType; // @[ReservationStation.scala 154:13]
  wire [6:0] mulRS_0_io_fromDispatch_1_bits_ctrl_fuOpType; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_1_bits_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_1_bits_ctrl_fpWen; // @[ReservationStation.scala 154:13]
  wire [19:0] mulRS_0_io_fromDispatch_1_bits_ctrl_imm; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_1_bits_srcState_0; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_1_bits_srcState_1; // @[ReservationStation.scala 154:13]
  wire [5:0] mulRS_0_io_fromDispatch_1_bits_psrc_0; // @[ReservationStation.scala 154:13]
  wire [5:0] mulRS_0_io_fromDispatch_1_bits_psrc_1; // @[ReservationStation.scala 154:13]
  wire [5:0] mulRS_0_io_fromDispatch_1_bits_pdest; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_1_bits_robIdx_flag; // @[ReservationStation.scala 154:13]
  wire [4:0] mulRS_0_io_fromDispatch_1_bits_robIdx_value; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fromDispatch_1_bits_lqIdx_flag; // @[ReservationStation.scala 154:13]
  wire [3:0] mulRS_0_io_fromDispatch_1_bits_lqIdx_value; // @[ReservationStation.scala 154:13]
  wire [63:0] mulRS_0_io_srcRegValue_0_0; // @[ReservationStation.scala 154:13]
  wire [63:0] mulRS_0_io_srcRegValue_0_1; // @[ReservationStation.scala 154:13]
  wire [63:0] mulRS_0_io_srcRegValue_1_0; // @[ReservationStation.scala 154:13]
  wire [63:0] mulRS_0_io_srcRegValue_1_1; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_deq_0_ready; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_deq_0_valid; // @[ReservationStation.scala 154:13]
  wire [3:0] mulRS_0_io_deq_0_bits_uop_ctrl_fuType; // @[ReservationStation.scala 154:13]
  wire [6:0] mulRS_0_io_deq_0_bits_uop_ctrl_fuOpType; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_deq_0_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_deq_0_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 154:13]
  wire [5:0] mulRS_0_io_deq_0_bits_uop_pdest; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_deq_0_bits_uop_robIdx_flag; // @[ReservationStation.scala 154:13]
  wire [4:0] mulRS_0_io_deq_0_bits_uop_robIdx_value; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_deq_0_bits_uop_lqIdx_flag; // @[ReservationStation.scala 154:13]
  wire [3:0] mulRS_0_io_deq_0_bits_uop_lqIdx_value; // @[ReservationStation.scala 154:13]
  wire [63:0] mulRS_0_io_deq_0_bits_src_0; // @[ReservationStation.scala 154:13]
  wire [63:0] mulRS_0_io_deq_0_bits_src_1; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fastUopsIn_0_valid; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fastUopsIn_0_bits_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] mulRS_0_io_fastUopsIn_0_bits_pdest; // @[ReservationStation.scala 154:13]
  wire [63:0] mulRS_0_io_fastDatas_0; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_slowPorts_0_valid; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_slowPorts_0_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] mulRS_0_io_slowPorts_0_bits_uop_pdest; // @[ReservationStation.scala 154:13]
  wire [63:0] mulRS_0_io_slowPorts_0_bits_data; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_slowPorts_1_valid; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_slowPorts_1_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] mulRS_0_io_slowPorts_1_bits_uop_pdest; // @[ReservationStation.scala 154:13]
  wire [63:0] mulRS_0_io_slowPorts_1_bits_data; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_slowPorts_2_valid; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_slowPorts_2_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] mulRS_0_io_slowPorts_2_bits_uop_pdest; // @[ReservationStation.scala 154:13]
  wire [63:0] mulRS_0_io_slowPorts_2_bits_data; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_slowPorts_3_valid; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_slowPorts_3_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] mulRS_0_io_slowPorts_3_bits_uop_pdest; // @[ReservationStation.scala 154:13]
  wire [63:0] mulRS_0_io_slowPorts_3_bits_data; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_slowPorts_4_valid; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_slowPorts_4_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] mulRS_0_io_slowPorts_4_bits_uop_pdest; // @[ReservationStation.scala 154:13]
  wire [63:0] mulRS_0_io_slowPorts_4_bits_data; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fastWakeup_0_valid; // @[ReservationStation.scala 154:13]
  wire  mulRS_0_io_fastWakeup_0_bits_ctrl_rfWen; // @[ReservationStation.scala 154:13]
  wire [5:0] mulRS_0_io_fastWakeup_0_bits_pdest; // @[ReservationStation.scala 154:13]
  wire [5:0] mulRS_0_io_perf_0_value; // @[ReservationStation.scala 154:13]
  reg  mulRS_0_io_redirect_next_valid_REG; // @[BitUtils.scala 28:28]
  reg  mulRS_0_io_redirect_next_bits_rrobIdx_flag; // @[Reg.scala 16:16]
  reg [4:0] mulRS_0_io_redirect_next_bits_rrobIdx_value; // @[Reg.scala 16:16]
  reg  mulRS_0_io_redirect_next_bits_rlevel; // @[Reg.scala 16:16]
  reg [5:0] io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:35]
  reg [5:0] io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:27]
  ReservationStation_1 mulRS_0 ( // @[ReservationStation.scala 154:13]
    .clock(mulRS_0_clock),
    .reset(mulRS_0_reset),
    .io_redirect_valid(mulRS_0_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(mulRS_0_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(mulRS_0_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(mulRS_0_io_redirect_bits_level),
    .io_fromDispatch_0_ready(mulRS_0_io_fromDispatch_0_ready),
    .io_fromDispatch_0_valid(mulRS_0_io_fromDispatch_0_valid),
    .io_fromDispatch_0_bits_ctrl_srcType_0(mulRS_0_io_fromDispatch_0_bits_ctrl_srcType_0),
    .io_fromDispatch_0_bits_ctrl_srcType_1(mulRS_0_io_fromDispatch_0_bits_ctrl_srcType_1),
    .io_fromDispatch_0_bits_ctrl_fuType(mulRS_0_io_fromDispatch_0_bits_ctrl_fuType),
    .io_fromDispatch_0_bits_ctrl_fuOpType(mulRS_0_io_fromDispatch_0_bits_ctrl_fuOpType),
    .io_fromDispatch_0_bits_ctrl_rfWen(mulRS_0_io_fromDispatch_0_bits_ctrl_rfWen),
    .io_fromDispatch_0_bits_ctrl_fpWen(mulRS_0_io_fromDispatch_0_bits_ctrl_fpWen),
    .io_fromDispatch_0_bits_ctrl_imm(mulRS_0_io_fromDispatch_0_bits_ctrl_imm),
    .io_fromDispatch_0_bits_srcState_0(mulRS_0_io_fromDispatch_0_bits_srcState_0),
    .io_fromDispatch_0_bits_srcState_1(mulRS_0_io_fromDispatch_0_bits_srcState_1),
    .io_fromDispatch_0_bits_psrc_0(mulRS_0_io_fromDispatch_0_bits_psrc_0),
    .io_fromDispatch_0_bits_psrc_1(mulRS_0_io_fromDispatch_0_bits_psrc_1),
    .io_fromDispatch_0_bits_pdest(mulRS_0_io_fromDispatch_0_bits_pdest),
    .io_fromDispatch_0_bits_robIdx_flag(mulRS_0_io_fromDispatch_0_bits_robIdx_flag),
    .io_fromDispatch_0_bits_robIdx_value(mulRS_0_io_fromDispatch_0_bits_robIdx_value),
    .io_fromDispatch_0_bits_lqIdx_flag(mulRS_0_io_fromDispatch_0_bits_lqIdx_flag),
    .io_fromDispatch_0_bits_lqIdx_value(mulRS_0_io_fromDispatch_0_bits_lqIdx_value),
    .io_fromDispatch_1_ready(mulRS_0_io_fromDispatch_1_ready),
    .io_fromDispatch_1_valid(mulRS_0_io_fromDispatch_1_valid),
    .io_fromDispatch_1_bits_ctrl_srcType_0(mulRS_0_io_fromDispatch_1_bits_ctrl_srcType_0),
    .io_fromDispatch_1_bits_ctrl_srcType_1(mulRS_0_io_fromDispatch_1_bits_ctrl_srcType_1),
    .io_fromDispatch_1_bits_ctrl_fuType(mulRS_0_io_fromDispatch_1_bits_ctrl_fuType),
    .io_fromDispatch_1_bits_ctrl_fuOpType(mulRS_0_io_fromDispatch_1_bits_ctrl_fuOpType),
    .io_fromDispatch_1_bits_ctrl_rfWen(mulRS_0_io_fromDispatch_1_bits_ctrl_rfWen),
    .io_fromDispatch_1_bits_ctrl_fpWen(mulRS_0_io_fromDispatch_1_bits_ctrl_fpWen),
    .io_fromDispatch_1_bits_ctrl_imm(mulRS_0_io_fromDispatch_1_bits_ctrl_imm),
    .io_fromDispatch_1_bits_srcState_0(mulRS_0_io_fromDispatch_1_bits_srcState_0),
    .io_fromDispatch_1_bits_srcState_1(mulRS_0_io_fromDispatch_1_bits_srcState_1),
    .io_fromDispatch_1_bits_psrc_0(mulRS_0_io_fromDispatch_1_bits_psrc_0),
    .io_fromDispatch_1_bits_psrc_1(mulRS_0_io_fromDispatch_1_bits_psrc_1),
    .io_fromDispatch_1_bits_pdest(mulRS_0_io_fromDispatch_1_bits_pdest),
    .io_fromDispatch_1_bits_robIdx_flag(mulRS_0_io_fromDispatch_1_bits_robIdx_flag),
    .io_fromDispatch_1_bits_robIdx_value(mulRS_0_io_fromDispatch_1_bits_robIdx_value),
    .io_fromDispatch_1_bits_lqIdx_flag(mulRS_0_io_fromDispatch_1_bits_lqIdx_flag),
    .io_fromDispatch_1_bits_lqIdx_value(mulRS_0_io_fromDispatch_1_bits_lqIdx_value),
    .io_srcRegValue_0_0(mulRS_0_io_srcRegValue_0_0),
    .io_srcRegValue_0_1(mulRS_0_io_srcRegValue_0_1),
    .io_srcRegValue_1_0(mulRS_0_io_srcRegValue_1_0),
    .io_srcRegValue_1_1(mulRS_0_io_srcRegValue_1_1),
    .io_deq_0_ready(mulRS_0_io_deq_0_ready),
    .io_deq_0_valid(mulRS_0_io_deq_0_valid),
    .io_deq_0_bits_uop_ctrl_fuType(mulRS_0_io_deq_0_bits_uop_ctrl_fuType),
    .io_deq_0_bits_uop_ctrl_fuOpType(mulRS_0_io_deq_0_bits_uop_ctrl_fuOpType),
    .io_deq_0_bits_uop_ctrl_rfWen(mulRS_0_io_deq_0_bits_uop_ctrl_rfWen),
    .io_deq_0_bits_uop_ctrl_fpWen(mulRS_0_io_deq_0_bits_uop_ctrl_fpWen),
    .io_deq_0_bits_uop_pdest(mulRS_0_io_deq_0_bits_uop_pdest),
    .io_deq_0_bits_uop_robIdx_flag(mulRS_0_io_deq_0_bits_uop_robIdx_flag),
    .io_deq_0_bits_uop_robIdx_value(mulRS_0_io_deq_0_bits_uop_robIdx_value),
    .io_deq_0_bits_uop_lqIdx_flag(mulRS_0_io_deq_0_bits_uop_lqIdx_flag),
    .io_deq_0_bits_uop_lqIdx_value(mulRS_0_io_deq_0_bits_uop_lqIdx_value),
    .io_deq_0_bits_src_0(mulRS_0_io_deq_0_bits_src_0),
    .io_deq_0_bits_src_1(mulRS_0_io_deq_0_bits_src_1),
    .io_fastUopsIn_0_valid(mulRS_0_io_fastUopsIn_0_valid),
    .io_fastUopsIn_0_bits_ctrl_rfWen(mulRS_0_io_fastUopsIn_0_bits_ctrl_rfWen),
    .io_fastUopsIn_0_bits_pdest(mulRS_0_io_fastUopsIn_0_bits_pdest),
    .io_fastDatas_0(mulRS_0_io_fastDatas_0),
    .io_slowPorts_0_valid(mulRS_0_io_slowPorts_0_valid),
    .io_slowPorts_0_bits_uop_ctrl_rfWen(mulRS_0_io_slowPorts_0_bits_uop_ctrl_rfWen),
    .io_slowPorts_0_bits_uop_pdest(mulRS_0_io_slowPorts_0_bits_uop_pdest),
    .io_slowPorts_0_bits_data(mulRS_0_io_slowPorts_0_bits_data),
    .io_slowPorts_1_valid(mulRS_0_io_slowPorts_1_valid),
    .io_slowPorts_1_bits_uop_ctrl_rfWen(mulRS_0_io_slowPorts_1_bits_uop_ctrl_rfWen),
    .io_slowPorts_1_bits_uop_pdest(mulRS_0_io_slowPorts_1_bits_uop_pdest),
    .io_slowPorts_1_bits_data(mulRS_0_io_slowPorts_1_bits_data),
    .io_slowPorts_2_valid(mulRS_0_io_slowPorts_2_valid),
    .io_slowPorts_2_bits_uop_ctrl_rfWen(mulRS_0_io_slowPorts_2_bits_uop_ctrl_rfWen),
    .io_slowPorts_2_bits_uop_pdest(mulRS_0_io_slowPorts_2_bits_uop_pdest),
    .io_slowPorts_2_bits_data(mulRS_0_io_slowPorts_2_bits_data),
    .io_slowPorts_3_valid(mulRS_0_io_slowPorts_3_valid),
    .io_slowPorts_3_bits_uop_ctrl_rfWen(mulRS_0_io_slowPorts_3_bits_uop_ctrl_rfWen),
    .io_slowPorts_3_bits_uop_pdest(mulRS_0_io_slowPorts_3_bits_uop_pdest),
    .io_slowPorts_3_bits_data(mulRS_0_io_slowPorts_3_bits_data),
    .io_slowPorts_4_valid(mulRS_0_io_slowPorts_4_valid),
    .io_slowPorts_4_bits_uop_ctrl_rfWen(mulRS_0_io_slowPorts_4_bits_uop_ctrl_rfWen),
    .io_slowPorts_4_bits_uop_pdest(mulRS_0_io_slowPorts_4_bits_uop_pdest),
    .io_slowPorts_4_bits_data(mulRS_0_io_slowPorts_4_bits_data),
    .io_fastWakeup_0_valid(mulRS_0_io_fastWakeup_0_valid),
    .io_fastWakeup_0_bits_ctrl_rfWen(mulRS_0_io_fastWakeup_0_bits_ctrl_rfWen),
    .io_fastWakeup_0_bits_pdest(mulRS_0_io_fastWakeup_0_bits_pdest),
    .io_perf_0_value(mulRS_0_io_perf_0_value)
  );
  assign io_fromDispatch_0_ready = mulRS_0_io_fromDispatch_0_ready; // @[ReservationStation.scala 172:21]
  assign io_fromDispatch_1_ready = mulRS_0_io_fromDispatch_1_ready; // @[ReservationStation.scala 172:21]
  assign io_deq_0_valid = mulRS_0_io_deq_0_valid; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_ctrl_fuType = mulRS_0_io_deq_0_bits_uop_ctrl_fuType; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_ctrl_fuOpType = mulRS_0_io_deq_0_bits_uop_ctrl_fuOpType; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_ctrl_rfWen = mulRS_0_io_deq_0_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_ctrl_fpWen = mulRS_0_io_deq_0_bits_uop_ctrl_fpWen; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_pdest = mulRS_0_io_deq_0_bits_uop_pdest; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_robIdx_flag = mulRS_0_io_deq_0_bits_uop_robIdx_flag; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_robIdx_value = mulRS_0_io_deq_0_bits_uop_robIdx_value; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_lqIdx_flag = mulRS_0_io_deq_0_bits_uop_lqIdx_flag; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_uop_lqIdx_value = mulRS_0_io_deq_0_bits_uop_lqIdx_value; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_src_0 = mulRS_0_io_deq_0_bits_src_0; // @[ReservationStation.scala 178:12]
  assign io_deq_0_bits_src_1 = mulRS_0_io_deq_0_bits_src_1; // @[ReservationStation.scala 178:12]
  assign io_fastWakeup_0_valid = mulRS_0_io_fastWakeup_0_valid; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_0_bits_ctrl_rfWen = mulRS_0_io_fastWakeup_0_bits_ctrl_rfWen; // @[ReservationStation.scala 183:25]
  assign io_fastWakeup_0_bits_pdest = mulRS_0_io_fastWakeup_0_bits_pdest; // @[ReservationStation.scala 183:25]
  assign io_perf_0_value = io_perf_0_value_REG_1; // @[PerfCounterUtils.scala 295:17]
  assign mulRS_0_clock = clock;
  assign mulRS_0_reset = reset;
  assign mulRS_0_io_redirect_valid = mulRS_0_io_redirect_next_valid_REG; // @[BitUtils.scala 26:20 28:18]
  assign mulRS_0_io_redirect_bits_robIdx_flag = mulRS_0_io_redirect_next_bits_rrobIdx_flag; // @[BitUtils.scala 26:20 33:15]
  assign mulRS_0_io_redirect_bits_robIdx_value = mulRS_0_io_redirect_next_bits_rrobIdx_value; // @[BitUtils.scala 26:20 33:15]
  assign mulRS_0_io_redirect_bits_level = mulRS_0_io_redirect_next_bits_rlevel; // @[BitUtils.scala 26:20 33:15]
  assign mulRS_0_io_fromDispatch_0_valid = io_fromDispatch_0_valid; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_ctrl_srcType_0 = io_fromDispatch_0_bits_ctrl_srcType_0; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_ctrl_srcType_1 = io_fromDispatch_0_bits_ctrl_srcType_1; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_ctrl_fuType = io_fromDispatch_0_bits_ctrl_fuType; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_ctrl_fuOpType = io_fromDispatch_0_bits_ctrl_fuOpType; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_ctrl_rfWen = io_fromDispatch_0_bits_ctrl_rfWen; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_ctrl_fpWen = io_fromDispatch_0_bits_ctrl_fpWen; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_ctrl_imm = io_fromDispatch_0_bits_ctrl_imm; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_srcState_0 = io_fromDispatch_0_bits_srcState_0; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_srcState_1 = io_fromDispatch_0_bits_srcState_1; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_psrc_0 = io_fromDispatch_0_bits_psrc_0; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_psrc_1 = io_fromDispatch_0_bits_psrc_1; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_pdest = io_fromDispatch_0_bits_pdest; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_robIdx_flag = io_fromDispatch_0_bits_robIdx_flag; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_robIdx_value = io_fromDispatch_0_bits_robIdx_value; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_lqIdx_flag = io_fromDispatch_0_bits_lqIdx_flag; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_0_bits_lqIdx_value = io_fromDispatch_0_bits_lqIdx_value; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_valid = io_fromDispatch_1_valid; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_ctrl_srcType_0 = io_fromDispatch_1_bits_ctrl_srcType_0; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_ctrl_srcType_1 = io_fromDispatch_1_bits_ctrl_srcType_1; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_ctrl_fuType = io_fromDispatch_1_bits_ctrl_fuType; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_ctrl_fuOpType = io_fromDispatch_1_bits_ctrl_fuOpType; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_ctrl_rfWen = io_fromDispatch_1_bits_ctrl_rfWen; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_ctrl_fpWen = io_fromDispatch_1_bits_ctrl_fpWen; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_ctrl_imm = io_fromDispatch_1_bits_ctrl_imm; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_srcState_0 = io_fromDispatch_1_bits_srcState_0; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_srcState_1 = io_fromDispatch_1_bits_srcState_1; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_psrc_0 = io_fromDispatch_1_bits_psrc_0; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_psrc_1 = io_fromDispatch_1_bits_psrc_1; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_pdest = io_fromDispatch_1_bits_pdest; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_robIdx_flag = io_fromDispatch_1_bits_robIdx_flag; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_robIdx_value = io_fromDispatch_1_bits_robIdx_value; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_lqIdx_flag = io_fromDispatch_1_bits_lqIdx_flag; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_fromDispatch_1_bits_lqIdx_value = io_fromDispatch_1_bits_lqIdx_value; // @[ReservationStation.scala 172:21]
  assign mulRS_0_io_srcRegValue_0_0 = io_srcRegValue_0_0; // @[ReservationStation.scala 173:20]
  assign mulRS_0_io_srcRegValue_0_1 = io_srcRegValue_0_1; // @[ReservationStation.scala 173:20]
  assign mulRS_0_io_srcRegValue_1_0 = io_srcRegValue_1_0; // @[ReservationStation.scala 173:20]
  assign mulRS_0_io_srcRegValue_1_1 = io_srcRegValue_1_1; // @[ReservationStation.scala 173:20]
  assign mulRS_0_io_deq_0_ready = io_deq_0_ready; // @[ReservationStation.scala 178:12]
  assign mulRS_0_io_fastUopsIn_0_valid = io_fastUopsIn_0_valid; // @[ReservationStation.scala 179:32]
  assign mulRS_0_io_fastUopsIn_0_bits_ctrl_rfWen = io_fastUopsIn_0_bits_ctrl_rfWen; // @[ReservationStation.scala 179:32]
  assign mulRS_0_io_fastUopsIn_0_bits_pdest = io_fastUopsIn_0_bits_pdest; // @[ReservationStation.scala 179:32]
  assign mulRS_0_io_fastDatas_0 = io_fastDatas_0; // @[ReservationStation.scala 180:31]
  assign mulRS_0_io_slowPorts_0_valid = io_slowPorts_0_valid; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_0_bits_uop_ctrl_rfWen = io_slowPorts_0_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_0_bits_uop_pdest = io_slowPorts_0_bits_uop_pdest; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_0_bits_data = io_slowPorts_0_bits_data; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_1_valid = io_slowPorts_1_valid; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_1_bits_uop_ctrl_rfWen = io_slowPorts_1_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_1_bits_uop_pdest = io_slowPorts_1_bits_uop_pdest; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_1_bits_data = io_slowPorts_1_bits_data; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_2_valid = io_slowPorts_2_valid; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_2_bits_uop_ctrl_rfWen = io_slowPorts_2_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_2_bits_uop_pdest = io_slowPorts_2_bits_uop_pdest; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_2_bits_data = io_slowPorts_2_bits_data; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_3_valid = io_slowPorts_3_valid; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_3_bits_uop_ctrl_rfWen = io_slowPorts_3_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_3_bits_uop_pdest = io_slowPorts_3_bits_uop_pdest; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_3_bits_data = io_slowPorts_3_bits_data; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_4_valid = io_slowPorts_4_valid; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_4_bits_uop_ctrl_rfWen = io_slowPorts_4_bits_uop_ctrl_rfWen; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_4_bits_uop_pdest = io_slowPorts_4_bits_uop_pdest; // @[ReservationStation.scala 181:31]
  assign mulRS_0_io_slowPorts_4_bits_data = io_slowPorts_4_bits_data; // @[ReservationStation.scala 181:31]
  always @(posedge clock) begin
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      mulRS_0_io_redirect_next_bits_rrobIdx_flag <= io_redirect_bits_robIdx_flag; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      mulRS_0_io_redirect_next_bits_rrobIdx_value <= io_redirect_bits_robIdx_value; // @[Reg.scala 17:22]
    end
    if (io_redirect_valid) begin // @[Reg.scala 17:18]
      mulRS_0_io_redirect_next_bits_rlevel <= io_redirect_bits_level; // @[Reg.scala 17:22]
    end
    io_perf_0_value_REG <= mulRS_0_io_perf_0_value; // @[PerfCounterUtils.scala 295:35]
    io_perf_0_value_REG_1 <= io_perf_0_value_REG; // @[PerfCounterUtils.scala 295:27]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[BitUtils.scala 28:28]
      mulRS_0_io_redirect_next_valid_REG <= 1'h0; // @[BitUtils.scala 28:28]
    end else begin
      mulRS_0_io_redirect_next_valid_REG <= io_redirect_valid; // @[BitUtils.scala 28:28]
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
  mulRS_0_io_redirect_next_valid_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  mulRS_0_io_redirect_next_bits_rrobIdx_flag = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mulRS_0_io_redirect_next_bits_rrobIdx_value = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  mulRS_0_io_redirect_next_bits_rlevel = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  io_perf_0_value_REG = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  io_perf_0_value_REG_1 = _RAND_5[5:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    mulRS_0_io_redirect_next_valid_REG = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

