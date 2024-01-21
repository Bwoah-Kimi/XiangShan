module DebugModule(
  input          auto_debug_dmInner_dmInner_sb2tlOpt_out_a_ready,
  output         auto_debug_dmInner_dmInner_sb2tlOpt_out_a_valid,
  output [2:0]   auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_opcode,
  output [35:0]  auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_address,
  output [31:0]  auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_mask,
  output [255:0] auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_data,
  output         auto_debug_dmInner_dmInner_sb2tlOpt_out_d_ready,
  input          auto_debug_dmInner_dmInner_sb2tlOpt_out_d_valid,
  input          auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_denied,
  input  [255:0] auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_data,
  input          auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_corrupt,
  output         auto_debug_dmInner_dmInner_tl_in_a_ready,
  input          auto_debug_dmInner_dmInner_tl_in_a_valid,
  input  [2:0]   auto_debug_dmInner_dmInner_tl_in_a_bits_opcode,
  input  [1:0]   auto_debug_dmInner_dmInner_tl_in_a_bits_size,
  input  [2:0]   auto_debug_dmInner_dmInner_tl_in_a_bits_source,
  input  [29:0]  auto_debug_dmInner_dmInner_tl_in_a_bits_address,
  input  [7:0]   auto_debug_dmInner_dmInner_tl_in_a_bits_mask,
  input  [63:0]  auto_debug_dmInner_dmInner_tl_in_a_bits_data,
  input          auto_debug_dmInner_dmInner_tl_in_d_ready,
  output         auto_debug_dmInner_dmInner_tl_in_d_valid,
  output [2:0]   auto_debug_dmInner_dmInner_tl_in_d_bits_opcode,
  output [1:0]   auto_debug_dmInner_dmInner_tl_in_d_bits_size,
  output [2:0]   auto_debug_dmInner_dmInner_tl_in_d_bits_source,
  output [63:0]  auto_debug_dmInner_dmInner_tl_in_d_bits_data,
  output         auto_debug_dmOuter_dmOuter_int_out_0,
  input          io_resetCtrl_hartIsInReset_0,
  input          io_debugIO_clock,
  input          io_debugIO_reset,
  input          io_debugIO_systemjtag_jtag_TCK,
  input          io_debugIO_systemjtag_jtag_TMS,
  input          io_debugIO_systemjtag_jtag_TDI,
  output         io_debugIO_systemjtag_jtag_TDO_data,
  output         io_debugIO_systemjtag_jtag_TDO_driven,
  input          io_debugIO_systemjtag_reset,
  input  [10:0]  io_debugIO_systemjtag_mfr_id,
  input  [15:0]  io_debugIO_systemjtag_part_number,
  input  [3:0]   io_debugIO_systemjtag_version,
  output         io_debugIO_ndreset,
  output         io_debugIO_dmactive,
  input          io_debugIO_dmactiveAck,
  input          io_clock,
  input          io_reset
);
  wire  debug_auto_dmInner_dmInner_sb2tlOpt_out_a_ready; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_auto_dmInner_dmInner_sb2tlOpt_out_a_valid; // @[RocketDebugWrapper.scala 42:25]
  wire [2:0] debug_auto_dmInner_dmInner_sb2tlOpt_out_a_bits_opcode; // @[RocketDebugWrapper.scala 42:25]
  wire [35:0] debug_auto_dmInner_dmInner_sb2tlOpt_out_a_bits_address; // @[RocketDebugWrapper.scala 42:25]
  wire [31:0] debug_auto_dmInner_dmInner_sb2tlOpt_out_a_bits_mask; // @[RocketDebugWrapper.scala 42:25]
  wire [255:0] debug_auto_dmInner_dmInner_sb2tlOpt_out_a_bits_data; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_auto_dmInner_dmInner_sb2tlOpt_out_d_ready; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_auto_dmInner_dmInner_sb2tlOpt_out_d_valid; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_auto_dmInner_dmInner_sb2tlOpt_out_d_bits_denied; // @[RocketDebugWrapper.scala 42:25]
  wire [255:0] debug_auto_dmInner_dmInner_sb2tlOpt_out_d_bits_data; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_auto_dmInner_dmInner_sb2tlOpt_out_d_bits_corrupt; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_auto_dmInner_dmInner_tl_in_a_ready; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_auto_dmInner_dmInner_tl_in_a_valid; // @[RocketDebugWrapper.scala 42:25]
  wire [2:0] debug_auto_dmInner_dmInner_tl_in_a_bits_opcode; // @[RocketDebugWrapper.scala 42:25]
  wire [1:0] debug_auto_dmInner_dmInner_tl_in_a_bits_size; // @[RocketDebugWrapper.scala 42:25]
  wire [2:0] debug_auto_dmInner_dmInner_tl_in_a_bits_source; // @[RocketDebugWrapper.scala 42:25]
  wire [29:0] debug_auto_dmInner_dmInner_tl_in_a_bits_address; // @[RocketDebugWrapper.scala 42:25]
  wire [7:0] debug_auto_dmInner_dmInner_tl_in_a_bits_mask; // @[RocketDebugWrapper.scala 42:25]
  wire [63:0] debug_auto_dmInner_dmInner_tl_in_a_bits_data; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_auto_dmInner_dmInner_tl_in_d_ready; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_auto_dmInner_dmInner_tl_in_d_valid; // @[RocketDebugWrapper.scala 42:25]
  wire [2:0] debug_auto_dmInner_dmInner_tl_in_d_bits_opcode; // @[RocketDebugWrapper.scala 42:25]
  wire [1:0] debug_auto_dmInner_dmInner_tl_in_d_bits_size; // @[RocketDebugWrapper.scala 42:25]
  wire [2:0] debug_auto_dmInner_dmInner_tl_in_d_bits_source; // @[RocketDebugWrapper.scala 42:25]
  wire [63:0] debug_auto_dmInner_dmInner_tl_in_d_bits_data; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_auto_dmOuter_dmOuter_int_out_0; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_io_debug_clock; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_io_debug_reset; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_io_tl_clock; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_io_tl_reset; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_io_ctrl_ndreset; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_io_ctrl_dmactive; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_io_ctrl_dmactiveAck; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_io_dmi_dmi_req_ready; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_io_dmi_dmi_req_valid; // @[RocketDebugWrapper.scala 42:25]
  wire [6:0] debug_io_dmi_dmi_req_bits_addr; // @[RocketDebugWrapper.scala 42:25]
  wire [31:0] debug_io_dmi_dmi_req_bits_data; // @[RocketDebugWrapper.scala 42:25]
  wire [1:0] debug_io_dmi_dmi_req_bits_op; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_io_dmi_dmi_resp_ready; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_io_dmi_dmi_resp_valid; // @[RocketDebugWrapper.scala 42:25]
  wire [31:0] debug_io_dmi_dmi_resp_bits_data; // @[RocketDebugWrapper.scala 42:25]
  wire [1:0] debug_io_dmi_dmi_resp_bits_resp; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_io_dmi_dmiClock; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_io_dmi_dmiReset; // @[RocketDebugWrapper.scala 42:25]
  wire  debug_io_hartIsInReset_0; // @[RocketDebugWrapper.scala 42:25]
  wire  dtm_io_jtag_clock; // @[RocketDebugWrapper.scala 77:23]
  wire  dtm_io_jtag_reset; // @[RocketDebugWrapper.scala 77:23]
  wire  dtm_io_dmi_req_ready; // @[RocketDebugWrapper.scala 77:23]
  wire  dtm_io_dmi_req_valid; // @[RocketDebugWrapper.scala 77:23]
  wire [6:0] dtm_io_dmi_req_bits_addr; // @[RocketDebugWrapper.scala 77:23]
  wire [31:0] dtm_io_dmi_req_bits_data; // @[RocketDebugWrapper.scala 77:23]
  wire [1:0] dtm_io_dmi_req_bits_op; // @[RocketDebugWrapper.scala 77:23]
  wire  dtm_io_dmi_resp_ready; // @[RocketDebugWrapper.scala 77:23]
  wire  dtm_io_dmi_resp_valid; // @[RocketDebugWrapper.scala 77:23]
  wire [31:0] dtm_io_dmi_resp_bits_data; // @[RocketDebugWrapper.scala 77:23]
  wire [1:0] dtm_io_dmi_resp_bits_resp; // @[RocketDebugWrapper.scala 77:23]
  wire  dtm_io_jtag_TMS; // @[RocketDebugWrapper.scala 77:23]
  wire  dtm_io_jtag_TDI; // @[RocketDebugWrapper.scala 77:23]
  wire  dtm_io_jtag_TDO_data; // @[RocketDebugWrapper.scala 77:23]
  wire  dtm_io_jtag_TDO_driven; // @[RocketDebugWrapper.scala 77:23]
  wire [10:0] dtm_io_jtag_mfr_id; // @[RocketDebugWrapper.scala 77:23]
  wire [15:0] dtm_io_jtag_part_number; // @[RocketDebugWrapper.scala 77:23]
  wire [3:0] dtm_io_jtag_version; // @[RocketDebugWrapper.scala 77:23]
  TLDebugModule debug ( // @[RocketDebugWrapper.scala 42:25]
    .auto_dmInner_dmInner_sb2tlOpt_out_a_ready(debug_auto_dmInner_dmInner_sb2tlOpt_out_a_ready),
    .auto_dmInner_dmInner_sb2tlOpt_out_a_valid(debug_auto_dmInner_dmInner_sb2tlOpt_out_a_valid),
    .auto_dmInner_dmInner_sb2tlOpt_out_a_bits_opcode(debug_auto_dmInner_dmInner_sb2tlOpt_out_a_bits_opcode),
    .auto_dmInner_dmInner_sb2tlOpt_out_a_bits_address(debug_auto_dmInner_dmInner_sb2tlOpt_out_a_bits_address),
    .auto_dmInner_dmInner_sb2tlOpt_out_a_bits_mask(debug_auto_dmInner_dmInner_sb2tlOpt_out_a_bits_mask),
    .auto_dmInner_dmInner_sb2tlOpt_out_a_bits_data(debug_auto_dmInner_dmInner_sb2tlOpt_out_a_bits_data),
    .auto_dmInner_dmInner_sb2tlOpt_out_d_ready(debug_auto_dmInner_dmInner_sb2tlOpt_out_d_ready),
    .auto_dmInner_dmInner_sb2tlOpt_out_d_valid(debug_auto_dmInner_dmInner_sb2tlOpt_out_d_valid),
    .auto_dmInner_dmInner_sb2tlOpt_out_d_bits_denied(debug_auto_dmInner_dmInner_sb2tlOpt_out_d_bits_denied),
    .auto_dmInner_dmInner_sb2tlOpt_out_d_bits_data(debug_auto_dmInner_dmInner_sb2tlOpt_out_d_bits_data),
    .auto_dmInner_dmInner_sb2tlOpt_out_d_bits_corrupt(debug_auto_dmInner_dmInner_sb2tlOpt_out_d_bits_corrupt),
    .auto_dmInner_dmInner_tl_in_a_ready(debug_auto_dmInner_dmInner_tl_in_a_ready),
    .auto_dmInner_dmInner_tl_in_a_valid(debug_auto_dmInner_dmInner_tl_in_a_valid),
    .auto_dmInner_dmInner_tl_in_a_bits_opcode(debug_auto_dmInner_dmInner_tl_in_a_bits_opcode),
    .auto_dmInner_dmInner_tl_in_a_bits_size(debug_auto_dmInner_dmInner_tl_in_a_bits_size),
    .auto_dmInner_dmInner_tl_in_a_bits_source(debug_auto_dmInner_dmInner_tl_in_a_bits_source),
    .auto_dmInner_dmInner_tl_in_a_bits_address(debug_auto_dmInner_dmInner_tl_in_a_bits_address),
    .auto_dmInner_dmInner_tl_in_a_bits_mask(debug_auto_dmInner_dmInner_tl_in_a_bits_mask),
    .auto_dmInner_dmInner_tl_in_a_bits_data(debug_auto_dmInner_dmInner_tl_in_a_bits_data),
    .auto_dmInner_dmInner_tl_in_d_ready(debug_auto_dmInner_dmInner_tl_in_d_ready),
    .auto_dmInner_dmInner_tl_in_d_valid(debug_auto_dmInner_dmInner_tl_in_d_valid),
    .auto_dmInner_dmInner_tl_in_d_bits_opcode(debug_auto_dmInner_dmInner_tl_in_d_bits_opcode),
    .auto_dmInner_dmInner_tl_in_d_bits_size(debug_auto_dmInner_dmInner_tl_in_d_bits_size),
    .auto_dmInner_dmInner_tl_in_d_bits_source(debug_auto_dmInner_dmInner_tl_in_d_bits_source),
    .auto_dmInner_dmInner_tl_in_d_bits_data(debug_auto_dmInner_dmInner_tl_in_d_bits_data),
    .auto_dmOuter_dmOuter_int_out_0(debug_auto_dmOuter_dmOuter_int_out_0),
    .io_debug_clock(debug_io_debug_clock),
    .io_debug_reset(debug_io_debug_reset),
    .io_tl_clock(debug_io_tl_clock),
    .io_tl_reset(debug_io_tl_reset),
    .io_ctrl_ndreset(debug_io_ctrl_ndreset),
    .io_ctrl_dmactive(debug_io_ctrl_dmactive),
    .io_ctrl_dmactiveAck(debug_io_ctrl_dmactiveAck),
    .io_dmi_dmi_req_ready(debug_io_dmi_dmi_req_ready),
    .io_dmi_dmi_req_valid(debug_io_dmi_dmi_req_valid),
    .io_dmi_dmi_req_bits_addr(debug_io_dmi_dmi_req_bits_addr),
    .io_dmi_dmi_req_bits_data(debug_io_dmi_dmi_req_bits_data),
    .io_dmi_dmi_req_bits_op(debug_io_dmi_dmi_req_bits_op),
    .io_dmi_dmi_resp_ready(debug_io_dmi_dmi_resp_ready),
    .io_dmi_dmi_resp_valid(debug_io_dmi_dmi_resp_valid),
    .io_dmi_dmi_resp_bits_data(debug_io_dmi_dmi_resp_bits_data),
    .io_dmi_dmi_resp_bits_resp(debug_io_dmi_dmi_resp_bits_resp),
    .io_dmi_dmiClock(debug_io_dmi_dmiClock),
    .io_dmi_dmiReset(debug_io_dmi_dmiReset),
    .io_hartIsInReset_0(debug_io_hartIsInReset_0)
  );
  DebugTransportModuleJTAG dtm ( // @[RocketDebugWrapper.scala 77:23]
    .io_jtag_clock(dtm_io_jtag_clock),
    .io_jtag_reset(dtm_io_jtag_reset),
    .io_dmi_req_ready(dtm_io_dmi_req_ready),
    .io_dmi_req_valid(dtm_io_dmi_req_valid),
    .io_dmi_req_bits_addr(dtm_io_dmi_req_bits_addr),
    .io_dmi_req_bits_data(dtm_io_dmi_req_bits_data),
    .io_dmi_req_bits_op(dtm_io_dmi_req_bits_op),
    .io_dmi_resp_ready(dtm_io_dmi_resp_ready),
    .io_dmi_resp_valid(dtm_io_dmi_resp_valid),
    .io_dmi_resp_bits_data(dtm_io_dmi_resp_bits_data),
    .io_dmi_resp_bits_resp(dtm_io_dmi_resp_bits_resp),
    .io_jtag_TMS(dtm_io_jtag_TMS),
    .io_jtag_TDI(dtm_io_jtag_TDI),
    .io_jtag_TDO_data(dtm_io_jtag_TDO_data),
    .io_jtag_TDO_driven(dtm_io_jtag_TDO_driven),
    .io_jtag_mfr_id(dtm_io_jtag_mfr_id),
    .io_jtag_part_number(dtm_io_jtag_part_number),
    .io_jtag_version(dtm_io_jtag_version)
  );
  assign auto_debug_dmInner_dmInner_sb2tlOpt_out_a_valid = debug_auto_dmInner_dmInner_sb2tlOpt_out_a_valid; // @[LazyModule.scala 311:12]
  assign auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_opcode = debug_auto_dmInner_dmInner_sb2tlOpt_out_a_bits_opcode; // @[LazyModule.scala 311:12]
  assign auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_address = debug_auto_dmInner_dmInner_sb2tlOpt_out_a_bits_address
    ; // @[LazyModule.scala 311:12]
  assign auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_mask = debug_auto_dmInner_dmInner_sb2tlOpt_out_a_bits_mask; // @[LazyModule.scala 311:12]
  assign auto_debug_dmInner_dmInner_sb2tlOpt_out_a_bits_data = debug_auto_dmInner_dmInner_sb2tlOpt_out_a_bits_data; // @[LazyModule.scala 311:12]
  assign auto_debug_dmInner_dmInner_sb2tlOpt_out_d_ready = debug_auto_dmInner_dmInner_sb2tlOpt_out_d_ready; // @[LazyModule.scala 311:12]
  assign auto_debug_dmInner_dmInner_tl_in_a_ready = debug_auto_dmInner_dmInner_tl_in_a_ready; // @[LazyModule.scala 309:16]
  assign auto_debug_dmInner_dmInner_tl_in_d_valid = debug_auto_dmInner_dmInner_tl_in_d_valid; // @[LazyModule.scala 309:16]
  assign auto_debug_dmInner_dmInner_tl_in_d_bits_opcode = debug_auto_dmInner_dmInner_tl_in_d_bits_opcode; // @[LazyModule.scala 309:16]
  assign auto_debug_dmInner_dmInner_tl_in_d_bits_size = debug_auto_dmInner_dmInner_tl_in_d_bits_size; // @[LazyModule.scala 309:16]
  assign auto_debug_dmInner_dmInner_tl_in_d_bits_source = debug_auto_dmInner_dmInner_tl_in_d_bits_source; // @[LazyModule.scala 309:16]
  assign auto_debug_dmInner_dmInner_tl_in_d_bits_data = debug_auto_dmInner_dmInner_tl_in_d_bits_data; // @[LazyModule.scala 309:16]
  assign auto_debug_dmOuter_dmOuter_int_out_0 = debug_auto_dmOuter_dmOuter_int_out_0; // @[LazyModule.scala 311:12]
  assign io_debugIO_systemjtag_jtag_TDO_data = dtm_io_jtag_TDO_data; // @[RocketDebugWrapper.scala 78:19]
  assign io_debugIO_systemjtag_jtag_TDO_driven = dtm_io_jtag_TDO_driven; // @[RocketDebugWrapper.scala 78:19]
  assign io_debugIO_ndreset = debug_io_ctrl_ndreset; // @[RocketDebugWrapper.scala 67:24]
  assign io_debugIO_dmactive = debug_io_ctrl_dmactive; // @[RocketDebugWrapper.scala 68:25]
  assign debug_auto_dmInner_dmInner_sb2tlOpt_out_a_ready = auto_debug_dmInner_dmInner_sb2tlOpt_out_a_ready; // @[LazyModule.scala 311:12]
  assign debug_auto_dmInner_dmInner_sb2tlOpt_out_d_valid = auto_debug_dmInner_dmInner_sb2tlOpt_out_d_valid; // @[LazyModule.scala 311:12]
  assign debug_auto_dmInner_dmInner_sb2tlOpt_out_d_bits_denied = auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_denied; // @[LazyModule.scala 311:12]
  assign debug_auto_dmInner_dmInner_sb2tlOpt_out_d_bits_data = auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_data; // @[LazyModule.scala 311:12]
  assign debug_auto_dmInner_dmInner_sb2tlOpt_out_d_bits_corrupt = auto_debug_dmInner_dmInner_sb2tlOpt_out_d_bits_corrupt
    ; // @[LazyModule.scala 311:12]
  assign debug_auto_dmInner_dmInner_tl_in_a_valid = auto_debug_dmInner_dmInner_tl_in_a_valid; // @[LazyModule.scala 309:16]
  assign debug_auto_dmInner_dmInner_tl_in_a_bits_opcode = auto_debug_dmInner_dmInner_tl_in_a_bits_opcode; // @[LazyModule.scala 309:16]
  assign debug_auto_dmInner_dmInner_tl_in_a_bits_size = auto_debug_dmInner_dmInner_tl_in_a_bits_size; // @[LazyModule.scala 309:16]
  assign debug_auto_dmInner_dmInner_tl_in_a_bits_source = auto_debug_dmInner_dmInner_tl_in_a_bits_source; // @[LazyModule.scala 309:16]
  assign debug_auto_dmInner_dmInner_tl_in_a_bits_address = auto_debug_dmInner_dmInner_tl_in_a_bits_address; // @[LazyModule.scala 309:16]
  assign debug_auto_dmInner_dmInner_tl_in_a_bits_mask = auto_debug_dmInner_dmInner_tl_in_a_bits_mask; // @[LazyModule.scala 309:16]
  assign debug_auto_dmInner_dmInner_tl_in_a_bits_data = auto_debug_dmInner_dmInner_tl_in_a_bits_data; // @[LazyModule.scala 309:16]
  assign debug_auto_dmInner_dmInner_tl_in_d_ready = auto_debug_dmInner_dmInner_tl_in_d_ready; // @[LazyModule.scala 309:16]
  assign debug_io_debug_clock = io_debugIO_clock; // @[RocketDebugWrapper.scala 66:33]
  assign debug_io_debug_reset = io_debugIO_reset; // @[RocketDebugWrapper.scala 65:33]
  assign debug_io_tl_clock = io_clock; // @[RocketDebugWrapper.scala 60:42]
  assign debug_io_tl_reset = io_reset; // @[RocketDebugWrapper.scala 59:30]
  assign debug_io_ctrl_dmactiveAck = io_debugIO_dmactiveAck; // @[RocketDebugWrapper.scala 69:38]
  assign debug_io_dmi_dmi_req_valid = dtm_io_dmi_req_valid; // @[RocketDebugWrapper.scala 88:35]
  assign debug_io_dmi_dmi_req_bits_addr = dtm_io_dmi_req_bits_addr; // @[RocketDebugWrapper.scala 88:35]
  assign debug_io_dmi_dmi_req_bits_data = dtm_io_dmi_req_bits_data; // @[RocketDebugWrapper.scala 88:35]
  assign debug_io_dmi_dmi_req_bits_op = dtm_io_dmi_req_bits_op; // @[RocketDebugWrapper.scala 88:35]
  assign debug_io_dmi_dmi_resp_ready = dtm_io_dmi_resp_ready; // @[RocketDebugWrapper.scala 88:35]
  assign debug_io_dmi_dmiClock = io_debugIO_systemjtag_jtag_TCK; // @[RocketDebugWrapper.scala 89:40]
  assign debug_io_dmi_dmiReset = io_debugIO_systemjtag_reset; // @[RocketDebugWrapper.scala 90:40]
  assign debug_io_hartIsInReset_0 = io_resetCtrl_hartIsInReset_0; // @[RocketDebugWrapper.scala 61:35]
  assign dtm_io_jtag_clock = io_debugIO_systemjtag_jtag_TCK; // @[RocketDebugWrapper.scala 82:26]
  assign dtm_io_jtag_reset = io_debugIO_systemjtag_reset; // @[RocketDebugWrapper.scala 83:26]
  assign dtm_io_dmi_req_ready = debug_io_dmi_dmi_req_ready; // @[RocketDebugWrapper.scala 88:35]
  assign dtm_io_dmi_resp_valid = debug_io_dmi_dmi_resp_valid; // @[RocketDebugWrapper.scala 88:35]
  assign dtm_io_dmi_resp_bits_data = debug_io_dmi_dmi_resp_bits_data; // @[RocketDebugWrapper.scala 88:35]
  assign dtm_io_dmi_resp_bits_resp = debug_io_dmi_dmi_resp_bits_resp; // @[RocketDebugWrapper.scala 88:35]
  assign dtm_io_jtag_TMS = io_debugIO_systemjtag_jtag_TMS; // @[RocketDebugWrapper.scala 78:19]
  assign dtm_io_jtag_TDI = io_debugIO_systemjtag_jtag_TDI; // @[RocketDebugWrapper.scala 78:19]
  assign dtm_io_jtag_mfr_id = io_debugIO_systemjtag_mfr_id; // @[RocketDebugWrapper.scala 84:26]
  assign dtm_io_jtag_part_number = io_debugIO_systemjtag_part_number; // @[RocketDebugWrapper.scala 85:31]
  assign dtm_io_jtag_version = io_debugIO_systemjtag_version; // @[RocketDebugWrapper.scala 86:27]
endmodule

