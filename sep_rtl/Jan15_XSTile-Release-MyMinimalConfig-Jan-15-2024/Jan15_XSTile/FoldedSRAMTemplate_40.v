module FoldedSRAMTemplate_40(
  input         clock,
  input         reset,
  input         io_rreq_valid,
  input  [7:0]  io_rreq_bits_setIdx,
  output [8:0]  io_rresp_data_0_tag,
  output [1:0]  io_rresp_data_0_ctr,
  output [38:0] io_rresp_data_0_target,
  input         io_wreq_valid,
  input  [7:0]  io_wreq_bits_setIdx,
  input  [8:0]  io_wreq_bits_data_0_tag,
  input  [1:0]  io_wreq_bits_data_0_ctr,
  input  [38:0] io_wreq_bits_data_0_target
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  array_clock; // @[SRAMTemplate.scala 179:21]
  wire  array_reset; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rreq_valid; // @[SRAMTemplate.scala 179:21]
  wire [6:0] array_io_rreq_bits_setIdx; // @[SRAMTemplate.scala 179:21]
  wire [8:0] array_io_rresp_data_0_tag; // @[SRAMTemplate.scala 179:21]
  wire [1:0] array_io_rresp_data_0_ctr; // @[SRAMTemplate.scala 179:21]
  wire [38:0] array_io_rresp_data_0_target; // @[SRAMTemplate.scala 179:21]
  wire [8:0] array_io_rresp_data_1_tag; // @[SRAMTemplate.scala 179:21]
  wire [1:0] array_io_rresp_data_1_ctr; // @[SRAMTemplate.scala 179:21]
  wire [38:0] array_io_rresp_data_1_target; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_valid; // @[SRAMTemplate.scala 179:21]
  wire [6:0] array_io_wreq_bits_setIdx; // @[SRAMTemplate.scala 179:21]
  wire [8:0] array_io_wreq_bits_data_0_tag; // @[SRAMTemplate.scala 179:21]
  wire [1:0] array_io_wreq_bits_data_0_ctr; // @[SRAMTemplate.scala 179:21]
  wire [38:0] array_io_wreq_bits_data_0_target; // @[SRAMTemplate.scala 179:21]
  wire [8:0] array_io_wreq_bits_data_1_tag; // @[SRAMTemplate.scala 179:21]
  wire [1:0] array_io_wreq_bits_data_1_ctr; // @[SRAMTemplate.scala 179:21]
  wire [38:0] array_io_wreq_bits_data_1_target; // @[SRAMTemplate.scala 179:21]
  wire [1:0] array_io_wreq_bits_waymask; // @[SRAMTemplate.scala 179:21]
  reg  ridx; // @[SRAMTemplate.scala 189:21]
  reg  holdRidx_REG; // @[SRAMTemplate.scala 198:44]
  reg  holdRidx_hold_data; // @[Reg.scala 16:16]
  wire  _GEN_0 = holdRidx_REG ? ridx : holdRidx_hold_data; // @[Reg.scala 16:16 17:{18,22}]
  wire [1:0] _io_rresp_data_0_T = 2'h1 << _GEN_0; // @[OneHot.scala 64:12]
  wire [38:0] wayData_0_target = array_io_rresp_data_0_target; // @[SRAMTemplate.scala 197:{26,26}]
  wire [38:0] _io_rresp_data_0_T_4 = _io_rresp_data_0_T[0] ? wayData_0_target : 39'h0; // @[Mux.scala 27:73]
  wire [38:0] wayData_1_target = array_io_rresp_data_1_target; // @[SRAMTemplate.scala 197:{26,26}]
  wire [38:0] _io_rresp_data_0_T_5 = _io_rresp_data_0_T[1] ? wayData_1_target : 39'h0; // @[Mux.scala 27:73]
  wire [1:0] wayData_0_ctr = array_io_rresp_data_0_ctr; // @[SRAMTemplate.scala 197:{26,26}]
  wire [1:0] _io_rresp_data_0_T_7 = _io_rresp_data_0_T[0] ? wayData_0_ctr : 2'h0; // @[Mux.scala 27:73]
  wire [1:0] wayData_1_ctr = array_io_rresp_data_1_ctr; // @[SRAMTemplate.scala 197:{26,26}]
  wire [1:0] _io_rresp_data_0_T_8 = _io_rresp_data_0_T[1] ? wayData_1_ctr : 2'h0; // @[Mux.scala 27:73]
  wire [8:0] wayData_0_tag = array_io_rresp_data_0_tag; // @[SRAMTemplate.scala 197:{26,26}]
  wire [8:0] _io_rresp_data_0_T_10 = _io_rresp_data_0_T[0] ? wayData_0_tag : 9'h0; // @[Mux.scala 27:73]
  wire [8:0] wayData_1_tag = array_io_rresp_data_1_tag; // @[SRAMTemplate.scala 197:{26,26}]
  wire [8:0] _io_rresp_data_0_T_11 = _io_rresp_data_0_T[1] ? wayData_1_tag : 9'h0; // @[Mux.scala 27:73]
  wire  widthIdx = io_wreq_bits_setIdx[0]; // @[SRAMTemplate.scala 206:54]
  SRAMTemplate_62 array ( // @[SRAMTemplate.scala 179:21]
    .clock(array_clock),
    .reset(array_reset),
    .io_rreq_valid(array_io_rreq_valid),
    .io_rreq_bits_setIdx(array_io_rreq_bits_setIdx),
    .io_rresp_data_0_tag(array_io_rresp_data_0_tag),
    .io_rresp_data_0_ctr(array_io_rresp_data_0_ctr),
    .io_rresp_data_0_target(array_io_rresp_data_0_target),
    .io_rresp_data_1_tag(array_io_rresp_data_1_tag),
    .io_rresp_data_1_ctr(array_io_rresp_data_1_ctr),
    .io_rresp_data_1_target(array_io_rresp_data_1_target),
    .io_wreq_valid(array_io_wreq_valid),
    .io_wreq_bits_setIdx(array_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_tag(array_io_wreq_bits_data_0_tag),
    .io_wreq_bits_data_0_ctr(array_io_wreq_bits_data_0_ctr),
    .io_wreq_bits_data_0_target(array_io_wreq_bits_data_0_target),
    .io_wreq_bits_data_1_tag(array_io_wreq_bits_data_1_tag),
    .io_wreq_bits_data_1_ctr(array_io_wreq_bits_data_1_ctr),
    .io_wreq_bits_data_1_target(array_io_wreq_bits_data_1_target),
    .io_wreq_bits_waymask(array_io_wreq_bits_waymask)
  );
  assign io_rresp_data_0_tag = _io_rresp_data_0_T_10 | _io_rresp_data_0_T_11; // @[Mux.scala 27:73]
  assign io_rresp_data_0_ctr = _io_rresp_data_0_T_7 | _io_rresp_data_0_T_8; // @[Mux.scala 27:73]
  assign io_rresp_data_0_target = _io_rresp_data_0_T_4 | _io_rresp_data_0_T_5; // @[Mux.scala 27:73]
  assign array_clock = clock;
  assign array_reset = reset;
  assign array_io_rreq_valid = io_rreq_valid; // @[SRAMTemplate.scala 192:24]
  assign array_io_rreq_bits_setIdx = io_rreq_bits_setIdx[7:1]; // @[SRAMTemplate.scala 188:36]
  assign array_io_wreq_valid = io_wreq_valid; // @[SRAMTemplate.scala 84:20]
  assign array_io_wreq_bits_setIdx = io_wreq_bits_setIdx[7:1]; // @[SRAMTemplate.scala 205:36]
  assign array_io_wreq_bits_data_0_tag = io_wreq_bits_data_0_tag; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_0_ctr = io_wreq_bits_data_0_ctr; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_0_target = io_wreq_bits_data_0_target; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_1_tag = io_wreq_bits_data_0_tag; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_1_ctr = io_wreq_bits_data_0_ctr; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_1_target = io_wreq_bits_data_0_target; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_waymask = 2'h1 << widthIdx; // @[OneHot.scala 57:35]
  always @(posedge clock) begin
    ridx <= io_rreq_bits_setIdx[0]; // @[SRAMTemplate.scala 189:58]
    holdRidx_REG <= io_rreq_valid; // @[SRAMTemplate.scala 198:44]
    if (holdRidx_REG) begin // @[Reg.scala 17:18]
      holdRidx_hold_data <= ridx; // @[Reg.scala 17:22]
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
  ridx = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  holdRidx_REG = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  holdRidx_hold_data = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

