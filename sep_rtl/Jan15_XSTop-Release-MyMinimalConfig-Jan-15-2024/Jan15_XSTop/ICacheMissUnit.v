module ICacheMissUnit(
  input          clock,
  input          reset,
  output         io_req_0_ready,
  input          io_req_0_valid,
  input  [35:0]  io_req_0_bits_paddr,
  input  [38:0]  io_req_0_bits_vaddr,
  input  [3:0]   io_req_0_bits_waymask,
  output         io_req_1_ready,
  input          io_req_1_valid,
  input  [35:0]  io_req_1_bits_paddr,
  input  [38:0]  io_req_1_bits_vaddr,
  input  [3:0]   io_req_1_bits_waymask,
  output         io_resp_0_valid,
  output [511:0] io_resp_0_bits_data,
  output         io_resp_0_bits_corrupt,
  output         io_resp_1_valid,
  output [511:0] io_resp_1_bits_data,
  output         io_resp_1_bits_corrupt,
  input          io_mem_acquire_ready,
  output         io_mem_acquire_valid,
  output [2:0]   io_mem_acquire_bits_opcode,
  output [2:0]   io_mem_acquire_bits_size,
  output [1:0]   io_mem_acquire_bits_source,
  output [35:0]  io_mem_acquire_bits_address,
  output [3:0]   io_mem_acquire_bits_user_reqSource,
  output [31:0]  io_mem_acquire_bits_mask,
  input          io_mem_grant_valid,
  input  [2:0]   io_mem_grant_bits_opcode,
  input  [1:0]   io_mem_grant_bits_source,
  input  [255:0] io_mem_grant_bits_data,
  input          io_mem_grant_bits_corrupt,
  output         io_fdip_acquire_ready,
  input          io_fdip_acquire_valid,
  output         io_fdip_grant_valid,
  output [2:0]   io_fdip_grant_bits_opcode,
  input          io_meta_write_ready,
  output         io_meta_write_valid,
  output [5:0]   io_meta_write_bits_virIdx,
  output [23:0]  io_meta_write_bits_phyTag,
  output [3:0]   io_meta_write_bits_waymask,
  output         io_meta_write_bits_bankIdx,
  input          io_data_write_ready,
  output         io_data_write_valid,
  output [5:0]   io_data_write_bits_virIdx,
  output [511:0] io_data_write_bits_data,
  output [3:0]   io_data_write_bits_waymask,
  output         io_data_write_bits_bankIdx,
  input          io_fencei
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  meta_write_arb_io_in_0_ready; // @[ICacheMissUnit.scala 228:30]
  wire  meta_write_arb_io_in_0_valid; // @[ICacheMissUnit.scala 228:30]
  wire [5:0] meta_write_arb_io_in_0_bits_virIdx; // @[ICacheMissUnit.scala 228:30]
  wire [23:0] meta_write_arb_io_in_0_bits_phyTag; // @[ICacheMissUnit.scala 228:30]
  wire [3:0] meta_write_arb_io_in_0_bits_waymask; // @[ICacheMissUnit.scala 228:30]
  wire  meta_write_arb_io_in_0_bits_bankIdx; // @[ICacheMissUnit.scala 228:30]
  wire  meta_write_arb_io_in_1_ready; // @[ICacheMissUnit.scala 228:30]
  wire  meta_write_arb_io_in_1_valid; // @[ICacheMissUnit.scala 228:30]
  wire [5:0] meta_write_arb_io_in_1_bits_virIdx; // @[ICacheMissUnit.scala 228:30]
  wire [23:0] meta_write_arb_io_in_1_bits_phyTag; // @[ICacheMissUnit.scala 228:30]
  wire [3:0] meta_write_arb_io_in_1_bits_waymask; // @[ICacheMissUnit.scala 228:30]
  wire  meta_write_arb_io_in_1_bits_bankIdx; // @[ICacheMissUnit.scala 228:30]
  wire  meta_write_arb_io_out_ready; // @[ICacheMissUnit.scala 228:30]
  wire  meta_write_arb_io_out_valid; // @[ICacheMissUnit.scala 228:30]
  wire [5:0] meta_write_arb_io_out_bits_virIdx; // @[ICacheMissUnit.scala 228:30]
  wire [23:0] meta_write_arb_io_out_bits_phyTag; // @[ICacheMissUnit.scala 228:30]
  wire [3:0] meta_write_arb_io_out_bits_waymask; // @[ICacheMissUnit.scala 228:30]
  wire  meta_write_arb_io_out_bits_bankIdx; // @[ICacheMissUnit.scala 228:30]
  wire  refill_arb_io_in_0_ready; // @[ICacheMissUnit.scala 229:30]
  wire  refill_arb_io_in_0_valid; // @[ICacheMissUnit.scala 229:30]
  wire [5:0] refill_arb_io_in_0_bits_virIdx; // @[ICacheMissUnit.scala 229:30]
  wire [511:0] refill_arb_io_in_0_bits_data; // @[ICacheMissUnit.scala 229:30]
  wire [3:0] refill_arb_io_in_0_bits_waymask; // @[ICacheMissUnit.scala 229:30]
  wire  refill_arb_io_in_0_bits_bankIdx; // @[ICacheMissUnit.scala 229:30]
  wire  refill_arb_io_in_1_ready; // @[ICacheMissUnit.scala 229:30]
  wire  refill_arb_io_in_1_valid; // @[ICacheMissUnit.scala 229:30]
  wire [5:0] refill_arb_io_in_1_bits_virIdx; // @[ICacheMissUnit.scala 229:30]
  wire [511:0] refill_arb_io_in_1_bits_data; // @[ICacheMissUnit.scala 229:30]
  wire [3:0] refill_arb_io_in_1_bits_waymask; // @[ICacheMissUnit.scala 229:30]
  wire  refill_arb_io_in_1_bits_bankIdx; // @[ICacheMissUnit.scala 229:30]
  wire  refill_arb_io_out_ready; // @[ICacheMissUnit.scala 229:30]
  wire  refill_arb_io_out_valid; // @[ICacheMissUnit.scala 229:30]
  wire [5:0] refill_arb_io_out_bits_virIdx; // @[ICacheMissUnit.scala 229:30]
  wire [511:0] refill_arb_io_out_bits_data; // @[ICacheMissUnit.scala 229:30]
  wire [3:0] refill_arb_io_out_bits_waymask; // @[ICacheMissUnit.scala 229:30]
  wire  refill_arb_io_out_bits_bankIdx; // @[ICacheMissUnit.scala 229:30]
  wire  entries_0_clock; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_reset; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_id; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_req_ready; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_req_valid; // @[ICacheMissUnit.scala 234:23]
  wire [35:0] entries_0_io_req_bits_paddr; // @[ICacheMissUnit.scala 234:23]
  wire [38:0] entries_0_io_req_bits_vaddr; // @[ICacheMissUnit.scala 234:23]
  wire [3:0] entries_0_io_req_bits_waymask; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_resp_valid; // @[ICacheMissUnit.scala 234:23]
  wire [511:0] entries_0_io_resp_bits_data; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_resp_bits_corrupt; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_mem_acquire_ready; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_mem_acquire_valid; // @[ICacheMissUnit.scala 234:23]
  wire [1:0] entries_0_io_mem_acquire_bits_source; // @[ICacheMissUnit.scala 234:23]
  wire [35:0] entries_0_io_mem_acquire_bits_address; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_mem_grant_ready; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_mem_grant_valid; // @[ICacheMissUnit.scala 234:23]
  wire [2:0] entries_0_io_mem_grant_bits_opcode; // @[ICacheMissUnit.scala 234:23]
  wire [255:0] entries_0_io_mem_grant_bits_data; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_mem_grant_bits_corrupt; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_meta_write_ready; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_meta_write_valid; // @[ICacheMissUnit.scala 234:23]
  wire [5:0] entries_0_io_meta_write_bits_virIdx; // @[ICacheMissUnit.scala 234:23]
  wire [23:0] entries_0_io_meta_write_bits_phyTag; // @[ICacheMissUnit.scala 234:23]
  wire [3:0] entries_0_io_meta_write_bits_waymask; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_meta_write_bits_bankIdx; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_data_write_ready; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_data_write_valid; // @[ICacheMissUnit.scala 234:23]
  wire [5:0] entries_0_io_data_write_bits_virIdx; // @[ICacheMissUnit.scala 234:23]
  wire [511:0] entries_0_io_data_write_bits_data; // @[ICacheMissUnit.scala 234:23]
  wire [3:0] entries_0_io_data_write_bits_waymask; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_data_write_bits_bankIdx; // @[ICacheMissUnit.scala 234:23]
  wire  entries_0_io_fencei; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_clock; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_reset; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_id; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_req_ready; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_req_valid; // @[ICacheMissUnit.scala 234:23]
  wire [35:0] entries_1_io_req_bits_paddr; // @[ICacheMissUnit.scala 234:23]
  wire [38:0] entries_1_io_req_bits_vaddr; // @[ICacheMissUnit.scala 234:23]
  wire [3:0] entries_1_io_req_bits_waymask; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_resp_valid; // @[ICacheMissUnit.scala 234:23]
  wire [511:0] entries_1_io_resp_bits_data; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_resp_bits_corrupt; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_mem_acquire_ready; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_mem_acquire_valid; // @[ICacheMissUnit.scala 234:23]
  wire [1:0] entries_1_io_mem_acquire_bits_source; // @[ICacheMissUnit.scala 234:23]
  wire [35:0] entries_1_io_mem_acquire_bits_address; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_mem_grant_ready; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_mem_grant_valid; // @[ICacheMissUnit.scala 234:23]
  wire [2:0] entries_1_io_mem_grant_bits_opcode; // @[ICacheMissUnit.scala 234:23]
  wire [255:0] entries_1_io_mem_grant_bits_data; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_mem_grant_bits_corrupt; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_meta_write_ready; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_meta_write_valid; // @[ICacheMissUnit.scala 234:23]
  wire [5:0] entries_1_io_meta_write_bits_virIdx; // @[ICacheMissUnit.scala 234:23]
  wire [23:0] entries_1_io_meta_write_bits_phyTag; // @[ICacheMissUnit.scala 234:23]
  wire [3:0] entries_1_io_meta_write_bits_waymask; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_meta_write_bits_bankIdx; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_data_write_ready; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_data_write_valid; // @[ICacheMissUnit.scala 234:23]
  wire [5:0] entries_1_io_data_write_bits_virIdx; // @[ICacheMissUnit.scala 234:23]
  wire [511:0] entries_1_io_data_write_bits_data; // @[ICacheMissUnit.scala 234:23]
  wire [3:0] entries_1_io_data_write_bits_waymask; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_data_write_bits_bankIdx; // @[ICacheMissUnit.scala 234:23]
  wire  entries_1_io_fencei; // @[ICacheMissUnit.scala 234:23]
  reg  beatsLeft; // @[Arbiter.scala 87:30]
  wire  idle = ~beatsLeft; // @[Arbiter.scala 88:28]
  wire  latch = idle & io_mem_acquire_ready; // @[Arbiter.scala 89:24]
  wire  out_earlyValid = entries_0_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire  out_1_earlyValid = entries_1_io_mem_acquire_valid; // @[ReadyValidCancel.scala 68:19 69:20]
  wire [2:0] _readys_T = {io_fdip_acquire_valid,out_1_earlyValid,out_earlyValid}; // @[Cat.scala 31:58]
  wire [3:0] _readys_T_1 = {_readys_T, 1'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_T_3 = _readys_T | _readys_T_1[2:0]; // @[package.scala 244:43]
  wire [4:0] _readys_T_4 = {_readys_T_3, 2'h0}; // @[package.scala 244:48]
  wire [2:0] _readys_T_6 = _readys_T_3 | _readys_T_4[2:0]; // @[package.scala 244:43]
  wire [3:0] _readys_T_8 = {_readys_T_6, 1'h0}; // @[Arbiter.scala 16:78]
  wire [2:0] _readys_T_10 = ~_readys_T_8[2:0]; // @[Arbiter.scala 16:61]
  wire  readys_0 = _readys_T_10[0]; // @[Arbiter.scala 95:86]
  wire  readys_1 = _readys_T_10[1]; // @[Arbiter.scala 95:86]
  wire  readys_2 = _readys_T_10[2]; // @[Arbiter.scala 95:86]
  wire  earlyWinner_0 = readys_0 & out_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_1 = readys_1 & out_1_earlyValid; // @[Arbiter.scala 97:79]
  wire  earlyWinner_2 = readys_2 & io_fdip_acquire_valid; // @[Arbiter.scala 97:79]
  wire  _T_21 = out_earlyValid | out_1_earlyValid | io_fdip_acquire_valid; // @[Arbiter.scala 107:36]
  reg  state_0; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_0 = idle ? earlyWinner_0 : state_0; // @[Arbiter.scala 117:30]
  reg  state_1; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_1 = idle ? earlyWinner_1 : state_1; // @[Arbiter.scala 117:30]
  reg  state_2; // @[Arbiter.scala 116:26]
  wire  muxStateEarly_2 = idle ? earlyWinner_2 : state_2; // @[Arbiter.scala 117:30]
  wire  _sink_ACancel_earlyValid_T_6 = state_0 & out_earlyValid | state_1 & out_1_earlyValid | state_2 &
    io_fdip_acquire_valid; // @[Mux.scala 27:73]
  wire  sink_ACancel_earlyValid = idle ? _T_21 : _sink_ACancel_earlyValid_T_6; // @[Arbiter.scala 125:29]
  wire  _beatsLeft_T_2 = io_mem_acquire_ready & sink_ACancel_earlyValid; // @[ReadyValidCancel.scala 49:33]
  wire  allowed_0 = idle ? readys_0 : state_0; // @[Arbiter.scala 121:24]
  wire  allowed_1 = idle ? readys_1 : state_1; // @[Arbiter.scala 121:24]
  wire  allowed_2 = idle ? readys_2 : state_2; // @[Arbiter.scala 121:24]
  wire [31:0] _T_48 = muxStateEarly_0 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_49 = muxStateEarly_1 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_50 = muxStateEarly_2 ? 32'hffffffff : 32'h0; // @[Mux.scala 27:73]
  wire [31:0] _T_51 = _T_48 | _T_49; // @[Mux.scala 27:73]
  wire [3:0] _T_58 = muxStateEarly_0 ? 4'h1 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_59 = muxStateEarly_1 ? 4'h1 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_60 = muxStateEarly_2 ? 4'h5 : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _T_61 = _T_58 | _T_59; // @[Mux.scala 27:73]
  wire [35:0] out_bits_address = entries_0_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_68 = muxStateEarly_0 ? out_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [35:0] out_1_bits_address = entries_1_io_mem_acquire_bits_address; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [35:0] _T_69 = muxStateEarly_1 ? out_1_bits_address : 36'h0; // @[Mux.scala 27:73]
  wire [1:0] out_bits_source = entries_0_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_73 = muxStateEarly_0 ? out_bits_source : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] out_1_bits_source = entries_1_io_mem_acquire_bits_source; // @[ReadyValidCancel.scala 68:19 71:14]
  wire [1:0] _T_74 = muxStateEarly_1 ? out_1_bits_source : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_75 = muxStateEarly_2 ? 2'h2 : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] _T_76 = _T_73 | _T_74; // @[Mux.scala 27:73]
  wire [2:0] _T_78 = muxStateEarly_0 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_79 = muxStateEarly_1 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_80 = muxStateEarly_2 ? 3'h6 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_81 = _T_78 | _T_79; // @[Mux.scala 27:73]
  wire [2:0] _T_88 = muxStateEarly_0 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_89 = muxStateEarly_1 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_90 = muxStateEarly_2 ? 3'h4 : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _T_91 = _T_88 | _T_89; // @[Mux.scala 27:73]
  Arbiter_1 meta_write_arb ( // @[ICacheMissUnit.scala 228:30]
    .io_in_0_ready(meta_write_arb_io_in_0_ready),
    .io_in_0_valid(meta_write_arb_io_in_0_valid),
    .io_in_0_bits_virIdx(meta_write_arb_io_in_0_bits_virIdx),
    .io_in_0_bits_phyTag(meta_write_arb_io_in_0_bits_phyTag),
    .io_in_0_bits_waymask(meta_write_arb_io_in_0_bits_waymask),
    .io_in_0_bits_bankIdx(meta_write_arb_io_in_0_bits_bankIdx),
    .io_in_1_ready(meta_write_arb_io_in_1_ready),
    .io_in_1_valid(meta_write_arb_io_in_1_valid),
    .io_in_1_bits_virIdx(meta_write_arb_io_in_1_bits_virIdx),
    .io_in_1_bits_phyTag(meta_write_arb_io_in_1_bits_phyTag),
    .io_in_1_bits_waymask(meta_write_arb_io_in_1_bits_waymask),
    .io_in_1_bits_bankIdx(meta_write_arb_io_in_1_bits_bankIdx),
    .io_out_ready(meta_write_arb_io_out_ready),
    .io_out_valid(meta_write_arb_io_out_valid),
    .io_out_bits_virIdx(meta_write_arb_io_out_bits_virIdx),
    .io_out_bits_phyTag(meta_write_arb_io_out_bits_phyTag),
    .io_out_bits_waymask(meta_write_arb_io_out_bits_waymask),
    .io_out_bits_bankIdx(meta_write_arb_io_out_bits_bankIdx)
  );
  Arbiter_2 refill_arb ( // @[ICacheMissUnit.scala 229:30]
    .io_in_0_ready(refill_arb_io_in_0_ready),
    .io_in_0_valid(refill_arb_io_in_0_valid),
    .io_in_0_bits_virIdx(refill_arb_io_in_0_bits_virIdx),
    .io_in_0_bits_data(refill_arb_io_in_0_bits_data),
    .io_in_0_bits_waymask(refill_arb_io_in_0_bits_waymask),
    .io_in_0_bits_bankIdx(refill_arb_io_in_0_bits_bankIdx),
    .io_in_1_ready(refill_arb_io_in_1_ready),
    .io_in_1_valid(refill_arb_io_in_1_valid),
    .io_in_1_bits_virIdx(refill_arb_io_in_1_bits_virIdx),
    .io_in_1_bits_data(refill_arb_io_in_1_bits_data),
    .io_in_1_bits_waymask(refill_arb_io_in_1_bits_waymask),
    .io_in_1_bits_bankIdx(refill_arb_io_in_1_bits_bankIdx),
    .io_out_ready(refill_arb_io_out_ready),
    .io_out_valid(refill_arb_io_out_valid),
    .io_out_bits_virIdx(refill_arb_io_out_bits_virIdx),
    .io_out_bits_data(refill_arb_io_out_bits_data),
    .io_out_bits_waymask(refill_arb_io_out_bits_waymask),
    .io_out_bits_bankIdx(refill_arb_io_out_bits_bankIdx)
  );
  ICacheMissEntry entries_0 ( // @[ICacheMissUnit.scala 234:23]
    .clock(entries_0_clock),
    .reset(entries_0_reset),
    .io_id(entries_0_io_id),
    .io_req_ready(entries_0_io_req_ready),
    .io_req_valid(entries_0_io_req_valid),
    .io_req_bits_paddr(entries_0_io_req_bits_paddr),
    .io_req_bits_vaddr(entries_0_io_req_bits_vaddr),
    .io_req_bits_waymask(entries_0_io_req_bits_waymask),
    .io_resp_valid(entries_0_io_resp_valid),
    .io_resp_bits_data(entries_0_io_resp_bits_data),
    .io_resp_bits_corrupt(entries_0_io_resp_bits_corrupt),
    .io_mem_acquire_ready(entries_0_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_0_io_mem_acquire_valid),
    .io_mem_acquire_bits_source(entries_0_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_0_io_mem_acquire_bits_address),
    .io_mem_grant_ready(entries_0_io_mem_grant_ready),
    .io_mem_grant_valid(entries_0_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(entries_0_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_data(entries_0_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(entries_0_io_mem_grant_bits_corrupt),
    .io_meta_write_ready(entries_0_io_meta_write_ready),
    .io_meta_write_valid(entries_0_io_meta_write_valid),
    .io_meta_write_bits_virIdx(entries_0_io_meta_write_bits_virIdx),
    .io_meta_write_bits_phyTag(entries_0_io_meta_write_bits_phyTag),
    .io_meta_write_bits_waymask(entries_0_io_meta_write_bits_waymask),
    .io_meta_write_bits_bankIdx(entries_0_io_meta_write_bits_bankIdx),
    .io_data_write_ready(entries_0_io_data_write_ready),
    .io_data_write_valid(entries_0_io_data_write_valid),
    .io_data_write_bits_virIdx(entries_0_io_data_write_bits_virIdx),
    .io_data_write_bits_data(entries_0_io_data_write_bits_data),
    .io_data_write_bits_waymask(entries_0_io_data_write_bits_waymask),
    .io_data_write_bits_bankIdx(entries_0_io_data_write_bits_bankIdx),
    .io_fencei(entries_0_io_fencei)
  );
  ICacheMissEntry entries_1 ( // @[ICacheMissUnit.scala 234:23]
    .clock(entries_1_clock),
    .reset(entries_1_reset),
    .io_id(entries_1_io_id),
    .io_req_ready(entries_1_io_req_ready),
    .io_req_valid(entries_1_io_req_valid),
    .io_req_bits_paddr(entries_1_io_req_bits_paddr),
    .io_req_bits_vaddr(entries_1_io_req_bits_vaddr),
    .io_req_bits_waymask(entries_1_io_req_bits_waymask),
    .io_resp_valid(entries_1_io_resp_valid),
    .io_resp_bits_data(entries_1_io_resp_bits_data),
    .io_resp_bits_corrupt(entries_1_io_resp_bits_corrupt),
    .io_mem_acquire_ready(entries_1_io_mem_acquire_ready),
    .io_mem_acquire_valid(entries_1_io_mem_acquire_valid),
    .io_mem_acquire_bits_source(entries_1_io_mem_acquire_bits_source),
    .io_mem_acquire_bits_address(entries_1_io_mem_acquire_bits_address),
    .io_mem_grant_ready(entries_1_io_mem_grant_ready),
    .io_mem_grant_valid(entries_1_io_mem_grant_valid),
    .io_mem_grant_bits_opcode(entries_1_io_mem_grant_bits_opcode),
    .io_mem_grant_bits_data(entries_1_io_mem_grant_bits_data),
    .io_mem_grant_bits_corrupt(entries_1_io_mem_grant_bits_corrupt),
    .io_meta_write_ready(entries_1_io_meta_write_ready),
    .io_meta_write_valid(entries_1_io_meta_write_valid),
    .io_meta_write_bits_virIdx(entries_1_io_meta_write_bits_virIdx),
    .io_meta_write_bits_phyTag(entries_1_io_meta_write_bits_phyTag),
    .io_meta_write_bits_waymask(entries_1_io_meta_write_bits_waymask),
    .io_meta_write_bits_bankIdx(entries_1_io_meta_write_bits_bankIdx),
    .io_data_write_ready(entries_1_io_data_write_ready),
    .io_data_write_valid(entries_1_io_data_write_valid),
    .io_data_write_bits_virIdx(entries_1_io_data_write_bits_virIdx),
    .io_data_write_bits_data(entries_1_io_data_write_bits_data),
    .io_data_write_bits_waymask(entries_1_io_data_write_bits_waymask),
    .io_data_write_bits_bankIdx(entries_1_io_data_write_bits_bankIdx),
    .io_fencei(entries_1_io_fencei)
  );
  assign io_req_0_ready = entries_0_io_req_ready; // @[ICacheMissUnit.scala 241:24]
  assign io_req_1_ready = entries_1_io_req_ready; // @[ICacheMissUnit.scala 241:24]
  assign io_resp_0_valid = entries_0_io_resp_valid; // @[ICacheMissUnit.scala 253:16]
  assign io_resp_0_bits_data = entries_0_io_resp_bits_data; // @[ICacheMissUnit.scala 253:16]
  assign io_resp_0_bits_corrupt = entries_0_io_resp_bits_corrupt; // @[ICacheMissUnit.scala 253:16]
  assign io_resp_1_valid = entries_1_io_resp_valid; // @[ICacheMissUnit.scala 253:16]
  assign io_resp_1_bits_data = entries_1_io_resp_bits_data; // @[ICacheMissUnit.scala 253:16]
  assign io_resp_1_bits_corrupt = entries_1_io_resp_bits_corrupt; // @[ICacheMissUnit.scala 253:16]
  assign io_mem_acquire_valid = idle ? _T_21 : _sink_ACancel_earlyValid_T_6; // @[Arbiter.scala 125:29]
  assign io_mem_acquire_bits_opcode = _T_91 | _T_90; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_size = _T_81 | _T_80; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_source = _T_76 | _T_75; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_address = _T_68 | _T_69; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_user_reqSource = _T_61 | _T_60; // @[Mux.scala 27:73]
  assign io_mem_acquire_bits_mask = _T_51 | _T_50; // @[Mux.scala 27:73]
  assign io_fdip_acquire_ready = io_mem_acquire_ready & allowed_2; // @[Arbiter.scala 123:31]
  assign io_fdip_grant_valid = io_mem_grant_bits_source == 2'h2 & io_mem_grant_valid; // @[ICacheMissUnit.scala 270:52 271:19 268:23]
  assign io_fdip_grant_bits_opcode = io_mem_grant_bits_opcode; // @[ICacheMissUnit.scala 270:52 271:19]
  assign io_meta_write_valid = meta_write_arb_io_out_valid; // @[ICacheMissUnit.scala 277:21]
  assign io_meta_write_bits_virIdx = meta_write_arb_io_out_bits_virIdx; // @[ICacheMissUnit.scala 277:21]
  assign io_meta_write_bits_phyTag = meta_write_arb_io_out_bits_phyTag; // @[ICacheMissUnit.scala 277:21]
  assign io_meta_write_bits_waymask = meta_write_arb_io_out_bits_waymask; // @[ICacheMissUnit.scala 277:21]
  assign io_meta_write_bits_bankIdx = meta_write_arb_io_out_bits_bankIdx; // @[ICacheMissUnit.scala 277:21]
  assign io_data_write_valid = refill_arb_io_out_valid; // @[ICacheMissUnit.scala 278:21]
  assign io_data_write_bits_virIdx = refill_arb_io_out_bits_virIdx; // @[ICacheMissUnit.scala 278:21]
  assign io_data_write_bits_data = refill_arb_io_out_bits_data; // @[ICacheMissUnit.scala 278:21]
  assign io_data_write_bits_waymask = refill_arb_io_out_bits_waymask; // @[ICacheMissUnit.scala 278:21]
  assign io_data_write_bits_bankIdx = refill_arb_io_out_bits_bankIdx; // @[ICacheMissUnit.scala 278:21]
  assign meta_write_arb_io_in_0_valid = entries_0_io_meta_write_valid; // @[ICacheMissUnit.scala 244:33]
  assign meta_write_arb_io_in_0_bits_virIdx = entries_0_io_meta_write_bits_virIdx; // @[ICacheMissUnit.scala 244:33]
  assign meta_write_arb_io_in_0_bits_phyTag = entries_0_io_meta_write_bits_phyTag; // @[ICacheMissUnit.scala 244:33]
  assign meta_write_arb_io_in_0_bits_waymask = entries_0_io_meta_write_bits_waymask; // @[ICacheMissUnit.scala 244:33]
  assign meta_write_arb_io_in_0_bits_bankIdx = entries_0_io_meta_write_bits_bankIdx; // @[ICacheMissUnit.scala 244:33]
  assign meta_write_arb_io_in_1_valid = entries_1_io_meta_write_valid; // @[ICacheMissUnit.scala 244:33]
  assign meta_write_arb_io_in_1_bits_virIdx = entries_1_io_meta_write_bits_virIdx; // @[ICacheMissUnit.scala 244:33]
  assign meta_write_arb_io_in_1_bits_phyTag = entries_1_io_meta_write_bits_phyTag; // @[ICacheMissUnit.scala 244:33]
  assign meta_write_arb_io_in_1_bits_waymask = entries_1_io_meta_write_bits_waymask; // @[ICacheMissUnit.scala 244:33]
  assign meta_write_arb_io_in_1_bits_bankIdx = entries_1_io_meta_write_bits_bankIdx; // @[ICacheMissUnit.scala 244:33]
  assign meta_write_arb_io_out_ready = io_meta_write_ready; // @[ICacheMissUnit.scala 277:21]
  assign refill_arb_io_in_0_valid = entries_0_io_data_write_valid; // @[ICacheMissUnit.scala 245:33]
  assign refill_arb_io_in_0_bits_virIdx = entries_0_io_data_write_bits_virIdx; // @[ICacheMissUnit.scala 245:33]
  assign refill_arb_io_in_0_bits_data = entries_0_io_data_write_bits_data; // @[ICacheMissUnit.scala 245:33]
  assign refill_arb_io_in_0_bits_waymask = entries_0_io_data_write_bits_waymask; // @[ICacheMissUnit.scala 245:33]
  assign refill_arb_io_in_0_bits_bankIdx = entries_0_io_data_write_bits_bankIdx; // @[ICacheMissUnit.scala 245:33]
  assign refill_arb_io_in_1_valid = entries_1_io_data_write_valid; // @[ICacheMissUnit.scala 245:33]
  assign refill_arb_io_in_1_bits_virIdx = entries_1_io_data_write_bits_virIdx; // @[ICacheMissUnit.scala 245:33]
  assign refill_arb_io_in_1_bits_data = entries_1_io_data_write_bits_data; // @[ICacheMissUnit.scala 245:33]
  assign refill_arb_io_in_1_bits_waymask = entries_1_io_data_write_bits_waymask; // @[ICacheMissUnit.scala 245:33]
  assign refill_arb_io_in_1_bits_bankIdx = entries_1_io_data_write_bits_bankIdx; // @[ICacheMissUnit.scala 245:33]
  assign refill_arb_io_out_ready = io_data_write_ready; // @[ICacheMissUnit.scala 278:21]
  assign entries_0_clock = clock;
  assign entries_0_reset = reset;
  assign entries_0_io_id = 1'h0; // @[ICacheMissUnit.scala 236:17]
  assign entries_0_io_req_valid = io_req_0_valid; // @[ICacheMissUnit.scala 239:24]
  assign entries_0_io_req_bits_paddr = io_req_0_bits_paddr; // @[ICacheMissUnit.scala 240:24]
  assign entries_0_io_req_bits_vaddr = io_req_0_bits_vaddr; // @[ICacheMissUnit.scala 240:24]
  assign entries_0_io_req_bits_waymask = io_req_0_bits_waymask; // @[ICacheMissUnit.scala 240:24]
  assign entries_0_io_mem_acquire_ready = io_mem_acquire_ready & allowed_0; // @[Arbiter.scala 123:31]
  assign entries_0_io_mem_grant_valid = io_mem_grant_bits_source == 2'h0 & io_mem_grant_valid; // @[ICacheMissUnit.scala 249:45 250:26 247:30]
  assign entries_0_io_mem_grant_bits_opcode = io_mem_grant_bits_opcode; // @[ICacheMissUnit.scala 249:45 250:26]
  assign entries_0_io_mem_grant_bits_data = io_mem_grant_bits_data; // @[ICacheMissUnit.scala 249:45 250:26]
  assign entries_0_io_mem_grant_bits_corrupt = io_mem_grant_bits_corrupt; // @[ICacheMissUnit.scala 249:45 250:26]
  assign entries_0_io_meta_write_ready = meta_write_arb_io_in_0_ready; // @[ICacheMissUnit.scala 244:33]
  assign entries_0_io_data_write_ready = refill_arb_io_in_0_ready; // @[ICacheMissUnit.scala 245:33]
  assign entries_0_io_fencei = io_fencei; // @[ICacheMissUnit.scala 255:21]
  assign entries_1_clock = clock;
  assign entries_1_reset = reset;
  assign entries_1_io_id = 1'h1; // @[ICacheMissUnit.scala 236:17]
  assign entries_1_io_req_valid = io_req_1_valid; // @[ICacheMissUnit.scala 239:24]
  assign entries_1_io_req_bits_paddr = io_req_1_bits_paddr; // @[ICacheMissUnit.scala 240:24]
  assign entries_1_io_req_bits_vaddr = io_req_1_bits_vaddr; // @[ICacheMissUnit.scala 240:24]
  assign entries_1_io_req_bits_waymask = io_req_1_bits_waymask; // @[ICacheMissUnit.scala 240:24]
  assign entries_1_io_mem_acquire_ready = io_mem_acquire_ready & allowed_1; // @[Arbiter.scala 123:31]
  assign entries_1_io_mem_grant_valid = io_mem_grant_bits_source == 2'h1 & io_mem_grant_valid; // @[ICacheMissUnit.scala 249:45 250:26 247:30]
  assign entries_1_io_mem_grant_bits_opcode = io_mem_grant_bits_opcode; // @[ICacheMissUnit.scala 249:45 250:26]
  assign entries_1_io_mem_grant_bits_data = io_mem_grant_bits_data; // @[ICacheMissUnit.scala 249:45 250:26]
  assign entries_1_io_mem_grant_bits_corrupt = io_mem_grant_bits_corrupt; // @[ICacheMissUnit.scala 249:45 250:26]
  assign entries_1_io_meta_write_ready = meta_write_arb_io_in_1_ready; // @[ICacheMissUnit.scala 244:33]
  assign entries_1_io_data_write_ready = refill_arb_io_in_1_ready; // @[ICacheMissUnit.scala 245:33]
  assign entries_1_io_fencei = io_fencei; // @[ICacheMissUnit.scala 255:21]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 113:23]
      beatsLeft <= 1'h0;
    end else if (latch) begin
      beatsLeft <= 1'h0;
    end else begin
      beatsLeft <= beatsLeft - _beatsLeft_T_2;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_0 <= 1'h0;
    end else if (idle) begin
      state_0 <= earlyWinner_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_1 <= 1'h0;
    end else if (idle) begin
      state_1 <= earlyWinner_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Arbiter.scala 118:30]
      state_2 <= 1'h0;
    end else if (idle) begin
      state_2 <= earlyWinner_2;
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
  beatsLeft = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  state_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  state_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state_2 = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    beatsLeft = 1'h0;
  end
  if (reset) begin
    state_0 = 1'h0;
  end
  if (reset) begin
    state_1 = 1'h0;
  end
  if (reset) begin
    state_2 = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

