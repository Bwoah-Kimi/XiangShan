module TagArray(
  input         clock,
  input         reset,
  output        io_read_ready,
  input         io_read_valid,
  input  [5:0]  io_read_bits_idx,
  output [23:0] io_resp_0,
  output [23:0] io_resp_1,
  output [23:0] io_resp_2,
  output [23:0] io_resp_3,
  output [23:0] io_resp_4,
  output [23:0] io_resp_5,
  output [23:0] io_resp_6,
  output [23:0] io_resp_7,
  input         io_write_valid,
  input  [5:0]  io_write_bits_idx,
  input  [7:0]  io_write_bits_way_en,
  input  [23:0] io_write_bits_tag,
  output        io_ecc_read_ready,
  input         io_ecc_read_valid,
  input  [5:0]  io_ecc_read_bits_idx,
  output [5:0]  io_ecc_resp_0,
  output [5:0]  io_ecc_resp_1,
  output [5:0]  io_ecc_resp_2,
  output [5:0]  io_ecc_resp_3,
  output [5:0]  io_ecc_resp_4,
  output [5:0]  io_ecc_resp_5,
  output [5:0]  io_ecc_resp_6,
  output [5:0]  io_ecc_resp_7,
  input         io_ecc_write_valid,
  input  [5:0]  io_ecc_write_bits_idx,
  input  [7:0]  io_ecc_write_bits_way_en,
  input  [5:0]  io_ecc_write_bits_ecc
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  tag_array_clock; // @[TagArray.scala 62:25]
  wire  tag_array_io_rreq_valid; // @[TagArray.scala 62:25]
  wire [5:0] tag_array_io_rreq_bits_setIdx; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_rresp_data_0; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_rresp_data_1; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_rresp_data_2; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_rresp_data_3; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_rresp_data_4; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_rresp_data_5; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_rresp_data_6; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_rresp_data_7; // @[TagArray.scala 62:25]
  wire  tag_array_io_wreq_valid; // @[TagArray.scala 62:25]
  wire [5:0] tag_array_io_wreq_bits_setIdx; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_wreq_bits_data_0; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_wreq_bits_data_1; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_wreq_bits_data_2; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_wreq_bits_data_3; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_wreq_bits_data_4; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_wreq_bits_data_5; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_wreq_bits_data_6; // @[TagArray.scala 62:25]
  wire [23:0] tag_array_io_wreq_bits_data_7; // @[TagArray.scala 62:25]
  wire [7:0] tag_array_io_wreq_bits_waymask; // @[TagArray.scala 62:25]
  wire  ecc_array_clock; // @[TagArray.scala 65:25]
  wire  ecc_array_io_rreq_valid; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_rreq_bits_setIdx; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_rresp_data_0; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_rresp_data_1; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_rresp_data_2; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_rresp_data_3; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_rresp_data_4; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_rresp_data_5; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_rresp_data_6; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_rresp_data_7; // @[TagArray.scala 65:25]
  wire  ecc_array_io_wreq_valid; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_wreq_bits_setIdx; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_wreq_bits_data_0; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_wreq_bits_data_1; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_wreq_bits_data_2; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_wreq_bits_data_3; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_wreq_bits_data_4; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_wreq_bits_data_5; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_wreq_bits_data_6; // @[TagArray.scala 65:25]
  wire [5:0] ecc_array_io_wreq_bits_data_7; // @[TagArray.scala 65:25]
  wire [7:0] ecc_array_io_wreq_bits_waymask; // @[TagArray.scala 65:25]
  reg [6:0] rst_cnt; // @[TagArray.scala 51:24]
  wire  rst = rst_cnt < 7'h40; // @[TagArray.scala 52:21]
  wire [6:0] waddr = rst ? rst_cnt : {{1'd0}, io_write_bits_idx}; // @[TagArray.scala 54:18]
  wire [7:0] _wmask_T_2 = rst ? $signed(-8'sh1) : $signed(io_write_bits_way_en); // @[TagArray.scala 56:18]
  wire  wmask_0 = _wmask_T_2[0]; // @[TagArray.scala 56:84]
  wire  wmask_1 = _wmask_T_2[1]; // @[TagArray.scala 56:84]
  wire  wmask_2 = _wmask_T_2[2]; // @[TagArray.scala 56:84]
  wire  wmask_3 = _wmask_T_2[3]; // @[TagArray.scala 56:84]
  wire  wmask_4 = _wmask_T_2[4]; // @[TagArray.scala 56:84]
  wire  wmask_5 = _wmask_T_2[5]; // @[TagArray.scala 56:84]
  wire  wmask_6 = _wmask_T_2[6]; // @[TagArray.scala 56:84]
  wire  wmask_7 = _wmask_T_2[7]; // @[TagArray.scala 56:84]
  wire [6:0] _rst_cnt_T_1 = rst_cnt + 7'h1; // @[TagArray.scala 59:24]
  wire  wen = rst | io_write_valid; // @[TagArray.scala 68:17]
  wire [3:0] x19_lo = {wmask_3,wmask_2,wmask_1,wmask_0}; // @[TagArray.scala 73:36]
  wire [3:0] x19_hi = {wmask_7,wmask_6,wmask_5,wmask_4}; // @[TagArray.scala 73:36]
  wire  ecc_wen = rst | io_ecc_write_valid; // @[TagArray.scala 76:21]
  wire [6:0] ecc_waddr = rst ? rst_cnt : {{1'd0}, io_ecc_write_bits_idx}; // @[TagArray.scala 77:22]
  wire [7:0] _ecc_wmask_T_2 = rst ? $signed(-8'sh1) : $signed(io_ecc_write_bits_way_en); // @[TagArray.scala 79:22]
  wire  ecc_wmask_0 = _ecc_wmask_T_2[0]; // @[TagArray.scala 79:92]
  wire  ecc_wmask_1 = _ecc_wmask_T_2[1]; // @[TagArray.scala 79:92]
  wire  ecc_wmask_2 = _ecc_wmask_T_2[2]; // @[TagArray.scala 79:92]
  wire  ecc_wmask_3 = _ecc_wmask_T_2[3]; // @[TagArray.scala 79:92]
  wire  ecc_wmask_4 = _ecc_wmask_T_2[4]; // @[TagArray.scala 79:92]
  wire  ecc_wmask_5 = _ecc_wmask_T_2[5]; // @[TagArray.scala 79:92]
  wire  ecc_wmask_6 = _ecc_wmask_T_2[6]; // @[TagArray.scala 79:92]
  wire  ecc_wmask_7 = _ecc_wmask_T_2[7]; // @[TagArray.scala 79:92]
  wire [3:0] x22_lo = {ecc_wmask_3,ecc_wmask_2,ecc_wmask_1,ecc_wmask_0}; // @[TagArray.scala 84:40]
  wire [3:0] x22_hi = {ecc_wmask_7,ecc_wmask_6,ecc_wmask_5,ecc_wmask_4}; // @[TagArray.scala 84:40]
  SRAMTemplate_144 tag_array ( // @[TagArray.scala 62:25]
    .clock(tag_array_clock),
    .io_rreq_valid(tag_array_io_rreq_valid),
    .io_rreq_bits_setIdx(tag_array_io_rreq_bits_setIdx),
    .io_rresp_data_0(tag_array_io_rresp_data_0),
    .io_rresp_data_1(tag_array_io_rresp_data_1),
    .io_rresp_data_2(tag_array_io_rresp_data_2),
    .io_rresp_data_3(tag_array_io_rresp_data_3),
    .io_rresp_data_4(tag_array_io_rresp_data_4),
    .io_rresp_data_5(tag_array_io_rresp_data_5),
    .io_rresp_data_6(tag_array_io_rresp_data_6),
    .io_rresp_data_7(tag_array_io_rresp_data_7),
    .io_wreq_valid(tag_array_io_wreq_valid),
    .io_wreq_bits_setIdx(tag_array_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(tag_array_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(tag_array_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(tag_array_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(tag_array_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(tag_array_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(tag_array_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(tag_array_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(tag_array_io_wreq_bits_data_7),
    .io_wreq_bits_waymask(tag_array_io_wreq_bits_waymask)
  );
  SRAMTemplate_145 ecc_array ( // @[TagArray.scala 65:25]
    .clock(ecc_array_clock),
    .io_rreq_valid(ecc_array_io_rreq_valid),
    .io_rreq_bits_setIdx(ecc_array_io_rreq_bits_setIdx),
    .io_rresp_data_0(ecc_array_io_rresp_data_0),
    .io_rresp_data_1(ecc_array_io_rresp_data_1),
    .io_rresp_data_2(ecc_array_io_rresp_data_2),
    .io_rresp_data_3(ecc_array_io_rresp_data_3),
    .io_rresp_data_4(ecc_array_io_rresp_data_4),
    .io_rresp_data_5(ecc_array_io_rresp_data_5),
    .io_rresp_data_6(ecc_array_io_rresp_data_6),
    .io_rresp_data_7(ecc_array_io_rresp_data_7),
    .io_wreq_valid(ecc_array_io_wreq_valid),
    .io_wreq_bits_setIdx(ecc_array_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(ecc_array_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(ecc_array_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(ecc_array_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(ecc_array_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(ecc_array_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(ecc_array_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(ecc_array_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(ecc_array_io_wreq_bits_data_7),
    .io_wreq_bits_waymask(ecc_array_io_wreq_bits_waymask)
  );
  assign io_read_ready = ~wen; // @[TagArray.scala 101:20]
  assign io_resp_0 = tag_array_io_rresp_data_0; // @[TagArray.scala 92:11]
  assign io_resp_1 = tag_array_io_rresp_data_1; // @[TagArray.scala 92:11]
  assign io_resp_2 = tag_array_io_rresp_data_2; // @[TagArray.scala 92:11]
  assign io_resp_3 = tag_array_io_rresp_data_3; // @[TagArray.scala 92:11]
  assign io_resp_4 = tag_array_io_rresp_data_4; // @[TagArray.scala 92:11]
  assign io_resp_5 = tag_array_io_rresp_data_5; // @[TagArray.scala 92:11]
  assign io_resp_6 = tag_array_io_rresp_data_6; // @[TagArray.scala 92:11]
  assign io_resp_7 = tag_array_io_rresp_data_7; // @[TagArray.scala 92:11]
  assign io_ecc_read_ready = ~ecc_wen; // @[TagArray.scala 103:24]
  assign io_ecc_resp_0 = ecc_array_io_rresp_data_0; // @[TagArray.scala 98:15]
  assign io_ecc_resp_1 = ecc_array_io_rresp_data_1; // @[TagArray.scala 98:15]
  assign io_ecc_resp_2 = ecc_array_io_rresp_data_2; // @[TagArray.scala 98:15]
  assign io_ecc_resp_3 = ecc_array_io_rresp_data_3; // @[TagArray.scala 98:15]
  assign io_ecc_resp_4 = ecc_array_io_rresp_data_4; // @[TagArray.scala 98:15]
  assign io_ecc_resp_5 = ecc_array_io_rresp_data_5; // @[TagArray.scala 98:15]
  assign io_ecc_resp_6 = ecc_array_io_rresp_data_6; // @[TagArray.scala 98:15]
  assign io_ecc_resp_7 = ecc_array_io_rresp_data_7; // @[TagArray.scala 98:15]
  assign tag_array_clock = clock;
  assign tag_array_io_rreq_valid = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  assign tag_array_io_rreq_bits_setIdx = io_read_bits_idx; // @[SRAMTemplate.scala 42:17]
  assign tag_array_io_wreq_valid = rst | io_write_valid; // @[TagArray.scala 68:17]
  assign tag_array_io_wreq_bits_setIdx = waddr[5:0]; // @[SRAMTemplate.scala 42:17]
  assign tag_array_io_wreq_bits_data_0 = rst ? 24'h0 : io_write_bits_tag; // @[TagArray.scala 55:18]
  assign tag_array_io_wreq_bits_data_1 = rst ? 24'h0 : io_write_bits_tag; // @[TagArray.scala 55:18]
  assign tag_array_io_wreq_bits_data_2 = rst ? 24'h0 : io_write_bits_tag; // @[TagArray.scala 55:18]
  assign tag_array_io_wreq_bits_data_3 = rst ? 24'h0 : io_write_bits_tag; // @[TagArray.scala 55:18]
  assign tag_array_io_wreq_bits_data_4 = rst ? 24'h0 : io_write_bits_tag; // @[TagArray.scala 55:18]
  assign tag_array_io_wreq_bits_data_5 = rst ? 24'h0 : io_write_bits_tag; // @[TagArray.scala 55:18]
  assign tag_array_io_wreq_bits_data_6 = rst ? 24'h0 : io_write_bits_tag; // @[TagArray.scala 55:18]
  assign tag_array_io_wreq_bits_data_7 = rst ? 24'h0 : io_write_bits_tag; // @[TagArray.scala 55:18]
  assign tag_array_io_wreq_bits_waymask = {x19_hi,x19_lo}; // @[TagArray.scala 73:36]
  assign ecc_array_clock = clock;
  assign ecc_array_io_rreq_valid = io_ecc_read_ready & io_ecc_read_valid; // @[Decoupled.scala 50:35]
  assign ecc_array_io_rreq_bits_setIdx = io_ecc_read_bits_idx; // @[SRAMTemplate.scala 42:17]
  assign ecc_array_io_wreq_valid = rst | io_ecc_write_valid; // @[TagArray.scala 76:21]
  assign ecc_array_io_wreq_bits_setIdx = ecc_waddr[5:0]; // @[SRAMTemplate.scala 42:17]
  assign ecc_array_io_wreq_bits_data_0 = rst ? 6'h0 : io_ecc_write_bits_ecc; // @[TagArray.scala 78:22]
  assign ecc_array_io_wreq_bits_data_1 = rst ? 6'h0 : io_ecc_write_bits_ecc; // @[TagArray.scala 78:22]
  assign ecc_array_io_wreq_bits_data_2 = rst ? 6'h0 : io_ecc_write_bits_ecc; // @[TagArray.scala 78:22]
  assign ecc_array_io_wreq_bits_data_3 = rst ? 6'h0 : io_ecc_write_bits_ecc; // @[TagArray.scala 78:22]
  assign ecc_array_io_wreq_bits_data_4 = rst ? 6'h0 : io_ecc_write_bits_ecc; // @[TagArray.scala 78:22]
  assign ecc_array_io_wreq_bits_data_5 = rst ? 6'h0 : io_ecc_write_bits_ecc; // @[TagArray.scala 78:22]
  assign ecc_array_io_wreq_bits_data_6 = rst ? 6'h0 : io_ecc_write_bits_ecc; // @[TagArray.scala 78:22]
  assign ecc_array_io_wreq_bits_data_7 = rst ? 6'h0 : io_ecc_write_bits_ecc; // @[TagArray.scala 78:22]
  assign ecc_array_io_wreq_bits_waymask = {x22_hi,x22_lo}; // @[TagArray.scala 84:40]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[TagArray.scala 58:14]
      rst_cnt <= 7'h0; // @[TagArray.scala 59:13]
    end else if (rst) begin // @[TagArray.scala 51:24]
      rst_cnt <= _rst_cnt_T_1;
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
  rst_cnt = _RAND_0[6:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    rst_cnt = 7'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

