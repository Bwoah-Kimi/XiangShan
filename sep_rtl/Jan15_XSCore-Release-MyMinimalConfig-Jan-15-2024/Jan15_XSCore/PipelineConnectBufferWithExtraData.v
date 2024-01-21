module PipelineConnectBufferWithExtraData(
  input         clock,
  input         reset,
  output        io_in_ready,
  input         io_in_valid,
  input         io_in_bits_uop_cf_exceptionVec_2,
  input         io_in_bits_uop_cf_exceptionVec_3,
  input         io_in_bits_uop_cf_exceptionVec_8,
  input         io_in_bits_uop_cf_exceptionVec_9,
  input         io_in_bits_uop_cf_exceptionVec_11,
  input         io_in_bits_uop_ctrl_rfWen,
  input         io_in_bits_uop_ctrl_fpWen,
  input         io_in_bits_uop_ctrl_flushPipe,
  input  [5:0]  io_in_bits_uop_pdest,
  input         io_in_bits_uop_robIdx_flag,
  input  [4:0]  io_in_bits_uop_robIdx_value,
  input         io_in_bits_uop_lqIdx_flag,
  input  [3:0]  io_in_bits_uop_lqIdx_value,
  input         io_out_ready,
  output        io_out_valid,
  output        io_out_bits_uop_cf_exceptionVec_2,
  output        io_out_bits_uop_cf_exceptionVec_3,
  output        io_out_bits_uop_cf_exceptionVec_8,
  output        io_out_bits_uop_cf_exceptionVec_9,
  output        io_out_bits_uop_cf_exceptionVec_11,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output        io_out_bits_uop_ctrl_flushPipe,
  output [5:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [4:0]  io_out_bits_uop_robIdx_value,
  output        io_out_bits_uop_lqIdx_flag,
  output [3:0]  io_out_bits_uop_lqIdx_value,
  input         io_flush_valid,
  input         io_flush_bits_robIdx_flag,
  input  [4:0]  io_flush_bits_robIdx_value,
  input         io_flush_bits_level,
  input  [63:0] extra_in_data,
  input         extra_in_redirectValid,
  input         extra_in_redirect_cfiUpdate_isMisPred,
  input         extra_in_debug_isPerfCnt,
  output [63:0] extra_out_data,
  output        extra_out_redirectValid,
  output        extra_out_redirect_cfiUpdate_isMisPred,
  output        extra_out_debug_isPerfCnt
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
  reg [63:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
`endif // RANDOMIZE_REG_INIT
  reg  valid_0; // @[PipelineConnect.scala 41:22]
  reg  valid_1; // @[PipelineConnect.scala 41:22]
  reg  data_0_uop_cf_exceptionVec_2; // @[PipelineConnect.scala 42:17]
  reg  data_0_uop_cf_exceptionVec_3; // @[PipelineConnect.scala 42:17]
  reg  data_0_uop_cf_exceptionVec_8; // @[PipelineConnect.scala 42:17]
  reg  data_0_uop_cf_exceptionVec_9; // @[PipelineConnect.scala 42:17]
  reg  data_0_uop_cf_exceptionVec_11; // @[PipelineConnect.scala 42:17]
  reg  data_0_uop_ctrl_rfWen; // @[PipelineConnect.scala 42:17]
  reg  data_0_uop_ctrl_fpWen; // @[PipelineConnect.scala 42:17]
  reg  data_0_uop_ctrl_flushPipe; // @[PipelineConnect.scala 42:17]
  reg [5:0] data_0_uop_pdest; // @[PipelineConnect.scala 42:17]
  reg  data_0_uop_robIdx_flag; // @[PipelineConnect.scala 42:17]
  reg [4:0] data_0_uop_robIdx_value; // @[PipelineConnect.scala 42:17]
  reg  data_0_uop_lqIdx_flag; // @[PipelineConnect.scala 42:17]
  reg [3:0] data_0_uop_lqIdx_value; // @[PipelineConnect.scala 42:17]
  reg  data_1_uop_cf_exceptionVec_2; // @[PipelineConnect.scala 42:17]
  reg  data_1_uop_cf_exceptionVec_3; // @[PipelineConnect.scala 42:17]
  reg  data_1_uop_cf_exceptionVec_8; // @[PipelineConnect.scala 42:17]
  reg  data_1_uop_cf_exceptionVec_9; // @[PipelineConnect.scala 42:17]
  reg  data_1_uop_cf_exceptionVec_11; // @[PipelineConnect.scala 42:17]
  reg  data_1_uop_ctrl_rfWen; // @[PipelineConnect.scala 42:17]
  reg  data_1_uop_ctrl_fpWen; // @[PipelineConnect.scala 42:17]
  reg  data_1_uop_ctrl_flushPipe; // @[PipelineConnect.scala 42:17]
  reg [5:0] data_1_uop_pdest; // @[PipelineConnect.scala 42:17]
  reg  data_1_uop_robIdx_flag; // @[PipelineConnect.scala 42:17]
  reg [4:0] data_1_uop_robIdx_value; // @[PipelineConnect.scala 42:17]
  reg  data_1_uop_lqIdx_flag; // @[PipelineConnect.scala 42:17]
  reg [3:0] data_1_uop_lqIdx_value; // @[PipelineConnect.scala 42:17]
  reg  older; // @[PipelineConnect.scala 43:22]
  wire [1:0] _io_out_valid_T = {valid_1,valid_0}; // @[PipelineConnect.scala 46:25]
  wire  _T = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_390 = ~older ? 1'h0 : valid_0; // @[PipelineConnect.scala 49:{18,18} 41:22]
  wire  _GEN_391 = older ? 1'h0 : valid_1; // @[PipelineConnect.scala 49:{18,18} 41:22]
  wire  _older_T = ~older; // @[PipelineConnect.scala 50:14]
  wire  _GEN_392 = _T ? _GEN_390 : valid_0; // @[PipelineConnect.scala 41:22 48:22]
  wire  _GEN_393 = _T ? _GEN_391 : valid_1; // @[PipelineConnect.scala 41:22 48:22]
  wire [5:0] _flushItself_T_1 = {io_in_bits_uop_robIdx_flag,io_in_bits_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire [5:0] _flushItself_T_2 = {io_flush_bits_robIdx_flag,io_flush_bits_robIdx_value}; // @[CircularQueuePtr.scala 61:56]
  wire  _flushItself_T_3 = _flushItself_T_1 == _flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushItself = io_flush_bits_level & _flushItself_T_3; // @[Rob.scala 142:51]
  wire  differentFlag = io_in_bits_uop_robIdx_flag ^ io_flush_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  compare = io_in_bits_uop_robIdx_value > io_flush_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _T_1 = differentFlag ^ compare; // @[CircularQueuePtr.scala 68:19]
  wire  _T_3 = io_flush_valid & (flushItself | _T_1); // @[Rob.scala 143:20]
  wire  _T_10 = ~valid_0 & (_older_T | older & valid_1); // @[PipelineConnect.scala 58:21]
  wire  _T_15 = ~valid_1 & (older | _older_T & valid_0); // @[PipelineConnect.scala 62:27]
  wire  _GEN_395 = ~valid_1 & (older | _older_T & valid_0) | _GEN_393; // @[PipelineConnect.scala 62:61 63:16]
  wire  _GEN_592 = ~valid_0 & (_older_T | older & valid_1) | _GEN_392; // @[PipelineConnect.scala 58:55 59:16]
  wire  _GEN_985 = ~valid_0 & (_older_T | older & valid_1) ? 1'h0 : _T_15; // @[PipelineConnect.scala 58:55]
  wire  updateVec_0 = io_in_valid & ~_T_3 & _T_10; // @[PipelineConnect.scala 56:58]
  wire  updateVec_1 = io_in_valid & ~_T_3 & _GEN_985; // @[PipelineConnect.scala 56:58]
  wire [5:0] _flushVec_flushItself_T_1 = {data_0_uop_robIdx_flag,data_0_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushVec_flushItself_T_3 = _flushVec_flushItself_T_1 == _flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushVec_flushItself = io_flush_bits_level & _flushVec_flushItself_T_3; // @[Rob.scala 142:51]
  wire  flushVec_differentFlag = data_0_uop_robIdx_flag ^ io_flush_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  flushVec_compare = data_0_uop_robIdx_value > io_flush_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _flushVec_T = flushVec_differentFlag ^ flushVec_compare; // @[CircularQueuePtr.scala 68:19]
  wire  _flushVec_T_2 = io_flush_valid & (flushVec_flushItself | _flushVec_T); // @[Rob.scala 143:20]
  wire  flushVec_0 = _flushVec_T_2 & valid_0; // @[PipelineConnect.scala 70:77]
  wire [5:0] _flushVec_flushItself_T_5 = {data_1_uop_robIdx_flag,data_1_uop_robIdx_value}; // @[CircularQueuePtr.scala 61:40]
  wire  _flushVec_flushItself_T_7 = _flushVec_flushItself_T_5 == _flushItself_T_2; // @[CircularQueuePtr.scala 61:47]
  wire  flushVec_flushItself_1 = io_flush_bits_level & _flushVec_flushItself_T_7; // @[Rob.scala 142:51]
  wire  flushVec_differentFlag_1 = data_1_uop_robIdx_flag ^ io_flush_bits_robIdx_flag; // @[CircularQueuePtr.scala 66:35]
  wire  flushVec_compare_1 = data_1_uop_robIdx_value > io_flush_bits_robIdx_value; // @[CircularQueuePtr.scala 67:30]
  wire  _flushVec_T_3 = flushVec_differentFlag_1 ^ flushVec_compare_1; // @[CircularQueuePtr.scala 68:19]
  wire  _flushVec_T_5 = io_flush_valid & (flushVec_flushItself_1 | _flushVec_T_3); // @[Rob.scala 143:20]
  wire  flushVec_1 = _flushVec_T_5 & valid_1; // @[PipelineConnect.scala 70:77]
  reg [63:0] extraData_0_data; // @[PipelineConnect.scala 89:22]
  reg  extraData_0_redirectValid; // @[PipelineConnect.scala 89:22]
  reg  extraData_0_redirect_cfiUpdate_isMisPred; // @[PipelineConnect.scala 89:22]
  reg  extraData_0_debug_isPerfCnt; // @[PipelineConnect.scala 89:22]
  reg [63:0] extraData_1_data; // @[PipelineConnect.scala 89:22]
  reg  extraData_1_redirectValid; // @[PipelineConnect.scala 89:22]
  reg  extraData_1_redirect_cfiUpdate_isMisPred; // @[PipelineConnect.scala 89:22]
  reg  extraData_1_debug_isPerfCnt; // @[PipelineConnect.scala 89:22]
  reg  REG; // @[PipelineConnect.scala 91:18]
  reg  REG_1; // @[PipelineConnect.scala 91:18]
  assign io_in_ready = ~(&_io_out_valid_T); // @[PipelineConnect.scala 54:18]
  assign io_out_valid = |_io_out_valid_T; // @[PipelineConnect.scala 46:32]
  assign io_out_bits_uop_cf_exceptionVec_2 = older ? data_1_uop_cf_exceptionVec_2 : data_0_uop_cf_exceptionVec_2; // @[PipelineConnect.scala 47:{15,15}]
  assign io_out_bits_uop_cf_exceptionVec_3 = older ? data_1_uop_cf_exceptionVec_3 : data_0_uop_cf_exceptionVec_3; // @[PipelineConnect.scala 47:{15,15}]
  assign io_out_bits_uop_cf_exceptionVec_8 = older ? data_1_uop_cf_exceptionVec_8 : data_0_uop_cf_exceptionVec_8; // @[PipelineConnect.scala 47:{15,15}]
  assign io_out_bits_uop_cf_exceptionVec_9 = older ? data_1_uop_cf_exceptionVec_9 : data_0_uop_cf_exceptionVec_9; // @[PipelineConnect.scala 47:{15,15}]
  assign io_out_bits_uop_cf_exceptionVec_11 = older ? data_1_uop_cf_exceptionVec_11 : data_0_uop_cf_exceptionVec_11; // @[PipelineConnect.scala 47:{15,15}]
  assign io_out_bits_uop_ctrl_rfWen = older ? data_1_uop_ctrl_rfWen : data_0_uop_ctrl_rfWen; // @[PipelineConnect.scala 47:{15,15}]
  assign io_out_bits_uop_ctrl_fpWen = older ? data_1_uop_ctrl_fpWen : data_0_uop_ctrl_fpWen; // @[PipelineConnect.scala 47:{15,15}]
  assign io_out_bits_uop_ctrl_flushPipe = older ? data_1_uop_ctrl_flushPipe : data_0_uop_ctrl_flushPipe; // @[PipelineConnect.scala 47:{15,15}]
  assign io_out_bits_uop_pdest = older ? data_1_uop_pdest : data_0_uop_pdest; // @[PipelineConnect.scala 47:{15,15}]
  assign io_out_bits_uop_robIdx_flag = older ? data_1_uop_robIdx_flag : data_0_uop_robIdx_flag; // @[PipelineConnect.scala 47:{15,15}]
  assign io_out_bits_uop_robIdx_value = older ? data_1_uop_robIdx_value : data_0_uop_robIdx_value; // @[PipelineConnect.scala 47:{15,15}]
  assign io_out_bits_uop_lqIdx_flag = older ? data_1_uop_lqIdx_flag : data_0_uop_lqIdx_flag; // @[PipelineConnect.scala 47:{15,15}]
  assign io_out_bits_uop_lqIdx_value = older ? data_1_uop_lqIdx_value : data_0_uop_lqIdx_value; // @[PipelineConnect.scala 47:{15,15}]
  assign extra_out_data = _older_T ? extraData_1_data : extraData_0_data; // @[PipelineConnect.scala 97:{13,13}]
  assign extra_out_redirectValid = _older_T ? extraData_1_redirectValid : extraData_0_redirectValid; // @[PipelineConnect.scala 97:{13,13}]
  assign extra_out_redirect_cfiUpdate_isMisPred = _older_T ? extraData_1_redirect_cfiUpdate_isMisPred :
    extraData_0_redirect_cfiUpdate_isMisPred; // @[PipelineConnect.scala 97:{13,13}]
  assign extra_out_debug_isPerfCnt = _older_T ? extraData_1_debug_isPerfCnt : extraData_0_debug_isPerfCnt; // @[PipelineConnect.scala 97:{13,13}]
  always @(posedge clock) begin
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (~valid_0 & (_older_T | older & valid_1)) begin // @[PipelineConnect.scala 58:55]
        data_0_uop_cf_exceptionVec_2 <= io_in_bits_uop_cf_exceptionVec_2; // @[PipelineConnect.scala 60:15]
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (~valid_0 & (_older_T | older & valid_1)) begin // @[PipelineConnect.scala 58:55]
        data_0_uop_cf_exceptionVec_3 <= io_in_bits_uop_cf_exceptionVec_3; // @[PipelineConnect.scala 60:15]
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (~valid_0 & (_older_T | older & valid_1)) begin // @[PipelineConnect.scala 58:55]
        data_0_uop_cf_exceptionVec_8 <= io_in_bits_uop_cf_exceptionVec_8; // @[PipelineConnect.scala 60:15]
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (~valid_0 & (_older_T | older & valid_1)) begin // @[PipelineConnect.scala 58:55]
        data_0_uop_cf_exceptionVec_9 <= io_in_bits_uop_cf_exceptionVec_9; // @[PipelineConnect.scala 60:15]
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (~valid_0 & (_older_T | older & valid_1)) begin // @[PipelineConnect.scala 58:55]
        data_0_uop_cf_exceptionVec_11 <= io_in_bits_uop_cf_exceptionVec_11; // @[PipelineConnect.scala 60:15]
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (~valid_0 & (_older_T | older & valid_1)) begin // @[PipelineConnect.scala 58:55]
        data_0_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 60:15]
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (~valid_0 & (_older_T | older & valid_1)) begin // @[PipelineConnect.scala 58:55]
        data_0_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 60:15]
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (~valid_0 & (_older_T | older & valid_1)) begin // @[PipelineConnect.scala 58:55]
        data_0_uop_ctrl_flushPipe <= io_in_bits_uop_ctrl_flushPipe; // @[PipelineConnect.scala 60:15]
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (~valid_0 & (_older_T | older & valid_1)) begin // @[PipelineConnect.scala 58:55]
        data_0_uop_pdest <= io_in_bits_uop_pdest; // @[PipelineConnect.scala 60:15]
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (~valid_0 & (_older_T | older & valid_1)) begin // @[PipelineConnect.scala 58:55]
        data_0_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[PipelineConnect.scala 60:15]
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (~valid_0 & (_older_T | older & valid_1)) begin // @[PipelineConnect.scala 58:55]
        data_0_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[PipelineConnect.scala 60:15]
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (~valid_0 & (_older_T | older & valid_1)) begin // @[PipelineConnect.scala 58:55]
        data_0_uop_lqIdx_flag <= io_in_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 60:15]
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (~valid_0 & (_older_T | older & valid_1)) begin // @[PipelineConnect.scala 58:55]
        data_0_uop_lqIdx_value <= io_in_bits_uop_lqIdx_value; // @[PipelineConnect.scala 60:15]
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (!(~valid_0 & (_older_T | older & valid_1))) begin // @[PipelineConnect.scala 58:55]
        if (~valid_1 & (older | _older_T & valid_0)) begin // @[PipelineConnect.scala 62:61]
          data_1_uop_cf_exceptionVec_2 <= io_in_bits_uop_cf_exceptionVec_2; // @[PipelineConnect.scala 64:15]
        end
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (!(~valid_0 & (_older_T | older & valid_1))) begin // @[PipelineConnect.scala 58:55]
        if (~valid_1 & (older | _older_T & valid_0)) begin // @[PipelineConnect.scala 62:61]
          data_1_uop_cf_exceptionVec_3 <= io_in_bits_uop_cf_exceptionVec_3; // @[PipelineConnect.scala 64:15]
        end
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (!(~valid_0 & (_older_T | older & valid_1))) begin // @[PipelineConnect.scala 58:55]
        if (~valid_1 & (older | _older_T & valid_0)) begin // @[PipelineConnect.scala 62:61]
          data_1_uop_cf_exceptionVec_8 <= io_in_bits_uop_cf_exceptionVec_8; // @[PipelineConnect.scala 64:15]
        end
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (!(~valid_0 & (_older_T | older & valid_1))) begin // @[PipelineConnect.scala 58:55]
        if (~valid_1 & (older | _older_T & valid_0)) begin // @[PipelineConnect.scala 62:61]
          data_1_uop_cf_exceptionVec_9 <= io_in_bits_uop_cf_exceptionVec_9; // @[PipelineConnect.scala 64:15]
        end
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (!(~valid_0 & (_older_T | older & valid_1))) begin // @[PipelineConnect.scala 58:55]
        if (~valid_1 & (older | _older_T & valid_0)) begin // @[PipelineConnect.scala 62:61]
          data_1_uop_cf_exceptionVec_11 <= io_in_bits_uop_cf_exceptionVec_11; // @[PipelineConnect.scala 64:15]
        end
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (!(~valid_0 & (_older_T | older & valid_1))) begin // @[PipelineConnect.scala 58:55]
        if (~valid_1 & (older | _older_T & valid_0)) begin // @[PipelineConnect.scala 62:61]
          data_1_uop_ctrl_rfWen <= io_in_bits_uop_ctrl_rfWen; // @[PipelineConnect.scala 64:15]
        end
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (!(~valid_0 & (_older_T | older & valid_1))) begin // @[PipelineConnect.scala 58:55]
        if (~valid_1 & (older | _older_T & valid_0)) begin // @[PipelineConnect.scala 62:61]
          data_1_uop_ctrl_fpWen <= io_in_bits_uop_ctrl_fpWen; // @[PipelineConnect.scala 64:15]
        end
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (!(~valid_0 & (_older_T | older & valid_1))) begin // @[PipelineConnect.scala 58:55]
        if (~valid_1 & (older | _older_T & valid_0)) begin // @[PipelineConnect.scala 62:61]
          data_1_uop_ctrl_flushPipe <= io_in_bits_uop_ctrl_flushPipe; // @[PipelineConnect.scala 64:15]
        end
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (!(~valid_0 & (_older_T | older & valid_1))) begin // @[PipelineConnect.scala 58:55]
        if (~valid_1 & (older | _older_T & valid_0)) begin // @[PipelineConnect.scala 62:61]
          data_1_uop_pdest <= io_in_bits_uop_pdest; // @[PipelineConnect.scala 64:15]
        end
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (!(~valid_0 & (_older_T | older & valid_1))) begin // @[PipelineConnect.scala 58:55]
        if (~valid_1 & (older | _older_T & valid_0)) begin // @[PipelineConnect.scala 62:61]
          data_1_uop_robIdx_flag <= io_in_bits_uop_robIdx_flag; // @[PipelineConnect.scala 64:15]
        end
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (!(~valid_0 & (_older_T | older & valid_1))) begin // @[PipelineConnect.scala 58:55]
        if (~valid_1 & (older | _older_T & valid_0)) begin // @[PipelineConnect.scala 62:61]
          data_1_uop_robIdx_value <= io_in_bits_uop_robIdx_value; // @[PipelineConnect.scala 64:15]
        end
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (!(~valid_0 & (_older_T | older & valid_1))) begin // @[PipelineConnect.scala 58:55]
        if (~valid_1 & (older | _older_T & valid_0)) begin // @[PipelineConnect.scala 62:61]
          data_1_uop_lqIdx_flag <= io_in_bits_uop_lqIdx_flag; // @[PipelineConnect.scala 64:15]
        end
      end
    end
    if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 56:58]
      if (!(~valid_0 & (_older_T | older & valid_1))) begin // @[PipelineConnect.scala 58:55]
        if (~valid_1 & (older | _older_T & valid_0)) begin // @[PipelineConnect.scala 62:61]
          data_1_uop_lqIdx_value <= io_in_bits_uop_lqIdx_value; // @[PipelineConnect.scala 64:15]
        end
      end
    end
    if (REG) begin // @[PipelineConnect.scala 91:50]
      extraData_0_data <= extra_in_data; // @[PipelineConnect.scala 92:20]
    end
    if (REG) begin // @[PipelineConnect.scala 91:50]
      extraData_0_redirectValid <= extra_in_redirectValid; // @[PipelineConnect.scala 92:20]
    end
    if (REG) begin // @[PipelineConnect.scala 91:50]
      extraData_0_redirect_cfiUpdate_isMisPred <= extra_in_redirect_cfiUpdate_isMisPred; // @[PipelineConnect.scala 92:20]
    end
    if (REG) begin // @[PipelineConnect.scala 91:50]
      extraData_0_debug_isPerfCnt <= extra_in_debug_isPerfCnt; // @[PipelineConnect.scala 92:20]
    end
    if (REG_1) begin // @[PipelineConnect.scala 91:50]
      extraData_1_data <= extra_in_data; // @[PipelineConnect.scala 92:20]
    end
    if (REG_1) begin // @[PipelineConnect.scala 91:50]
      extraData_1_redirectValid <= extra_in_redirectValid; // @[PipelineConnect.scala 92:20]
    end
    if (REG_1) begin // @[PipelineConnect.scala 91:50]
      extraData_1_redirect_cfiUpdate_isMisPred <= extra_in_redirect_cfiUpdate_isMisPred; // @[PipelineConnect.scala 92:20]
    end
    if (REG_1) begin // @[PipelineConnect.scala 91:50]
      extraData_1_debug_isPerfCnt <= extra_in_debug_isPerfCnt; // @[PipelineConnect.scala 92:20]
    end
    REG <= updateVec_0 & ~flushVec_0; // @[PipelineConnect.scala 91:32]
    REG_1 <= updateVec_1 & ~flushVec_1; // @[PipelineConnect.scala 91:32]
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PipelineConnect.scala 72:14]
      valid_0 <= 1'h0; // @[PipelineConnect.scala 73:9]
    end else if (flushVec_0) begin // @[PipelineConnect.scala 56:58]
      valid_0 <= 1'h0;
    end else if (io_in_valid & ~_T_3) begin // @[PipelineConnect.scala 48:22]
      valid_0 <= _GEN_592; // @[PipelineConnect.scala 49:{18,18} 41:22]
    end else if (_T) begin // @[PipelineConnect.scala 41:22]
      if (~older) begin
        valid_0 <= 1'h0;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PipelineConnect.scala 72:14]
      valid_1 <= 1'h0; // @[PipelineConnect.scala 73:9]
    end else if (flushVec_1) begin // @[PipelineConnect.scala 56:58]
      valid_1 <= 1'h0; // @[PipelineConnect.scala 58:55]
    end else if (io_in_valid & ~_T_3) begin
      if (~valid_0 & (_older_T | older & valid_1)) begin
        valid_1 <= _GEN_393;
      end else begin
        valid_1 <= _GEN_395;
      end
    end else begin
      valid_1 <= _GEN_393;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[PipelineConnect.scala 48:22]
      older <= 1'h0; // @[PipelineConnect.scala 50:11]
    end else if (_T) begin // @[PipelineConnect.scala 43:22]
      older <= ~older;
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
  valid_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  valid_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  data_0_uop_cf_exceptionVec_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  data_0_uop_cf_exceptionVec_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  data_0_uop_cf_exceptionVec_8 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  data_0_uop_cf_exceptionVec_9 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  data_0_uop_cf_exceptionVec_11 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  data_0_uop_ctrl_rfWen = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  data_0_uop_ctrl_fpWen = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  data_0_uop_ctrl_flushPipe = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  data_0_uop_pdest = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  data_0_uop_robIdx_flag = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  data_0_uop_robIdx_value = _RAND_12[4:0];
  _RAND_13 = {1{`RANDOM}};
  data_0_uop_lqIdx_flag = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  data_0_uop_lqIdx_value = _RAND_14[3:0];
  _RAND_15 = {1{`RANDOM}};
  data_1_uop_cf_exceptionVec_2 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  data_1_uop_cf_exceptionVec_3 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  data_1_uop_cf_exceptionVec_8 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  data_1_uop_cf_exceptionVec_9 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  data_1_uop_cf_exceptionVec_11 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  data_1_uop_ctrl_rfWen = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  data_1_uop_ctrl_fpWen = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  data_1_uop_ctrl_flushPipe = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  data_1_uop_pdest = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  data_1_uop_robIdx_flag = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  data_1_uop_robIdx_value = _RAND_25[4:0];
  _RAND_26 = {1{`RANDOM}};
  data_1_uop_lqIdx_flag = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  data_1_uop_lqIdx_value = _RAND_27[3:0];
  _RAND_28 = {1{`RANDOM}};
  older = _RAND_28[0:0];
  _RAND_29 = {2{`RANDOM}};
  extraData_0_data = _RAND_29[63:0];
  _RAND_30 = {1{`RANDOM}};
  extraData_0_redirectValid = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  extraData_0_redirect_cfiUpdate_isMisPred = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  extraData_0_debug_isPerfCnt = _RAND_32[0:0];
  _RAND_33 = {2{`RANDOM}};
  extraData_1_data = _RAND_33[63:0];
  _RAND_34 = {1{`RANDOM}};
  extraData_1_redirectValid = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  extraData_1_redirect_cfiUpdate_isMisPred = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  extraData_1_debug_isPerfCnt = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  REG = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  REG_1 = _RAND_38[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    valid_0 = 1'h0;
  end
  if (reset) begin
    valid_1 = 1'h0;
  end
  if (reset) begin
    older = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

