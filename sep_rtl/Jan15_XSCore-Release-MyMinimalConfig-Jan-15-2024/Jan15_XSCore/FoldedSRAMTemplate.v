module FoldedSRAMTemplate(
  input         clock,
  input         reset,
  input         io_rreq_valid,
  input  [10:0] io_rreq_bits_setIdx,
  output        io_rresp_data_0,
  output        io_rresp_data_1,
  input         io_wreq_valid,
  input  [10:0] io_wreq_bits_setIdx,
  input         io_wreq_bits_data_0,
  input         io_wreq_bits_data_1,
  input  [1:0]  io_wreq_bits_waymask,
  input         extra_reset
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  array_clock; // @[SRAMTemplate.scala 179:21]
  wire  array_reset; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rreq_valid; // @[SRAMTemplate.scala 179:21]
  wire [7:0] array_io_rreq_bits_setIdx; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_0; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_1; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_2; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_3; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_4; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_5; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_6; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_7; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_8; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_9; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_10; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_11; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_12; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_13; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_14; // @[SRAMTemplate.scala 179:21]
  wire  array_io_rresp_data_15; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_valid; // @[SRAMTemplate.scala 179:21]
  wire [7:0] array_io_wreq_bits_setIdx; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_0; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_1; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_2; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_3; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_4; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_5; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_6; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_7; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_8; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_9; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_10; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_11; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_12; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_13; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_14; // @[SRAMTemplate.scala 179:21]
  wire  array_io_wreq_bits_data_15; // @[SRAMTemplate.scala 179:21]
  wire [15:0] array_io_wreq_bits_waymask; // @[SRAMTemplate.scala 179:21]
  wire  array_extra_reset; // @[SRAMTemplate.scala 179:21]
  reg [2:0] ridx; // @[SRAMTemplate.scala 189:21]
  reg  holdRidx_REG; // @[SRAMTemplate.scala 198:44]
  reg [2:0] holdRidx_hold_data; // @[Reg.scala 16:16]
  wire [2:0] _GEN_0 = holdRidx_REG ? ridx : holdRidx_hold_data; // @[Reg.scala 16:16 17:{18,22}]
  wire [7:0] _io_rresp_data_0_T = 8'h1 << _GEN_0; // @[OneHot.scala 64:12]
  wire  wayData__0 = array_io_rresp_data_0; // @[SRAMTemplate.scala 197:{26,26}]
  wire  wayData__1 = array_io_rresp_data_2; // @[SRAMTemplate.scala 197:{26,26}]
  wire  wayData__2 = array_io_rresp_data_4; // @[SRAMTemplate.scala 197:{26,26}]
  wire  wayData__3 = array_io_rresp_data_6; // @[SRAMTemplate.scala 197:{26,26}]
  wire  wayData__4 = array_io_rresp_data_8; // @[SRAMTemplate.scala 197:{26,26}]
  wire  wayData__5 = array_io_rresp_data_10; // @[SRAMTemplate.scala 197:{26,26}]
  wire  wayData__6 = array_io_rresp_data_12; // @[SRAMTemplate.scala 197:{26,26}]
  wire  wayData__7 = array_io_rresp_data_14; // @[SRAMTemplate.scala 197:{26,26}]
  reg  holdRidx_REG_1; // @[SRAMTemplate.scala 198:44]
  reg [2:0] holdRidx_hold_data_1; // @[Reg.scala 16:16]
  wire [2:0] _GEN_1 = holdRidx_REG_1 ? ridx : holdRidx_hold_data_1; // @[Reg.scala 16:16 17:{18,22}]
  wire [7:0] _io_rresp_data_1_T = 8'h1 << _GEN_1; // @[OneHot.scala 64:12]
  wire  wayData_1_0 = array_io_rresp_data_1; // @[SRAMTemplate.scala 197:{26,26}]
  wire  wayData_1_1 = array_io_rresp_data_3; // @[SRAMTemplate.scala 197:{26,26}]
  wire  wayData_1_2 = array_io_rresp_data_5; // @[SRAMTemplate.scala 197:{26,26}]
  wire  wayData_1_3 = array_io_rresp_data_7; // @[SRAMTemplate.scala 197:{26,26}]
  wire  wayData_1_4 = array_io_rresp_data_9; // @[SRAMTemplate.scala 197:{26,26}]
  wire  wayData_1_5 = array_io_rresp_data_11; // @[SRAMTemplate.scala 197:{26,26}]
  wire  wayData_1_6 = array_io_rresp_data_13; // @[SRAMTemplate.scala 197:{26,26}]
  wire  wayData_1_7 = array_io_rresp_data_15; // @[SRAMTemplate.scala 197:{26,26}]
  wire [2:0] widthIdx = io_wreq_bits_setIdx[2:0]; // @[SRAMTemplate.scala 206:54]
  wire  _wmask_T_2 = 3'h0 == widthIdx & io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 210:82]
  wire  _wmask_T_5 = 3'h0 == widthIdx & io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 210:82]
  wire  _wmask_T_8 = 3'h1 == widthIdx & io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 210:82]
  wire  _wmask_T_11 = 3'h1 == widthIdx & io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 210:82]
  wire  _wmask_T_14 = 3'h2 == widthIdx & io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 210:82]
  wire  _wmask_T_17 = 3'h2 == widthIdx & io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 210:82]
  wire  _wmask_T_20 = 3'h3 == widthIdx & io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 210:82]
  wire  _wmask_T_23 = 3'h3 == widthIdx & io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 210:82]
  wire  _wmask_T_26 = 3'h4 == widthIdx & io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 210:82]
  wire  _wmask_T_29 = 3'h4 == widthIdx & io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 210:82]
  wire  _wmask_T_32 = 3'h5 == widthIdx & io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 210:82]
  wire  _wmask_T_35 = 3'h5 == widthIdx & io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 210:82]
  wire  _wmask_T_38 = 3'h6 == widthIdx & io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 210:82]
  wire  _wmask_T_41 = 3'h6 == widthIdx & io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 210:82]
  wire  _wmask_T_44 = 3'h7 == widthIdx & io_wreq_bits_waymask[0]; // @[SRAMTemplate.scala 210:82]
  wire  _wmask_T_47 = 3'h7 == widthIdx & io_wreq_bits_waymask[1]; // @[SRAMTemplate.scala 210:82]
  wire [7:0] wmask_lo = {_wmask_T_23,_wmask_T_20,_wmask_T_17,_wmask_T_14,_wmask_T_11,_wmask_T_8,_wmask_T_5,_wmask_T_2}; // @[SRAMTemplate.scala 210:122]
  wire [7:0] wmask_hi = {_wmask_T_47,_wmask_T_44,_wmask_T_41,_wmask_T_38,_wmask_T_35,_wmask_T_32,_wmask_T_29,_wmask_T_26
    }; // @[SRAMTemplate.scala 210:122]
  SRAMTemplate_17 array ( // @[SRAMTemplate.scala 179:21]
    .clock(array_clock),
    .reset(array_reset),
    .io_rreq_valid(array_io_rreq_valid),
    .io_rreq_bits_setIdx(array_io_rreq_bits_setIdx),
    .io_rresp_data_0(array_io_rresp_data_0),
    .io_rresp_data_1(array_io_rresp_data_1),
    .io_rresp_data_2(array_io_rresp_data_2),
    .io_rresp_data_3(array_io_rresp_data_3),
    .io_rresp_data_4(array_io_rresp_data_4),
    .io_rresp_data_5(array_io_rresp_data_5),
    .io_rresp_data_6(array_io_rresp_data_6),
    .io_rresp_data_7(array_io_rresp_data_7),
    .io_rresp_data_8(array_io_rresp_data_8),
    .io_rresp_data_9(array_io_rresp_data_9),
    .io_rresp_data_10(array_io_rresp_data_10),
    .io_rresp_data_11(array_io_rresp_data_11),
    .io_rresp_data_12(array_io_rresp_data_12),
    .io_rresp_data_13(array_io_rresp_data_13),
    .io_rresp_data_14(array_io_rresp_data_14),
    .io_rresp_data_15(array_io_rresp_data_15),
    .io_wreq_valid(array_io_wreq_valid),
    .io_wreq_bits_setIdx(array_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0(array_io_wreq_bits_data_0),
    .io_wreq_bits_data_1(array_io_wreq_bits_data_1),
    .io_wreq_bits_data_2(array_io_wreq_bits_data_2),
    .io_wreq_bits_data_3(array_io_wreq_bits_data_3),
    .io_wreq_bits_data_4(array_io_wreq_bits_data_4),
    .io_wreq_bits_data_5(array_io_wreq_bits_data_5),
    .io_wreq_bits_data_6(array_io_wreq_bits_data_6),
    .io_wreq_bits_data_7(array_io_wreq_bits_data_7),
    .io_wreq_bits_data_8(array_io_wreq_bits_data_8),
    .io_wreq_bits_data_9(array_io_wreq_bits_data_9),
    .io_wreq_bits_data_10(array_io_wreq_bits_data_10),
    .io_wreq_bits_data_11(array_io_wreq_bits_data_11),
    .io_wreq_bits_data_12(array_io_wreq_bits_data_12),
    .io_wreq_bits_data_13(array_io_wreq_bits_data_13),
    .io_wreq_bits_data_14(array_io_wreq_bits_data_14),
    .io_wreq_bits_data_15(array_io_wreq_bits_data_15),
    .io_wreq_bits_waymask(array_io_wreq_bits_waymask),
    .extra_reset(array_extra_reset)
  );
  assign io_rresp_data_0 = _io_rresp_data_0_T[0] & wayData__0 | _io_rresp_data_0_T[1] & wayData__1 |
    _io_rresp_data_0_T[2] & wayData__2 | _io_rresp_data_0_T[3] & wayData__3 | _io_rresp_data_0_T[4] & wayData__4 |
    _io_rresp_data_0_T[5] & wayData__5 | _io_rresp_data_0_T[6] & wayData__6 | _io_rresp_data_0_T[7] & wayData__7; // @[Mux.scala 27:73]
  assign io_rresp_data_1 = _io_rresp_data_1_T[0] & wayData_1_0 | _io_rresp_data_1_T[1] & wayData_1_1 |
    _io_rresp_data_1_T[2] & wayData_1_2 | _io_rresp_data_1_T[3] & wayData_1_3 | _io_rresp_data_1_T[4] & wayData_1_4
     | _io_rresp_data_1_T[5] & wayData_1_5 | _io_rresp_data_1_T[6] & wayData_1_6 | _io_rresp_data_1_T[7] &
    wayData_1_7; // @[Mux.scala 27:73]
  assign array_clock = clock;
  assign array_reset = reset;
  assign array_io_rreq_valid = io_rreq_valid; // @[SRAMTemplate.scala 192:24]
  assign array_io_rreq_bits_setIdx = io_rreq_bits_setIdx[10:3]; // @[SRAMTemplate.scala 188:36]
  assign array_io_wreq_valid = io_wreq_valid; // @[SRAMTemplate.scala 84:20]
  assign array_io_wreq_bits_setIdx = io_wreq_bits_setIdx[10:3]; // @[SRAMTemplate.scala 205:36]
  assign array_io_wreq_bits_data_0 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_1 = io_wreq_bits_data_1; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_2 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_3 = io_wreq_bits_data_1; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_4 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_5 = io_wreq_bits_data_1; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_6 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_7 = io_wreq_bits_data_1; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_8 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_9 = io_wreq_bits_data_1; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_10 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_11 = io_wreq_bits_data_1; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_12 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_13 = io_wreq_bits_data_1; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_14 = io_wreq_bits_data_0; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_data_15 = io_wreq_bits_data_1; // @[SRAMTemplate.scala 204:{22,22}]
  assign array_io_wreq_bits_waymask = {wmask_hi,wmask_lo}; // @[SRAMTemplate.scala 210:122]
  assign array_extra_reset = extra_reset; // @[SRAMTemplate.scala 182:27]
  always @(posedge clock) begin
    ridx <= io_rreq_bits_setIdx[2:0]; // @[SRAMTemplate.scala 189:58]
    holdRidx_REG <= io_rreq_valid; // @[SRAMTemplate.scala 198:44]
    if (holdRidx_REG) begin // @[Reg.scala 17:18]
      holdRidx_hold_data <= ridx; // @[Reg.scala 17:22]
    end
    holdRidx_REG_1 <= io_rreq_valid; // @[SRAMTemplate.scala 198:44]
    if (holdRidx_REG_1) begin // @[Reg.scala 17:18]
      holdRidx_hold_data_1 <= ridx; // @[Reg.scala 17:22]
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
  ridx = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  holdRidx_REG = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  holdRidx_hold_data = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  holdRidx_REG_1 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  holdRidx_hold_data_1 = _RAND_4[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

