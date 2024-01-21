module SRAMTemplate_153(
  input        clock,
  output       io_rreq_ready,
  input        io_rreq_valid,
  input  [6:0] io_rreq_bits_setIdx,
  output       io_rresp_data_0_dirty,
  output [1:0] io_rresp_data_0_state,
  output       io_rresp_data_0_clients,
  output       io_rresp_data_0_accessed,
  output       io_rresp_data_1_dirty,
  output [1:0] io_rresp_data_1_state,
  output       io_rresp_data_1_clients,
  output       io_rresp_data_1_accessed,
  output       io_rresp_data_2_dirty,
  output [1:0] io_rresp_data_2_state,
  output       io_rresp_data_2_clients,
  output       io_rresp_data_2_accessed,
  output       io_rresp_data_3_dirty,
  output [1:0] io_rresp_data_3_state,
  output       io_rresp_data_3_clients,
  output       io_rresp_data_3_accessed,
  output       io_rresp_data_4_dirty,
  output [1:0] io_rresp_data_4_state,
  output       io_rresp_data_4_clients,
  output       io_rresp_data_4_accessed,
  output       io_rresp_data_5_dirty,
  output [1:0] io_rresp_data_5_state,
  output       io_rresp_data_5_clients,
  output       io_rresp_data_5_accessed,
  output       io_rresp_data_6_dirty,
  output [1:0] io_rresp_data_6_state,
  output       io_rresp_data_6_clients,
  output       io_rresp_data_6_accessed,
  output       io_rresp_data_7_dirty,
  output [1:0] io_rresp_data_7_state,
  output       io_rresp_data_7_clients,
  output       io_rresp_data_7_accessed,
  output       io_wreq_ready,
  input        io_wreq_valid,
  input  [6:0] io_wreq_bits_setIdx,
  input        io_wreq_bits_data_0_dirty,
  input  [1:0] io_wreq_bits_data_0_state,
  input        io_wreq_bits_data_0_clients,
  input        io_wreq_bits_data_0_accessed,
  input        io_wreq_bits_data_1_dirty,
  input  [1:0] io_wreq_bits_data_1_state,
  input        io_wreq_bits_data_1_clients,
  input        io_wreq_bits_data_1_accessed,
  input        io_wreq_bits_data_2_dirty,
  input  [1:0] io_wreq_bits_data_2_state,
  input        io_wreq_bits_data_2_clients,
  input        io_wreq_bits_data_2_accessed,
  input        io_wreq_bits_data_3_dirty,
  input  [1:0] io_wreq_bits_data_3_state,
  input        io_wreq_bits_data_3_clients,
  input        io_wreq_bits_data_3_accessed,
  input        io_wreq_bits_data_4_dirty,
  input  [1:0] io_wreq_bits_data_4_state,
  input        io_wreq_bits_data_4_clients,
  input        io_wreq_bits_data_4_accessed,
  input        io_wreq_bits_data_5_dirty,
  input  [1:0] io_wreq_bits_data_5_state,
  input        io_wreq_bits_data_5_clients,
  input        io_wreq_bits_data_5_accessed,
  input        io_wreq_bits_data_6_dirty,
  input  [1:0] io_wreq_bits_data_6_state,
  input        io_wreq_bits_data_6_clients,
  input        io_wreq_bits_data_6_accessed,
  input        io_wreq_bits_data_7_dirty,
  input  [1:0] io_wreq_bits_data_7_state,
  input        io_wreq_bits_data_7_clients,
  input        io_wreq_bits_data_7_accessed,
  input  [7:0] io_wreq_bits_waymask
);
  wire [6:0] array_RW0_addr; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_wdata_1; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_wdata_2; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_wdata_3; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_wdata_4; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_wdata_5; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_wdata_6; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_wdata_7; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_rdata_1; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_rdata_2; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_rdata_3; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_rdata_4; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_rdata_5; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_rdata_6; // @[SRAMTemplate.scala 113:26]
  wire [4:0] array_RW0_rdata_7; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_0; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_1; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_2; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_3; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_4; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_5; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_6; // @[SRAMTemplate.scala 113:26]
  wire  array_RW0_wmask_7; // @[SRAMTemplate.scala 113:26]
  wire  realRen = io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 126:38]
  wire [1:0] wdata_lo = {io_wreq_bits_data_0_clients,io_wreq_bits_data_0_accessed}; // @[SRAMTemplate.scala 129:102]
  wire [2:0] wdata_hi = {io_wreq_bits_data_0_dirty,io_wreq_bits_data_0_state}; // @[SRAMTemplate.scala 129:102]
  wire [1:0] wdata_lo_1 = {io_wreq_bits_data_1_clients,io_wreq_bits_data_1_accessed}; // @[SRAMTemplate.scala 129:102]
  wire [2:0] wdata_hi_1 = {io_wreq_bits_data_1_dirty,io_wreq_bits_data_1_state}; // @[SRAMTemplate.scala 129:102]
  wire [1:0] wdata_lo_2 = {io_wreq_bits_data_2_clients,io_wreq_bits_data_2_accessed}; // @[SRAMTemplate.scala 129:102]
  wire [2:0] wdata_hi_2 = {io_wreq_bits_data_2_dirty,io_wreq_bits_data_2_state}; // @[SRAMTemplate.scala 129:102]
  wire [1:0] wdata_lo_3 = {io_wreq_bits_data_3_clients,io_wreq_bits_data_3_accessed}; // @[SRAMTemplate.scala 129:102]
  wire [2:0] wdata_hi_3 = {io_wreq_bits_data_3_dirty,io_wreq_bits_data_3_state}; // @[SRAMTemplate.scala 129:102]
  wire [1:0] wdata_lo_4 = {io_wreq_bits_data_4_clients,io_wreq_bits_data_4_accessed}; // @[SRAMTemplate.scala 129:102]
  wire [2:0] wdata_hi_4 = {io_wreq_bits_data_4_dirty,io_wreq_bits_data_4_state}; // @[SRAMTemplate.scala 129:102]
  wire [1:0] wdata_lo_5 = {io_wreq_bits_data_5_clients,io_wreq_bits_data_5_accessed}; // @[SRAMTemplate.scala 129:102]
  wire [2:0] wdata_hi_5 = {io_wreq_bits_data_5_dirty,io_wreq_bits_data_5_state}; // @[SRAMTemplate.scala 129:102]
  wire [1:0] wdata_lo_6 = {io_wreq_bits_data_6_clients,io_wreq_bits_data_6_accessed}; // @[SRAMTemplate.scala 129:102]
  wire [2:0] wdata_hi_6 = {io_wreq_bits_data_6_dirty,io_wreq_bits_data_6_state}; // @[SRAMTemplate.scala 129:102]
  wire [1:0] wdata_lo_7 = {io_wreq_bits_data_7_clients,io_wreq_bits_data_7_accessed}; // @[SRAMTemplate.scala 129:102]
  wire [2:0] wdata_hi_7 = {io_wreq_bits_data_7_dirty,io_wreq_bits_data_7_state}; // @[SRAMTemplate.scala 129:102]
  wire [4:0] _rdata_WIRE = array_RW0_rdata_0;
  wire [4:0] _rdata_WIRE_1 = array_RW0_rdata_1;
  wire [4:0] _rdata_WIRE_2 = array_RW0_rdata_2;
  wire [4:0] _rdata_WIRE_3 = array_RW0_rdata_3;
  wire [4:0] _rdata_WIRE_4 = array_RW0_rdata_4;
  wire [4:0] _rdata_WIRE_5 = array_RW0_rdata_5;
  wire [4:0] _rdata_WIRE_6 = array_RW0_rdata_6;
  wire [4:0] _rdata_WIRE_7 = array_RW0_rdata_7;
  array_19 array ( // @[SRAMTemplate.scala 113:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_wdata_1(array_RW0_wdata_1),
    .RW0_wdata_2(array_RW0_wdata_2),
    .RW0_wdata_3(array_RW0_wdata_3),
    .RW0_wdata_4(array_RW0_wdata_4),
    .RW0_wdata_5(array_RW0_wdata_5),
    .RW0_wdata_6(array_RW0_wdata_6),
    .RW0_wdata_7(array_RW0_wdata_7),
    .RW0_rdata_0(array_RW0_rdata_0),
    .RW0_rdata_1(array_RW0_rdata_1),
    .RW0_rdata_2(array_RW0_rdata_2),
    .RW0_rdata_3(array_RW0_rdata_3),
    .RW0_rdata_4(array_RW0_rdata_4),
    .RW0_rdata_5(array_RW0_rdata_5),
    .RW0_rdata_6(array_RW0_rdata_6),
    .RW0_rdata_7(array_RW0_rdata_7),
    .RW0_wmask_0(array_RW0_wmask_0),
    .RW0_wmask_1(array_RW0_wmask_1),
    .RW0_wmask_2(array_RW0_wmask_2),
    .RW0_wmask_3(array_RW0_wmask_3),
    .RW0_wmask_4(array_RW0_wmask_4),
    .RW0_wmask_5(array_RW0_wmask_5),
    .RW0_wmask_6(array_RW0_wmask_6),
    .RW0_wmask_7(array_RW0_wmask_7)
  );
  assign io_rreq_ready = ~io_wreq_valid; // @[SRAMTemplate.scala 173:53]
  assign io_rresp_data_0_dirty = _rdata_WIRE[4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_0_state = _rdata_WIRE[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_0_clients = _rdata_WIRE[1]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_0_accessed = _rdata_WIRE[0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_1_dirty = _rdata_WIRE_1[4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_1_state = _rdata_WIRE_1[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_1_clients = _rdata_WIRE_1[1]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_1_accessed = _rdata_WIRE_1[0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_2_dirty = _rdata_WIRE_2[4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_2_state = _rdata_WIRE_2[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_2_clients = _rdata_WIRE_2[1]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_2_accessed = _rdata_WIRE_2[0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_3_dirty = _rdata_WIRE_3[4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_3_state = _rdata_WIRE_3[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_3_clients = _rdata_WIRE_3[1]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_3_accessed = _rdata_WIRE_3[0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_4_dirty = _rdata_WIRE_4[4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_4_state = _rdata_WIRE_4[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_4_clients = _rdata_WIRE_4[1]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_4_accessed = _rdata_WIRE_4[0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_5_dirty = _rdata_WIRE_5[4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_5_state = _rdata_WIRE_5[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_5_clients = _rdata_WIRE_5[1]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_5_accessed = _rdata_WIRE_5[0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_6_dirty = _rdata_WIRE_6[4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_6_state = _rdata_WIRE_6[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_6_clients = _rdata_WIRE_6[1]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_6_accessed = _rdata_WIRE_6[0]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_7_dirty = _rdata_WIRE_7[4]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_7_state = _rdata_WIRE_7[3:2]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_7_clients = _rdata_WIRE_7[1]; // @[SRAMTemplate.scala 163:22]
  assign io_rresp_data_7_accessed = _rdata_WIRE_7[0]; // @[SRAMTemplate.scala 163:22]
  assign io_wreq_ready = 1'h1; // @[SRAMTemplate.scala 174:18]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 131:14]
  assign array_RW0_wdata_0 = {wdata_hi,wdata_lo}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wdata_1 = {wdata_hi_1,wdata_lo_1}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wdata_2 = {wdata_hi_2,wdata_lo_2}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wdata_3 = {wdata_hi_3,wdata_lo_3}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wdata_4 = {wdata_hi_4,wdata_lo_4}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wdata_5 = {wdata_hi_5,wdata_lo_5}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wdata_6 = {wdata_hi_6,wdata_lo_6}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wdata_7 = {wdata_hi_7,wdata_lo_7}; // @[SRAMTemplate.scala 129:102]
  assign array_RW0_wmask_0 = io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_wmask_1 = io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_wmask_2 = io_wreq_bits_waymask[2]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_wmask_3 = io_wreq_bits_waymask[3]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_wmask_4 = io_wreq_bits_waymask[4]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_wmask_5 = io_wreq_bits_waymask[5]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_wmask_6 = io_wreq_bits_waymask[6]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_wmask_7 = io_wreq_bits_waymask[7]; // @[SRAMTemplate.scala 131:51]
  assign array_RW0_en = realRen | io_wreq_valid;
  assign array_RW0_wmode = io_wreq_valid; // @[SRAMTemplate.scala 125:52]
  assign array_RW0_addr = io_wreq_valid ? io_wreq_bits_setIdx : io_rreq_bits_setIdx;
endmodule

