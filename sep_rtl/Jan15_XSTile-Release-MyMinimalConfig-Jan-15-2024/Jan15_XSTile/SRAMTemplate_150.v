module SRAMTemplate_150(
  input         clock,
  input         io_rreq_valid,
  input  [1:0]  io_rreq_bits_setIdx,
  output [12:0] io_rresp_data_0_entries_tag,
  output [15:0] io_rresp_data_0_entries_asid,
  output [23:0] io_rresp_data_0_entries_ppns_0,
  output [23:0] io_rresp_data_0_entries_ppns_1,
  output [23:0] io_rresp_data_0_entries_ppns_2,
  output [23:0] io_rresp_data_0_entries_ppns_3,
  output [23:0] io_rresp_data_0_entries_ppns_4,
  output [23:0] io_rresp_data_0_entries_ppns_5,
  output [23:0] io_rresp_data_0_entries_ppns_6,
  output [23:0] io_rresp_data_0_entries_ppns_7,
  output        io_rresp_data_0_entries_vs_0,
  output        io_rresp_data_0_entries_vs_1,
  output        io_rresp_data_0_entries_vs_2,
  output        io_rresp_data_0_entries_vs_3,
  output        io_rresp_data_0_entries_vs_4,
  output        io_rresp_data_0_entries_vs_5,
  output        io_rresp_data_0_entries_vs_6,
  output        io_rresp_data_0_entries_vs_7,
  output        io_rresp_data_0_entries_prefetch,
  output [30:0] io_rresp_data_0_ecc,
  output [12:0] io_rresp_data_1_entries_tag,
  output [15:0] io_rresp_data_1_entries_asid,
  output [23:0] io_rresp_data_1_entries_ppns_0,
  output [23:0] io_rresp_data_1_entries_ppns_1,
  output [23:0] io_rresp_data_1_entries_ppns_2,
  output [23:0] io_rresp_data_1_entries_ppns_3,
  output [23:0] io_rresp_data_1_entries_ppns_4,
  output [23:0] io_rresp_data_1_entries_ppns_5,
  output [23:0] io_rresp_data_1_entries_ppns_6,
  output [23:0] io_rresp_data_1_entries_ppns_7,
  output        io_rresp_data_1_entries_vs_0,
  output        io_rresp_data_1_entries_vs_1,
  output        io_rresp_data_1_entries_vs_2,
  output        io_rresp_data_1_entries_vs_3,
  output        io_rresp_data_1_entries_vs_4,
  output        io_rresp_data_1_entries_vs_5,
  output        io_rresp_data_1_entries_vs_6,
  output        io_rresp_data_1_entries_vs_7,
  output        io_rresp_data_1_entries_prefetch,
  output [30:0] io_rresp_data_1_ecc,
  output [12:0] io_rresp_data_2_entries_tag,
  output [15:0] io_rresp_data_2_entries_asid,
  output [23:0] io_rresp_data_2_entries_ppns_0,
  output [23:0] io_rresp_data_2_entries_ppns_1,
  output [23:0] io_rresp_data_2_entries_ppns_2,
  output [23:0] io_rresp_data_2_entries_ppns_3,
  output [23:0] io_rresp_data_2_entries_ppns_4,
  output [23:0] io_rresp_data_2_entries_ppns_5,
  output [23:0] io_rresp_data_2_entries_ppns_6,
  output [23:0] io_rresp_data_2_entries_ppns_7,
  output        io_rresp_data_2_entries_vs_0,
  output        io_rresp_data_2_entries_vs_1,
  output        io_rresp_data_2_entries_vs_2,
  output        io_rresp_data_2_entries_vs_3,
  output        io_rresp_data_2_entries_vs_4,
  output        io_rresp_data_2_entries_vs_5,
  output        io_rresp_data_2_entries_vs_6,
  output        io_rresp_data_2_entries_vs_7,
  output        io_rresp_data_2_entries_prefetch,
  output [30:0] io_rresp_data_2_ecc,
  output [12:0] io_rresp_data_3_entries_tag,
  output [15:0] io_rresp_data_3_entries_asid,
  output [23:0] io_rresp_data_3_entries_ppns_0,
  output [23:0] io_rresp_data_3_entries_ppns_1,
  output [23:0] io_rresp_data_3_entries_ppns_2,
  output [23:0] io_rresp_data_3_entries_ppns_3,
  output [23:0] io_rresp_data_3_entries_ppns_4,
  output [23:0] io_rresp_data_3_entries_ppns_5,
  output [23:0] io_rresp_data_3_entries_ppns_6,
  output [23:0] io_rresp_data_3_entries_ppns_7,
  output        io_rresp_data_3_entries_vs_0,
  output        io_rresp_data_3_entries_vs_1,
  output        io_rresp_data_3_entries_vs_2,
  output        io_rresp_data_3_entries_vs_3,
  output        io_rresp_data_3_entries_vs_4,
  output        io_rresp_data_3_entries_vs_5,
  output        io_rresp_data_3_entries_vs_6,
  output        io_rresp_data_3_entries_vs_7,
  output        io_rresp_data_3_entries_prefetch,
  output [30:0] io_rresp_data_3_ecc,
  input         io_wreq_valid,
  input  [1:0]  io_wreq_bits_setIdx,
  input  [12:0] io_wreq_bits_data_0_entries_tag,
  input  [15:0] io_wreq_bits_data_0_entries_asid,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_0_entries_ppns_7,
  input         io_wreq_bits_data_0_entries_vs_0,
  input         io_wreq_bits_data_0_entries_vs_1,
  input         io_wreq_bits_data_0_entries_vs_2,
  input         io_wreq_bits_data_0_entries_vs_3,
  input         io_wreq_bits_data_0_entries_vs_4,
  input         io_wreq_bits_data_0_entries_vs_5,
  input         io_wreq_bits_data_0_entries_vs_6,
  input         io_wreq_bits_data_0_entries_vs_7,
  input         io_wreq_bits_data_0_entries_prefetch,
  input  [30:0] io_wreq_bits_data_0_ecc,
  input  [12:0] io_wreq_bits_data_1_entries_tag,
  input  [15:0] io_wreq_bits_data_1_entries_asid,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_1_entries_ppns_7,
  input         io_wreq_bits_data_1_entries_vs_0,
  input         io_wreq_bits_data_1_entries_vs_1,
  input         io_wreq_bits_data_1_entries_vs_2,
  input         io_wreq_bits_data_1_entries_vs_3,
  input         io_wreq_bits_data_1_entries_vs_4,
  input         io_wreq_bits_data_1_entries_vs_5,
  input         io_wreq_bits_data_1_entries_vs_6,
  input         io_wreq_bits_data_1_entries_vs_7,
  input         io_wreq_bits_data_1_entries_prefetch,
  input  [30:0] io_wreq_bits_data_1_ecc,
  input  [12:0] io_wreq_bits_data_2_entries_tag,
  input  [15:0] io_wreq_bits_data_2_entries_asid,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_2_entries_ppns_7,
  input         io_wreq_bits_data_2_entries_vs_0,
  input         io_wreq_bits_data_2_entries_vs_1,
  input         io_wreq_bits_data_2_entries_vs_2,
  input         io_wreq_bits_data_2_entries_vs_3,
  input         io_wreq_bits_data_2_entries_vs_4,
  input         io_wreq_bits_data_2_entries_vs_5,
  input         io_wreq_bits_data_2_entries_vs_6,
  input         io_wreq_bits_data_2_entries_vs_7,
  input         io_wreq_bits_data_2_entries_prefetch,
  input  [30:0] io_wreq_bits_data_2_ecc,
  input  [12:0] io_wreq_bits_data_3_entries_tag,
  input  [15:0] io_wreq_bits_data_3_entries_asid,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_0,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_1,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_2,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_3,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_4,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_5,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_6,
  input  [23:0] io_wreq_bits_data_3_entries_ppns_7,
  input         io_wreq_bits_data_3_entries_vs_0,
  input         io_wreq_bits_data_3_entries_vs_1,
  input         io_wreq_bits_data_3_entries_vs_2,
  input         io_wreq_bits_data_3_entries_vs_3,
  input         io_wreq_bits_data_3_entries_vs_4,
  input         io_wreq_bits_data_3_entries_vs_5,
  input         io_wreq_bits_data_3_entries_vs_6,
  input         io_wreq_bits_data_3_entries_vs_7,
  input         io_wreq_bits_data_3_entries_prefetch,
  input  [30:0] io_wreq_bits_data_3_ecc,
  input  [3:0]  io_wreq_bits_waymask
);
  wire [1:0] array_RW0_addr; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 105:26]
  wire [260:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 105:26]
  wire [260:0] array_RW0_wdata_1; // @[SRAMTemplate.scala 105:26]
  wire [260:0] array_RW0_wdata_2; // @[SRAMTemplate.scala 105:26]
  wire [260:0] array_RW0_wdata_3; // @[SRAMTemplate.scala 105:26]
  wire [260:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 105:26]
  wire [260:0] array_RW0_rdata_1; // @[SRAMTemplate.scala 105:26]
  wire [260:0] array_RW0_rdata_2; // @[SRAMTemplate.scala 105:26]
  wire [260:0] array_RW0_rdata_3; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_0; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_1; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_2; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_3; // @[SRAMTemplate.scala 105:26]
  wire  realRen = io_rreq_valid & ~io_wreq_valid; // @[SRAMTemplate.scala 123:38]
  wire [39:0] wdata_lo = {io_wreq_bits_data_0_entries_vs_7,io_wreq_bits_data_0_entries_vs_6,
    io_wreq_bits_data_0_entries_vs_5,io_wreq_bits_data_0_entries_vs_4,io_wreq_bits_data_0_entries_vs_3,
    io_wreq_bits_data_0_entries_vs_2,io_wreq_bits_data_0_entries_vs_1,io_wreq_bits_data_0_entries_vs_0,
    io_wreq_bits_data_0_entries_prefetch,io_wreq_bits_data_0_ecc}; // @[SRAMTemplate.scala 126:102]
  wire [220:0] wdata_hi = {io_wreq_bits_data_0_entries_tag,io_wreq_bits_data_0_entries_asid,
    io_wreq_bits_data_0_entries_ppns_7,io_wreq_bits_data_0_entries_ppns_6,io_wreq_bits_data_0_entries_ppns_5,
    io_wreq_bits_data_0_entries_ppns_4,io_wreq_bits_data_0_entries_ppns_3,io_wreq_bits_data_0_entries_ppns_2,
    io_wreq_bits_data_0_entries_ppns_1,io_wreq_bits_data_0_entries_ppns_0}; // @[SRAMTemplate.scala 126:102]
  wire [39:0] wdata_lo_1 = {io_wreq_bits_data_1_entries_vs_7,io_wreq_bits_data_1_entries_vs_6,
    io_wreq_bits_data_1_entries_vs_5,io_wreq_bits_data_1_entries_vs_4,io_wreq_bits_data_1_entries_vs_3,
    io_wreq_bits_data_1_entries_vs_2,io_wreq_bits_data_1_entries_vs_1,io_wreq_bits_data_1_entries_vs_0,
    io_wreq_bits_data_1_entries_prefetch,io_wreq_bits_data_1_ecc}; // @[SRAMTemplate.scala 126:102]
  wire [220:0] wdata_hi_1 = {io_wreq_bits_data_1_entries_tag,io_wreq_bits_data_1_entries_asid,
    io_wreq_bits_data_1_entries_ppns_7,io_wreq_bits_data_1_entries_ppns_6,io_wreq_bits_data_1_entries_ppns_5,
    io_wreq_bits_data_1_entries_ppns_4,io_wreq_bits_data_1_entries_ppns_3,io_wreq_bits_data_1_entries_ppns_2,
    io_wreq_bits_data_1_entries_ppns_1,io_wreq_bits_data_1_entries_ppns_0}; // @[SRAMTemplate.scala 126:102]
  wire [39:0] wdata_lo_2 = {io_wreq_bits_data_2_entries_vs_7,io_wreq_bits_data_2_entries_vs_6,
    io_wreq_bits_data_2_entries_vs_5,io_wreq_bits_data_2_entries_vs_4,io_wreq_bits_data_2_entries_vs_3,
    io_wreq_bits_data_2_entries_vs_2,io_wreq_bits_data_2_entries_vs_1,io_wreq_bits_data_2_entries_vs_0,
    io_wreq_bits_data_2_entries_prefetch,io_wreq_bits_data_2_ecc}; // @[SRAMTemplate.scala 126:102]
  wire [220:0] wdata_hi_2 = {io_wreq_bits_data_2_entries_tag,io_wreq_bits_data_2_entries_asid,
    io_wreq_bits_data_2_entries_ppns_7,io_wreq_bits_data_2_entries_ppns_6,io_wreq_bits_data_2_entries_ppns_5,
    io_wreq_bits_data_2_entries_ppns_4,io_wreq_bits_data_2_entries_ppns_3,io_wreq_bits_data_2_entries_ppns_2,
    io_wreq_bits_data_2_entries_ppns_1,io_wreq_bits_data_2_entries_ppns_0}; // @[SRAMTemplate.scala 126:102]
  wire [39:0] wdata_lo_3 = {io_wreq_bits_data_3_entries_vs_7,io_wreq_bits_data_3_entries_vs_6,
    io_wreq_bits_data_3_entries_vs_5,io_wreq_bits_data_3_entries_vs_4,io_wreq_bits_data_3_entries_vs_3,
    io_wreq_bits_data_3_entries_vs_2,io_wreq_bits_data_3_entries_vs_1,io_wreq_bits_data_3_entries_vs_0,
    io_wreq_bits_data_3_entries_prefetch,io_wreq_bits_data_3_ecc}; // @[SRAMTemplate.scala 126:102]
  wire [220:0] wdata_hi_3 = {io_wreq_bits_data_3_entries_tag,io_wreq_bits_data_3_entries_asid,
    io_wreq_bits_data_3_entries_ppns_7,io_wreq_bits_data_3_entries_ppns_6,io_wreq_bits_data_3_entries_ppns_5,
    io_wreq_bits_data_3_entries_ppns_4,io_wreq_bits_data_3_entries_ppns_3,io_wreq_bits_data_3_entries_ppns_2,
    io_wreq_bits_data_3_entries_ppns_1,io_wreq_bits_data_3_entries_ppns_0}; // @[SRAMTemplate.scala 126:102]
  wire [260:0] _rdata_WIRE = array_RW0_rdata_0;
  wire [260:0] _rdata_WIRE_1 = array_RW0_rdata_1;
  wire [260:0] _rdata_WIRE_2 = array_RW0_rdata_2;
  wire [260:0] _rdata_WIRE_3 = array_RW0_rdata_3;
  array_16 array ( // @[SRAMTemplate.scala 105:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_wdata_1(array_RW0_wdata_1),
    .RW0_wdata_2(array_RW0_wdata_2),
    .RW0_wdata_3(array_RW0_wdata_3),
    .RW0_rdata_0(array_RW0_rdata_0),
    .RW0_rdata_1(array_RW0_rdata_1),
    .RW0_rdata_2(array_RW0_rdata_2),
    .RW0_rdata_3(array_RW0_rdata_3),
    .RW0_wmask_0(array_RW0_wmask_0),
    .RW0_wmask_1(array_RW0_wmask_1),
    .RW0_wmask_2(array_RW0_wmask_2),
    .RW0_wmask_3(array_RW0_wmask_3)
  );
  assign io_rresp_data_0_entries_tag = _rdata_WIRE[260:248]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_asid = _rdata_WIRE[247:232]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_0 = _rdata_WIRE[63:40]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_1 = _rdata_WIRE[87:64]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_2 = _rdata_WIRE[111:88]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_3 = _rdata_WIRE[135:112]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_4 = _rdata_WIRE[159:136]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_5 = _rdata_WIRE[183:160]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_6 = _rdata_WIRE[207:184]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_ppns_7 = _rdata_WIRE[231:208]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_0 = _rdata_WIRE[32]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_1 = _rdata_WIRE[33]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_2 = _rdata_WIRE[34]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_3 = _rdata_WIRE[35]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_4 = _rdata_WIRE[36]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_5 = _rdata_WIRE[37]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_6 = _rdata_WIRE[38]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_vs_7 = _rdata_WIRE[39]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entries_prefetch = _rdata_WIRE[31]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_ecc = _rdata_WIRE[30:0]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_tag = _rdata_WIRE_1[260:248]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_asid = _rdata_WIRE_1[247:232]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_0 = _rdata_WIRE_1[63:40]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_1 = _rdata_WIRE_1[87:64]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_2 = _rdata_WIRE_1[111:88]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_3 = _rdata_WIRE_1[135:112]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_4 = _rdata_WIRE_1[159:136]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_5 = _rdata_WIRE_1[183:160]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_6 = _rdata_WIRE_1[207:184]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_ppns_7 = _rdata_WIRE_1[231:208]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_0 = _rdata_WIRE_1[32]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_1 = _rdata_WIRE_1[33]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_2 = _rdata_WIRE_1[34]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_3 = _rdata_WIRE_1[35]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_4 = _rdata_WIRE_1[36]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_5 = _rdata_WIRE_1[37]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_6 = _rdata_WIRE_1[38]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_vs_7 = _rdata_WIRE_1[39]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entries_prefetch = _rdata_WIRE_1[31]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_ecc = _rdata_WIRE_1[30:0]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_tag = _rdata_WIRE_2[260:248]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_asid = _rdata_WIRE_2[247:232]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_0 = _rdata_WIRE_2[63:40]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_1 = _rdata_WIRE_2[87:64]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_2 = _rdata_WIRE_2[111:88]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_3 = _rdata_WIRE_2[135:112]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_4 = _rdata_WIRE_2[159:136]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_5 = _rdata_WIRE_2[183:160]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_6 = _rdata_WIRE_2[207:184]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_ppns_7 = _rdata_WIRE_2[231:208]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_0 = _rdata_WIRE_2[32]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_1 = _rdata_WIRE_2[33]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_2 = _rdata_WIRE_2[34]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_3 = _rdata_WIRE_2[35]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_4 = _rdata_WIRE_2[36]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_5 = _rdata_WIRE_2[37]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_6 = _rdata_WIRE_2[38]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_vs_7 = _rdata_WIRE_2[39]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entries_prefetch = _rdata_WIRE_2[31]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_ecc = _rdata_WIRE_2[30:0]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_tag = _rdata_WIRE_3[260:248]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_asid = _rdata_WIRE_3[247:232]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_0 = _rdata_WIRE_3[63:40]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_1 = _rdata_WIRE_3[87:64]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_2 = _rdata_WIRE_3[111:88]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_3 = _rdata_WIRE_3[135:112]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_4 = _rdata_WIRE_3[159:136]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_5 = _rdata_WIRE_3[183:160]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_6 = _rdata_WIRE_3[207:184]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_ppns_7 = _rdata_WIRE_3[231:208]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_0 = _rdata_WIRE_3[32]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_1 = _rdata_WIRE_3[33]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_2 = _rdata_WIRE_3[34]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_3 = _rdata_WIRE_3[35]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_4 = _rdata_WIRE_3[36]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_5 = _rdata_WIRE_3[37]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_6 = _rdata_WIRE_3[38]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_vs_7 = _rdata_WIRE_3[39]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entries_prefetch = _rdata_WIRE_3[31]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_ecc = _rdata_WIRE_3[30:0]; // @[SRAMTemplate.scala 154:45]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 128:14]
  assign array_RW0_wdata_0 = {wdata_hi,wdata_lo}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wdata_1 = {wdata_hi_1,wdata_lo_1}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wdata_2 = {wdata_hi_2,wdata_lo_2}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wdata_3 = {wdata_hi_3,wdata_lo_3}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wmask_0 = io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_1 = io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_2 = io_wreq_bits_waymask[2]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_3 = io_wreq_bits_waymask[3]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_en = realRen | io_wreq_valid;
  assign array_RW0_wmode = io_wreq_valid; // @[SRAMTemplate.scala 122:52]
  assign array_RW0_addr = io_wreq_valid ? io_wreq_bits_setIdx : io_rreq_bits_setIdx;
endmodule

