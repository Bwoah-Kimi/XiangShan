module FmiscExeUnit(
  input         clock,
  input         reset,
  output        io_fromFp_ready,
  input         io_fromFp_valid,
  input         io_fromFp_bits_uop_ctrl_rfWen,
  input         io_fromFp_bits_uop_ctrl_fpWen,
  input         io_fromFp_bits_uop_ctrl_fpu_typeTagIn,
  input         io_fromFp_bits_uop_ctrl_fpu_typeTagOut,
  input         io_fromFp_bits_uop_ctrl_fpu_wflags,
  input         io_fromFp_bits_uop_ctrl_fpu_fpWen,
  input         io_fromFp_bits_uop_ctrl_fpu_div,
  input         io_fromFp_bits_uop_ctrl_fpu_sqrt,
  input         io_fromFp_bits_uop_ctrl_fpu_fcvt,
  input  [1:0]  io_fromFp_bits_uop_ctrl_fpu_typ,
  input  [1:0]  io_fromFp_bits_uop_ctrl_fpu_fmt,
  input  [2:0]  io_fromFp_bits_uop_ctrl_fpu_rm,
  input  [5:0]  io_fromFp_bits_uop_pdest,
  input         io_fromFp_bits_uop_robIdx_flag,
  input  [4:0]  io_fromFp_bits_uop_robIdx_value,
  input         io_fromFp_bits_uop_lqIdx_flag,
  input  [3:0]  io_fromFp_bits_uop_lqIdx_value,
  input  [63:0] io_fromFp_bits_src_0,
  input  [63:0] io_fromFp_bits_src_1,
  input         io_redirect_valid,
  input         io_redirect_bits_robIdx_flag,
  input  [4:0]  io_redirect_bits_robIdx_value,
  input         io_redirect_bits_level,
  input         io_out_ready,
  output        io_out_valid,
  output        io_out_bits_uop_ctrl_rfWen,
  output        io_out_bits_uop_ctrl_fpWen,
  output [5:0]  io_out_bits_uop_pdest,
  output        io_out_bits_uop_robIdx_flag,
  output [4:0]  io_out_bits_uop_robIdx_value,
  output        io_out_bits_uop_lqIdx_flag,
  output [3:0]  io_out_bits_uop_lqIdx_value,
  output [63:0] io_out_bits_data,
  output [4:0]  io_out_bits_fflags,
  input  [2:0]  frm
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  f2i_clock; // @[Exu.scala 129:21]
  wire  f2i_reset; // @[Exu.scala 129:21]
  wire  f2i_io_in_ready; // @[Exu.scala 129:21]
  wire  f2i_io_in_valid; // @[Exu.scala 129:21]
  wire [63:0] f2i_io_in_bits_src_0; // @[Exu.scala 129:21]
  wire [63:0] f2i_io_in_bits_src_1; // @[Exu.scala 129:21]
  wire  f2i_io_in_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  f2i_io_in_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire  f2i_io_in_bits_uop_ctrl_fpu_typeTagIn; // @[Exu.scala 129:21]
  wire  f2i_io_in_bits_uop_ctrl_fpu_wflags; // @[Exu.scala 129:21]
  wire  f2i_io_in_bits_uop_ctrl_fpu_fcvt; // @[Exu.scala 129:21]
  wire [1:0] f2i_io_in_bits_uop_ctrl_fpu_typ; // @[Exu.scala 129:21]
  wire [1:0] f2i_io_in_bits_uop_ctrl_fpu_fmt; // @[Exu.scala 129:21]
  wire [2:0] f2i_io_in_bits_uop_ctrl_fpu_rm; // @[Exu.scala 129:21]
  wire [5:0] f2i_io_in_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  f2i_io_in_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] f2i_io_in_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  f2i_io_in_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] f2i_io_in_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  f2i_io_out_ready; // @[Exu.scala 129:21]
  wire  f2i_io_out_valid; // @[Exu.scala 129:21]
  wire [63:0] f2i_io_out_bits_data; // @[Exu.scala 129:21]
  wire  f2i_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  f2i_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire [5:0] f2i_io_out_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  f2i_io_out_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] f2i_io_out_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  f2i_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] f2i_io_out_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  f2i_io_redirectIn_valid; // @[Exu.scala 129:21]
  wire  f2i_io_redirectIn_bits_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] f2i_io_redirectIn_bits_robIdx_value; // @[Exu.scala 129:21]
  wire  f2i_io_redirectIn_bits_level; // @[Exu.scala 129:21]
  wire [2:0] f2i_rm; // @[Exu.scala 129:21]
  wire [4:0] f2i_fflags; // @[Exu.scala 129:21]
  wire  f2f_clock; // @[Exu.scala 129:21]
  wire  f2f_reset; // @[Exu.scala 129:21]
  wire  f2f_io_in_ready; // @[Exu.scala 129:21]
  wire  f2f_io_in_valid; // @[Exu.scala 129:21]
  wire [63:0] f2f_io_in_bits_src_0; // @[Exu.scala 129:21]
  wire [63:0] f2f_io_in_bits_src_1; // @[Exu.scala 129:21]
  wire  f2f_io_in_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  f2f_io_in_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire  f2f_io_in_bits_uop_ctrl_fpu_typeTagIn; // @[Exu.scala 129:21]
  wire  f2f_io_in_bits_uop_ctrl_fpu_typeTagOut; // @[Exu.scala 129:21]
  wire  f2f_io_in_bits_uop_ctrl_fpu_wflags; // @[Exu.scala 129:21]
  wire  f2f_io_in_bits_uop_ctrl_fpu_fcvt; // @[Exu.scala 129:21]
  wire [2:0] f2f_io_in_bits_uop_ctrl_fpu_rm; // @[Exu.scala 129:21]
  wire [5:0] f2f_io_in_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  f2f_io_in_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] f2f_io_in_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  f2f_io_in_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] f2f_io_in_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  f2f_io_out_ready; // @[Exu.scala 129:21]
  wire  f2f_io_out_valid; // @[Exu.scala 129:21]
  wire [63:0] f2f_io_out_bits_data; // @[Exu.scala 129:21]
  wire  f2f_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  f2f_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire [5:0] f2f_io_out_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  f2f_io_out_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] f2f_io_out_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  f2f_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] f2f_io_out_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  f2f_io_redirectIn_valid; // @[Exu.scala 129:21]
  wire  f2f_io_redirectIn_bits_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] f2f_io_redirectIn_bits_robIdx_value; // @[Exu.scala 129:21]
  wire  f2f_io_redirectIn_bits_level; // @[Exu.scala 129:21]
  wire [2:0] f2f_rm; // @[Exu.scala 129:21]
  wire [4:0] f2f_fflags; // @[Exu.scala 129:21]
  wire  fdivSqrt_clock; // @[Exu.scala 129:21]
  wire  fdivSqrt_reset; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_in_ready; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_in_valid; // @[Exu.scala 129:21]
  wire [63:0] fdivSqrt_io_in_bits_src_0; // @[Exu.scala 129:21]
  wire [63:0] fdivSqrt_io_in_bits_src_1; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_in_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_in_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_in_bits_uop_ctrl_fpu_typeTagIn; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_in_bits_uop_ctrl_fpu_sqrt; // @[Exu.scala 129:21]
  wire [2:0] fdivSqrt_io_in_bits_uop_ctrl_fpu_rm; // @[Exu.scala 129:21]
  wire [5:0] fdivSqrt_io_in_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_in_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] fdivSqrt_io_in_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_in_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] fdivSqrt_io_in_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_out_ready; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_out_valid; // @[Exu.scala 129:21]
  wire [63:0] fdivSqrt_io_out_bits_data; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 129:21]
  wire [5:0] fdivSqrt_io_out_bits_uop_pdest; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_out_bits_uop_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] fdivSqrt_io_out_bits_uop_robIdx_value; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 129:21]
  wire [3:0] fdivSqrt_io_out_bits_uop_lqIdx_value; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_redirectIn_valid; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_redirectIn_bits_robIdx_flag; // @[Exu.scala 129:21]
  wire [4:0] fdivSqrt_io_redirectIn_bits_robIdx_value; // @[Exu.scala 129:21]
  wire  fdivSqrt_io_redirectIn_bits_level; // @[Exu.scala 129:21]
  wire [2:0] fdivSqrt_rm; // @[Exu.scala 129:21]
  wire [4:0] fdivSqrt_fflags; // @[Exu.scala 129:21]
  wire  fuInReady_buffer_clock; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_reset; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_redirect_valid; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_redirect_bits_robIdx_flag; // @[Exu.scala 149:26]
  wire [4:0] fuInReady_buffer_io_redirect_bits_robIdx_value; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_redirect_bits_level; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_in_ready; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_in_valid; // @[Exu.scala 149:26]
  wire [63:0] fuInReady_buffer_io_in_bits_src_0; // @[Exu.scala 149:26]
  wire [63:0] fuInReady_buffer_io_in_bits_src_1; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_in_bits_uop_ctrl_rfWen; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_in_bits_uop_ctrl_fpWen; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_in_bits_uop_ctrl_fpu_typeTagIn; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_in_bits_uop_ctrl_fpu_sqrt; // @[Exu.scala 149:26]
  wire [2:0] fuInReady_buffer_io_in_bits_uop_ctrl_fpu_rm; // @[Exu.scala 149:26]
  wire [5:0] fuInReady_buffer_io_in_bits_uop_pdest; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_in_bits_uop_robIdx_flag; // @[Exu.scala 149:26]
  wire [4:0] fuInReady_buffer_io_in_bits_uop_robIdx_value; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_in_bits_uop_lqIdx_flag; // @[Exu.scala 149:26]
  wire [3:0] fuInReady_buffer_io_in_bits_uop_lqIdx_value; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_out_ready; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_out_valid; // @[Exu.scala 149:26]
  wire [63:0] fuInReady_buffer_io_out_bits_src_0; // @[Exu.scala 149:26]
  wire [63:0] fuInReady_buffer_io_out_bits_src_1; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_out_bits_uop_ctrl_fpu_typeTagIn; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_out_bits_uop_ctrl_fpu_sqrt; // @[Exu.scala 149:26]
  wire [2:0] fuInReady_buffer_io_out_bits_uop_ctrl_fpu_rm; // @[Exu.scala 149:26]
  wire [5:0] fuInReady_buffer_io_out_bits_uop_pdest; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_out_bits_uop_robIdx_flag; // @[Exu.scala 149:26]
  wire [4:0] fuInReady_buffer_io_out_bits_uop_robIdx_value; // @[Exu.scala 149:26]
  wire  fuInReady_buffer_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 149:26]
  wire [3:0] fuInReady_buffer_io_out_bits_uop_lqIdx_value; // @[Exu.scala 149:26]
  wire  arbSel_arb_io_in_0_ready; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_0_valid; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_0_bits_uop_ctrl_rfWen; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_0_bits_uop_ctrl_fpWen; // @[Exu.scala 174:25]
  wire [5:0] arbSel_arb_io_in_0_bits_uop_pdest; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_0_bits_uop_robIdx_flag; // @[Exu.scala 174:25]
  wire [4:0] arbSel_arb_io_in_0_bits_uop_robIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_0_bits_uop_lqIdx_flag; // @[Exu.scala 174:25]
  wire [3:0] arbSel_arb_io_in_0_bits_uop_lqIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_ready; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_valid; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_ctrl_rfWen; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_ctrl_fpWen; // @[Exu.scala 174:25]
  wire [5:0] arbSel_arb_io_in_1_bits_uop_pdest; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_robIdx_flag; // @[Exu.scala 174:25]
  wire [4:0] arbSel_arb_io_in_1_bits_uop_robIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_1_bits_uop_lqIdx_flag; // @[Exu.scala 174:25]
  wire [3:0] arbSel_arb_io_in_1_bits_uop_lqIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_2_ready; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_2_valid; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_2_bits_uop_ctrl_rfWen; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_2_bits_uop_ctrl_fpWen; // @[Exu.scala 174:25]
  wire [5:0] arbSel_arb_io_in_2_bits_uop_pdest; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_2_bits_uop_robIdx_flag; // @[Exu.scala 174:25]
  wire [4:0] arbSel_arb_io_in_2_bits_uop_robIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_in_2_bits_uop_lqIdx_flag; // @[Exu.scala 174:25]
  wire [3:0] arbSel_arb_io_in_2_bits_uop_lqIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_ready; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_valid; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 174:25]
  wire [5:0] arbSel_arb_io_out_bits_uop_pdest; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_robIdx_flag; // @[Exu.scala 174:25]
  wire [4:0] arbSel_arb_io_out_bits_uop_robIdx_value; // @[Exu.scala 174:25]
  wire  arbSel_arb_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 174:25]
  wire [3:0] arbSel_arb_io_out_bits_uop_lqIdx_value; // @[Exu.scala 174:25]
  wire  fuSel_1 = io_fromFp_bits_uop_ctrl_fpu_fpWen & ~io_fromFp_bits_uop_ctrl_fpu_div & ~
    io_fromFp_bits_uop_ctrl_fpu_sqrt; // @[package.scala 591:29]
  wire  fuSel_2 = io_fromFp_bits_uop_ctrl_fpu_div | io_fromFp_bits_uop_ctrl_fpu_sqrt; // @[package.scala 596:14]
  reg  arbSelReg_0; // @[Exu.scala 196:37]
  reg  arbSelReg_1; // @[Exu.scala 196:37]
  reg  arbSelReg_2; // @[Exu.scala 196:37]
  wire [63:0] _dataReg_T = arbSelReg_0 ? f2i_io_out_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _dataReg_T_1 = arbSelReg_1 ? f2f_io_out_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _dataReg_T_2 = arbSelReg_2 ? fdivSqrt_io_out_bits_data : 64'h0; // @[Mux.scala 27:73]
  wire [63:0] _dataReg_T_3 = _dataReg_T | _dataReg_T_1; // @[Mux.scala 27:73]
  wire  _io_fromFp_ready_T_1 = f2i_io_in_ready & io_fromFp_bits_uop_ctrl_rfWen; // @[Exu.scala 224:29]
  wire  _io_fromFp_ready_T_2 = f2f_io_in_ready & fuSel_1; // @[Exu.scala 224:29]
  wire  _io_fromFp_ready_T_3 = fuInReady_buffer_io_in_ready & fuSel_2; // @[Exu.scala 224:29]
  wire [2:0] _io_fromFp_ready_T_4 = {_io_fromFp_ready_T_1,_io_fromFp_ready_T_2,_io_fromFp_ready_T_3}; // @[Cat.scala 31:58]
  wire  _io_fromFp_ready_T_5 = |_io_fromFp_ready_T_4; // @[Exu.scala 224:42]
  wire [4:0] _io_out_bits_fflags_T = arbSelReg_0 ? f2i_fflags : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_fflags_T_1 = arbSelReg_1 ? f2f_fflags : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_fflags_T_2 = arbSelReg_2 ? fdivSqrt_fflags : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_fflags_T_3 = _io_out_bits_fflags_T | _io_out_bits_fflags_T_1; // @[Mux.scala 27:73]
  FPToInt_2 f2i ( // @[Exu.scala 129:21]
    .clock(f2i_clock),
    .reset(f2i_reset),
    .io_in_ready(f2i_io_in_ready),
    .io_in_valid(f2i_io_in_valid),
    .io_in_bits_src_0(f2i_io_in_bits_src_0),
    .io_in_bits_src_1(f2i_io_in_bits_src_1),
    .io_in_bits_uop_ctrl_rfWen(f2i_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(f2i_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_ctrl_fpu_typeTagIn(f2i_io_in_bits_uop_ctrl_fpu_typeTagIn),
    .io_in_bits_uop_ctrl_fpu_wflags(f2i_io_in_bits_uop_ctrl_fpu_wflags),
    .io_in_bits_uop_ctrl_fpu_fcvt(f2i_io_in_bits_uop_ctrl_fpu_fcvt),
    .io_in_bits_uop_ctrl_fpu_typ(f2i_io_in_bits_uop_ctrl_fpu_typ),
    .io_in_bits_uop_ctrl_fpu_fmt(f2i_io_in_bits_uop_ctrl_fpu_fmt),
    .io_in_bits_uop_ctrl_fpu_rm(f2i_io_in_bits_uop_ctrl_fpu_rm),
    .io_in_bits_uop_pdest(f2i_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(f2i_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(f2i_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(f2i_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(f2i_io_in_bits_uop_lqIdx_value),
    .io_out_ready(f2i_io_out_ready),
    .io_out_valid(f2i_io_out_valid),
    .io_out_bits_data(f2i_io_out_bits_data),
    .io_out_bits_uop_ctrl_rfWen(f2i_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(f2i_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(f2i_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(f2i_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(f2i_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(f2i_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(f2i_io_out_bits_uop_lqIdx_value),
    .io_redirectIn_valid(f2i_io_redirectIn_valid),
    .io_redirectIn_bits_robIdx_flag(f2i_io_redirectIn_bits_robIdx_flag),
    .io_redirectIn_bits_robIdx_value(f2i_io_redirectIn_bits_robIdx_value),
    .io_redirectIn_bits_level(f2i_io_redirectIn_bits_level),
    .rm(f2i_rm),
    .fflags(f2i_fflags)
  );
  FPToFP_2 f2f ( // @[Exu.scala 129:21]
    .clock(f2f_clock),
    .reset(f2f_reset),
    .io_in_ready(f2f_io_in_ready),
    .io_in_valid(f2f_io_in_valid),
    .io_in_bits_src_0(f2f_io_in_bits_src_0),
    .io_in_bits_src_1(f2f_io_in_bits_src_1),
    .io_in_bits_uop_ctrl_rfWen(f2f_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(f2f_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_ctrl_fpu_typeTagIn(f2f_io_in_bits_uop_ctrl_fpu_typeTagIn),
    .io_in_bits_uop_ctrl_fpu_typeTagOut(f2f_io_in_bits_uop_ctrl_fpu_typeTagOut),
    .io_in_bits_uop_ctrl_fpu_wflags(f2f_io_in_bits_uop_ctrl_fpu_wflags),
    .io_in_bits_uop_ctrl_fpu_fcvt(f2f_io_in_bits_uop_ctrl_fpu_fcvt),
    .io_in_bits_uop_ctrl_fpu_rm(f2f_io_in_bits_uop_ctrl_fpu_rm),
    .io_in_bits_uop_pdest(f2f_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(f2f_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(f2f_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(f2f_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(f2f_io_in_bits_uop_lqIdx_value),
    .io_out_ready(f2f_io_out_ready),
    .io_out_valid(f2f_io_out_valid),
    .io_out_bits_data(f2f_io_out_bits_data),
    .io_out_bits_uop_ctrl_rfWen(f2f_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(f2f_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(f2f_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(f2f_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(f2f_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(f2f_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(f2f_io_out_bits_uop_lqIdx_value),
    .io_redirectIn_valid(f2f_io_redirectIn_valid),
    .io_redirectIn_bits_robIdx_flag(f2f_io_redirectIn_bits_robIdx_flag),
    .io_redirectIn_bits_robIdx_value(f2f_io_redirectIn_bits_robIdx_value),
    .io_redirectIn_bits_level(f2f_io_redirectIn_bits_level),
    .rm(f2f_rm),
    .fflags(f2f_fflags)
  );
  FDivSqrt fdivSqrt ( // @[Exu.scala 129:21]
    .clock(fdivSqrt_clock),
    .reset(fdivSqrt_reset),
    .io_in_ready(fdivSqrt_io_in_ready),
    .io_in_valid(fdivSqrt_io_in_valid),
    .io_in_bits_src_0(fdivSqrt_io_in_bits_src_0),
    .io_in_bits_src_1(fdivSqrt_io_in_bits_src_1),
    .io_in_bits_uop_ctrl_rfWen(fdivSqrt_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(fdivSqrt_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_ctrl_fpu_typeTagIn(fdivSqrt_io_in_bits_uop_ctrl_fpu_typeTagIn),
    .io_in_bits_uop_ctrl_fpu_sqrt(fdivSqrt_io_in_bits_uop_ctrl_fpu_sqrt),
    .io_in_bits_uop_ctrl_fpu_rm(fdivSqrt_io_in_bits_uop_ctrl_fpu_rm),
    .io_in_bits_uop_pdest(fdivSqrt_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(fdivSqrt_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(fdivSqrt_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(fdivSqrt_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(fdivSqrt_io_in_bits_uop_lqIdx_value),
    .io_out_ready(fdivSqrt_io_out_ready),
    .io_out_valid(fdivSqrt_io_out_valid),
    .io_out_bits_data(fdivSqrt_io_out_bits_data),
    .io_out_bits_uop_ctrl_rfWen(fdivSqrt_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(fdivSqrt_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(fdivSqrt_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(fdivSqrt_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(fdivSqrt_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(fdivSqrt_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(fdivSqrt_io_out_bits_uop_lqIdx_value),
    .io_redirectIn_valid(fdivSqrt_io_redirectIn_valid),
    .io_redirectIn_bits_robIdx_flag(fdivSqrt_io_redirectIn_bits_robIdx_flag),
    .io_redirectIn_bits_robIdx_value(fdivSqrt_io_redirectIn_bits_robIdx_value),
    .io_redirectIn_bits_level(fdivSqrt_io_redirectIn_bits_level),
    .rm(fdivSqrt_rm),
    .fflags(fdivSqrt_fflags)
  );
  InputBuffer_1 fuInReady_buffer ( // @[Exu.scala 149:26]
    .clock(fuInReady_buffer_clock),
    .reset(fuInReady_buffer_reset),
    .io_redirect_valid(fuInReady_buffer_io_redirect_valid),
    .io_redirect_bits_robIdx_flag(fuInReady_buffer_io_redirect_bits_robIdx_flag),
    .io_redirect_bits_robIdx_value(fuInReady_buffer_io_redirect_bits_robIdx_value),
    .io_redirect_bits_level(fuInReady_buffer_io_redirect_bits_level),
    .io_in_ready(fuInReady_buffer_io_in_ready),
    .io_in_valid(fuInReady_buffer_io_in_valid),
    .io_in_bits_src_0(fuInReady_buffer_io_in_bits_src_0),
    .io_in_bits_src_1(fuInReady_buffer_io_in_bits_src_1),
    .io_in_bits_uop_ctrl_rfWen(fuInReady_buffer_io_in_bits_uop_ctrl_rfWen),
    .io_in_bits_uop_ctrl_fpWen(fuInReady_buffer_io_in_bits_uop_ctrl_fpWen),
    .io_in_bits_uop_ctrl_fpu_typeTagIn(fuInReady_buffer_io_in_bits_uop_ctrl_fpu_typeTagIn),
    .io_in_bits_uop_ctrl_fpu_sqrt(fuInReady_buffer_io_in_bits_uop_ctrl_fpu_sqrt),
    .io_in_bits_uop_ctrl_fpu_rm(fuInReady_buffer_io_in_bits_uop_ctrl_fpu_rm),
    .io_in_bits_uop_pdest(fuInReady_buffer_io_in_bits_uop_pdest),
    .io_in_bits_uop_robIdx_flag(fuInReady_buffer_io_in_bits_uop_robIdx_flag),
    .io_in_bits_uop_robIdx_value(fuInReady_buffer_io_in_bits_uop_robIdx_value),
    .io_in_bits_uop_lqIdx_flag(fuInReady_buffer_io_in_bits_uop_lqIdx_flag),
    .io_in_bits_uop_lqIdx_value(fuInReady_buffer_io_in_bits_uop_lqIdx_value),
    .io_out_ready(fuInReady_buffer_io_out_ready),
    .io_out_valid(fuInReady_buffer_io_out_valid),
    .io_out_bits_src_0(fuInReady_buffer_io_out_bits_src_0),
    .io_out_bits_src_1(fuInReady_buffer_io_out_bits_src_1),
    .io_out_bits_uop_ctrl_rfWen(fuInReady_buffer_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(fuInReady_buffer_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_ctrl_fpu_typeTagIn(fuInReady_buffer_io_out_bits_uop_ctrl_fpu_typeTagIn),
    .io_out_bits_uop_ctrl_fpu_sqrt(fuInReady_buffer_io_out_bits_uop_ctrl_fpu_sqrt),
    .io_out_bits_uop_ctrl_fpu_rm(fuInReady_buffer_io_out_bits_uop_ctrl_fpu_rm),
    .io_out_bits_uop_pdest(fuInReady_buffer_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(fuInReady_buffer_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(fuInReady_buffer_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(fuInReady_buffer_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(fuInReady_buffer_io_out_bits_uop_lqIdx_value)
  );
  Arbiter_9 arbSel_arb ( // @[Exu.scala 174:25]
    .io_in_0_ready(arbSel_arb_io_in_0_ready),
    .io_in_0_valid(arbSel_arb_io_in_0_valid),
    .io_in_0_bits_uop_ctrl_rfWen(arbSel_arb_io_in_0_bits_uop_ctrl_rfWen),
    .io_in_0_bits_uop_ctrl_fpWen(arbSel_arb_io_in_0_bits_uop_ctrl_fpWen),
    .io_in_0_bits_uop_pdest(arbSel_arb_io_in_0_bits_uop_pdest),
    .io_in_0_bits_uop_robIdx_flag(arbSel_arb_io_in_0_bits_uop_robIdx_flag),
    .io_in_0_bits_uop_robIdx_value(arbSel_arb_io_in_0_bits_uop_robIdx_value),
    .io_in_0_bits_uop_lqIdx_flag(arbSel_arb_io_in_0_bits_uop_lqIdx_flag),
    .io_in_0_bits_uop_lqIdx_value(arbSel_arb_io_in_0_bits_uop_lqIdx_value),
    .io_in_1_ready(arbSel_arb_io_in_1_ready),
    .io_in_1_valid(arbSel_arb_io_in_1_valid),
    .io_in_1_bits_uop_ctrl_rfWen(arbSel_arb_io_in_1_bits_uop_ctrl_rfWen),
    .io_in_1_bits_uop_ctrl_fpWen(arbSel_arb_io_in_1_bits_uop_ctrl_fpWen),
    .io_in_1_bits_uop_pdest(arbSel_arb_io_in_1_bits_uop_pdest),
    .io_in_1_bits_uop_robIdx_flag(arbSel_arb_io_in_1_bits_uop_robIdx_flag),
    .io_in_1_bits_uop_robIdx_value(arbSel_arb_io_in_1_bits_uop_robIdx_value),
    .io_in_1_bits_uop_lqIdx_flag(arbSel_arb_io_in_1_bits_uop_lqIdx_flag),
    .io_in_1_bits_uop_lqIdx_value(arbSel_arb_io_in_1_bits_uop_lqIdx_value),
    .io_in_2_ready(arbSel_arb_io_in_2_ready),
    .io_in_2_valid(arbSel_arb_io_in_2_valid),
    .io_in_2_bits_uop_ctrl_rfWen(arbSel_arb_io_in_2_bits_uop_ctrl_rfWen),
    .io_in_2_bits_uop_ctrl_fpWen(arbSel_arb_io_in_2_bits_uop_ctrl_fpWen),
    .io_in_2_bits_uop_pdest(arbSel_arb_io_in_2_bits_uop_pdest),
    .io_in_2_bits_uop_robIdx_flag(arbSel_arb_io_in_2_bits_uop_robIdx_flag),
    .io_in_2_bits_uop_robIdx_value(arbSel_arb_io_in_2_bits_uop_robIdx_value),
    .io_in_2_bits_uop_lqIdx_flag(arbSel_arb_io_in_2_bits_uop_lqIdx_flag),
    .io_in_2_bits_uop_lqIdx_value(arbSel_arb_io_in_2_bits_uop_lqIdx_value),
    .io_out_ready(arbSel_arb_io_out_ready),
    .io_out_valid(arbSel_arb_io_out_valid),
    .io_out_bits_uop_ctrl_rfWen(arbSel_arb_io_out_bits_uop_ctrl_rfWen),
    .io_out_bits_uop_ctrl_fpWen(arbSel_arb_io_out_bits_uop_ctrl_fpWen),
    .io_out_bits_uop_pdest(arbSel_arb_io_out_bits_uop_pdest),
    .io_out_bits_uop_robIdx_flag(arbSel_arb_io_out_bits_uop_robIdx_flag),
    .io_out_bits_uop_robIdx_value(arbSel_arb_io_out_bits_uop_robIdx_value),
    .io_out_bits_uop_lqIdx_flag(arbSel_arb_io_out_bits_uop_lqIdx_flag),
    .io_out_bits_uop_lqIdx_value(arbSel_arb_io_out_bits_uop_lqIdx_value)
  );
  assign io_fromFp_ready = ~io_fromFp_valid | _io_fromFp_ready_T_5; // @[Exu.scala 240:41]
  assign io_out_valid = arbSel_arb_io_out_valid; // @[Exu.scala 182:20]
  assign io_out_bits_uop_ctrl_rfWen = arbSel_arb_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 182:20]
  assign io_out_bits_uop_ctrl_fpWen = arbSel_arb_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 182:20]
  assign io_out_bits_uop_pdest = arbSel_arb_io_out_bits_uop_pdest; // @[Exu.scala 182:20]
  assign io_out_bits_uop_robIdx_flag = arbSel_arb_io_out_bits_uop_robIdx_flag; // @[Exu.scala 182:20]
  assign io_out_bits_uop_robIdx_value = arbSel_arb_io_out_bits_uop_robIdx_value; // @[Exu.scala 182:20]
  assign io_out_bits_uop_lqIdx_flag = arbSel_arb_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 182:20]
  assign io_out_bits_uop_lqIdx_value = arbSel_arb_io_out_bits_uop_lqIdx_value; // @[Exu.scala 182:20]
  assign io_out_bits_data = _dataReg_T_3 | _dataReg_T_2; // @[Mux.scala 27:73]
  assign io_out_bits_fflags = _io_out_bits_fflags_T_3 | _io_out_bits_fflags_T_2; // @[Mux.scala 27:73]
  assign f2i_clock = clock;
  assign f2i_reset = reset;
  assign f2i_io_in_valid = io_fromFp_valid & io_fromFp_bits_uop_ctrl_rfWen; // @[Exu.scala 158:34]
  assign f2i_io_in_bits_src_0 = io_fromFp_bits_src_0; // @[Exu.scala 160:25]
  assign f2i_io_in_bits_src_1 = io_fromFp_bits_src_1; // @[Exu.scala 160:25]
  assign f2i_io_in_bits_uop_ctrl_rfWen = io_fromFp_bits_uop_ctrl_rfWen; // @[Exu.scala 159:25]
  assign f2i_io_in_bits_uop_ctrl_fpWen = io_fromFp_bits_uop_ctrl_fpWen; // @[Exu.scala 159:25]
  assign f2i_io_in_bits_uop_ctrl_fpu_typeTagIn = io_fromFp_bits_uop_ctrl_fpu_typeTagIn; // @[Exu.scala 159:25]
  assign f2i_io_in_bits_uop_ctrl_fpu_wflags = io_fromFp_bits_uop_ctrl_fpu_wflags; // @[Exu.scala 159:25]
  assign f2i_io_in_bits_uop_ctrl_fpu_fcvt = io_fromFp_bits_uop_ctrl_fpu_fcvt; // @[Exu.scala 159:25]
  assign f2i_io_in_bits_uop_ctrl_fpu_typ = io_fromFp_bits_uop_ctrl_fpu_typ; // @[Exu.scala 159:25]
  assign f2i_io_in_bits_uop_ctrl_fpu_fmt = io_fromFp_bits_uop_ctrl_fpu_fmt; // @[Exu.scala 159:25]
  assign f2i_io_in_bits_uop_ctrl_fpu_rm = io_fromFp_bits_uop_ctrl_fpu_rm; // @[Exu.scala 159:25]
  assign f2i_io_in_bits_uop_pdest = io_fromFp_bits_uop_pdest; // @[Exu.scala 159:25]
  assign f2i_io_in_bits_uop_robIdx_flag = io_fromFp_bits_uop_robIdx_flag; // @[Exu.scala 159:25]
  assign f2i_io_in_bits_uop_robIdx_value = io_fromFp_bits_uop_robIdx_value; // @[Exu.scala 159:25]
  assign f2i_io_in_bits_uop_lqIdx_flag = io_fromFp_bits_uop_lqIdx_flag; // @[Exu.scala 159:25]
  assign f2i_io_in_bits_uop_lqIdx_value = io_fromFp_bits_uop_lqIdx_value; // @[Exu.scala 159:25]
  assign f2i_io_out_ready = arbSel_arb_io_in_0_ready; // @[Exu.scala 176:19]
  assign f2i_io_redirectIn_valid = io_redirect_valid; // @[Exu.scala 146:22]
  assign f2i_io_redirectIn_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Exu.scala 146:22]
  assign f2i_io_redirectIn_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Exu.scala 146:22]
  assign f2i_io_redirectIn_bits_level = io_redirect_bits_level; // @[Exu.scala 146:22]
  assign f2i_rm = f2i_io_in_bits_uop_ctrl_fpu_rm != 3'h7 ? f2i_io_in_bits_uop_ctrl_fpu_rm : frm; // @[ExeUnit.scala 82:20]
  assign f2f_clock = clock;
  assign f2f_reset = reset;
  assign f2f_io_in_valid = io_fromFp_valid & fuSel_1; // @[Exu.scala 158:34]
  assign f2f_io_in_bits_src_0 = io_fromFp_bits_src_0; // @[Exu.scala 160:25]
  assign f2f_io_in_bits_src_1 = io_fromFp_bits_src_1; // @[Exu.scala 160:25]
  assign f2f_io_in_bits_uop_ctrl_rfWen = io_fromFp_bits_uop_ctrl_rfWen; // @[Exu.scala 159:25]
  assign f2f_io_in_bits_uop_ctrl_fpWen = io_fromFp_bits_uop_ctrl_fpWen; // @[Exu.scala 159:25]
  assign f2f_io_in_bits_uop_ctrl_fpu_typeTagIn = io_fromFp_bits_uop_ctrl_fpu_typeTagIn; // @[Exu.scala 159:25]
  assign f2f_io_in_bits_uop_ctrl_fpu_typeTagOut = io_fromFp_bits_uop_ctrl_fpu_typeTagOut; // @[Exu.scala 159:25]
  assign f2f_io_in_bits_uop_ctrl_fpu_wflags = io_fromFp_bits_uop_ctrl_fpu_wflags; // @[Exu.scala 159:25]
  assign f2f_io_in_bits_uop_ctrl_fpu_fcvt = io_fromFp_bits_uop_ctrl_fpu_fcvt; // @[Exu.scala 159:25]
  assign f2f_io_in_bits_uop_ctrl_fpu_rm = io_fromFp_bits_uop_ctrl_fpu_rm; // @[Exu.scala 159:25]
  assign f2f_io_in_bits_uop_pdest = io_fromFp_bits_uop_pdest; // @[Exu.scala 159:25]
  assign f2f_io_in_bits_uop_robIdx_flag = io_fromFp_bits_uop_robIdx_flag; // @[Exu.scala 159:25]
  assign f2f_io_in_bits_uop_robIdx_value = io_fromFp_bits_uop_robIdx_value; // @[Exu.scala 159:25]
  assign f2f_io_in_bits_uop_lqIdx_flag = io_fromFp_bits_uop_lqIdx_flag; // @[Exu.scala 159:25]
  assign f2f_io_in_bits_uop_lqIdx_value = io_fromFp_bits_uop_lqIdx_value; // @[Exu.scala 159:25]
  assign f2f_io_out_ready = arbSel_arb_io_in_1_ready; // @[Exu.scala 176:19]
  assign f2f_io_redirectIn_valid = io_redirect_valid; // @[Exu.scala 146:22]
  assign f2f_io_redirectIn_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Exu.scala 146:22]
  assign f2f_io_redirectIn_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Exu.scala 146:22]
  assign f2f_io_redirectIn_bits_level = io_redirect_bits_level; // @[Exu.scala 146:22]
  assign f2f_rm = f2f_io_in_bits_uop_ctrl_fpu_rm != 3'h7 ? f2f_io_in_bits_uop_ctrl_fpu_rm : frm; // @[ExeUnit.scala 82:20]
  assign fdivSqrt_clock = clock;
  assign fdivSqrt_reset = reset;
  assign fdivSqrt_io_in_valid = fuInReady_buffer_io_out_valid; // @[Exu.scala 154:21]
  assign fdivSqrt_io_in_bits_src_0 = fuInReady_buffer_io_out_bits_src_0; // @[Exu.scala 154:21]
  assign fdivSqrt_io_in_bits_src_1 = fuInReady_buffer_io_out_bits_src_1; // @[Exu.scala 154:21]
  assign fdivSqrt_io_in_bits_uop_ctrl_rfWen = fuInReady_buffer_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 154:21]
  assign fdivSqrt_io_in_bits_uop_ctrl_fpWen = fuInReady_buffer_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 154:21]
  assign fdivSqrt_io_in_bits_uop_ctrl_fpu_typeTagIn = fuInReady_buffer_io_out_bits_uop_ctrl_fpu_typeTagIn; // @[Exu.scala 154:21]
  assign fdivSqrt_io_in_bits_uop_ctrl_fpu_sqrt = fuInReady_buffer_io_out_bits_uop_ctrl_fpu_sqrt; // @[Exu.scala 154:21]
  assign fdivSqrt_io_in_bits_uop_ctrl_fpu_rm = fuInReady_buffer_io_out_bits_uop_ctrl_fpu_rm; // @[Exu.scala 154:21]
  assign fdivSqrt_io_in_bits_uop_pdest = fuInReady_buffer_io_out_bits_uop_pdest; // @[Exu.scala 154:21]
  assign fdivSqrt_io_in_bits_uop_robIdx_flag = fuInReady_buffer_io_out_bits_uop_robIdx_flag; // @[Exu.scala 154:21]
  assign fdivSqrt_io_in_bits_uop_robIdx_value = fuInReady_buffer_io_out_bits_uop_robIdx_value; // @[Exu.scala 154:21]
  assign fdivSqrt_io_in_bits_uop_lqIdx_flag = fuInReady_buffer_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 154:21]
  assign fdivSqrt_io_in_bits_uop_lqIdx_value = fuInReady_buffer_io_out_bits_uop_lqIdx_value; // @[Exu.scala 154:21]
  assign fdivSqrt_io_out_ready = arbSel_arb_io_in_2_ready; // @[Exu.scala 176:19]
  assign fdivSqrt_io_redirectIn_valid = io_redirect_valid; // @[Exu.scala 146:22]
  assign fdivSqrt_io_redirectIn_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Exu.scala 146:22]
  assign fdivSqrt_io_redirectIn_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Exu.scala 146:22]
  assign fdivSqrt_io_redirectIn_bits_level = io_redirect_bits_level; // @[Exu.scala 146:22]
  assign fdivSqrt_rm = fdivSqrt_io_in_bits_uop_ctrl_fpu_rm != 3'h7 ? fdivSqrt_io_in_bits_uop_ctrl_fpu_rm : frm; // @[ExeUnit.scala 82:20]
  assign fuInReady_buffer_clock = clock;
  assign fuInReady_buffer_reset = reset;
  assign fuInReady_buffer_io_redirect_valid = io_redirect_valid; // @[Exu.scala 150:26]
  assign fuInReady_buffer_io_redirect_bits_robIdx_flag = io_redirect_bits_robIdx_flag; // @[Exu.scala 150:26]
  assign fuInReady_buffer_io_redirect_bits_robIdx_value = io_redirect_bits_robIdx_value; // @[Exu.scala 150:26]
  assign fuInReady_buffer_io_redirect_bits_level = io_redirect_bits_level; // @[Exu.scala 150:26]
  assign fuInReady_buffer_io_in_valid = io_fromFp_valid & fuSel_2; // @[Exu.scala 151:38]
  assign fuInReady_buffer_io_in_bits_src_0 = io_fromFp_bits_src_0; // @[Exu.scala 153:29]
  assign fuInReady_buffer_io_in_bits_src_1 = io_fromFp_bits_src_1; // @[Exu.scala 153:29]
  assign fuInReady_buffer_io_in_bits_uop_ctrl_rfWen = io_fromFp_bits_uop_ctrl_rfWen; // @[Exu.scala 152:29]
  assign fuInReady_buffer_io_in_bits_uop_ctrl_fpWen = io_fromFp_bits_uop_ctrl_fpWen; // @[Exu.scala 152:29]
  assign fuInReady_buffer_io_in_bits_uop_ctrl_fpu_typeTagIn = io_fromFp_bits_uop_ctrl_fpu_typeTagIn; // @[Exu.scala 152:29]
  assign fuInReady_buffer_io_in_bits_uop_ctrl_fpu_sqrt = io_fromFp_bits_uop_ctrl_fpu_sqrt; // @[Exu.scala 152:29]
  assign fuInReady_buffer_io_in_bits_uop_ctrl_fpu_rm = io_fromFp_bits_uop_ctrl_fpu_rm; // @[Exu.scala 152:29]
  assign fuInReady_buffer_io_in_bits_uop_pdest = io_fromFp_bits_uop_pdest; // @[Exu.scala 152:29]
  assign fuInReady_buffer_io_in_bits_uop_robIdx_flag = io_fromFp_bits_uop_robIdx_flag; // @[Exu.scala 152:29]
  assign fuInReady_buffer_io_in_bits_uop_robIdx_value = io_fromFp_bits_uop_robIdx_value; // @[Exu.scala 152:29]
  assign fuInReady_buffer_io_in_bits_uop_lqIdx_flag = io_fromFp_bits_uop_lqIdx_flag; // @[Exu.scala 152:29]
  assign fuInReady_buffer_io_in_bits_uop_lqIdx_value = io_fromFp_bits_uop_lqIdx_value; // @[Exu.scala 152:29]
  assign fuInReady_buffer_io_out_ready = fdivSqrt_io_in_ready; // @[Exu.scala 154:21]
  assign arbSel_arb_io_in_0_valid = f2i_io_out_valid; // @[Exu.scala 177:19]
  assign arbSel_arb_io_in_0_bits_uop_ctrl_rfWen = f2i_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_ctrl_fpWen = f2i_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_pdest = f2i_io_out_bits_uop_pdest; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_robIdx_flag = f2i_io_out_bits_uop_robIdx_flag; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_robIdx_value = f2i_io_out_bits_uop_robIdx_value; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_lqIdx_flag = f2i_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_0_bits_uop_lqIdx_value = f2i_io_out_bits_uop_lqIdx_value; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_valid = f2f_io_out_valid; // @[Exu.scala 177:19]
  assign arbSel_arb_io_in_1_bits_uop_ctrl_rfWen = f2f_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_ctrl_fpWen = f2f_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_pdest = f2f_io_out_bits_uop_pdest; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_robIdx_flag = f2f_io_out_bits_uop_robIdx_flag; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_robIdx_value = f2f_io_out_bits_uop_robIdx_value; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_lqIdx_flag = f2f_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_1_bits_uop_lqIdx_value = f2f_io_out_bits_uop_lqIdx_value; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_valid = fdivSqrt_io_out_valid; // @[Exu.scala 177:19]
  assign arbSel_arb_io_in_2_bits_uop_ctrl_rfWen = fdivSqrt_io_out_bits_uop_ctrl_rfWen; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_ctrl_fpWen = fdivSqrt_io_out_bits_uop_ctrl_fpWen; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_pdest = fdivSqrt_io_out_bits_uop_pdest; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_robIdx_flag = fdivSqrt_io_out_bits_uop_robIdx_flag; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_robIdx_value = fdivSqrt_io_out_bits_uop_robIdx_value; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_lqIdx_flag = fdivSqrt_io_out_bits_uop_lqIdx_flag; // @[Exu.scala 179:22]
  assign arbSel_arb_io_in_2_bits_uop_lqIdx_value = fdivSqrt_io_out_bits_uop_lqIdx_value; // @[Exu.scala 179:22]
  assign arbSel_arb_io_out_ready = io_out_ready; // @[Exu.scala 182:20]
  always @(posedge clock) begin
    arbSelReg_0 <= f2i_io_out_ready & f2i_io_out_valid; // @[Decoupled.scala 50:35]
    arbSelReg_1 <= f2f_io_out_ready & f2f_io_out_valid; // @[Decoupled.scala 50:35]
    arbSelReg_2 <= fdivSqrt_io_out_ready & fdivSqrt_io_out_valid; // @[Decoupled.scala 50:35]
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
  arbSelReg_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  arbSelReg_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  arbSelReg_2 = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

