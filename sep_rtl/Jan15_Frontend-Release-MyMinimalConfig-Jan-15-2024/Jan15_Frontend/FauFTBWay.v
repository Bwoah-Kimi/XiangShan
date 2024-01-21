module FauFTBWay(
  input         clock,
  input         reset,
  input  [15:0] io_req_tag,
  output [2:0]  io_resp_brSlots_0_offset,
  output [11:0] io_resp_brSlots_0_lower,
  output [1:0]  io_resp_brSlots_0_tarStat,
  output        io_resp_brSlots_0_valid,
  output [2:0]  io_resp_tailSlot_offset,
  output [19:0] io_resp_tailSlot_lower,
  output [1:0]  io_resp_tailSlot_tarStat,
  output        io_resp_tailSlot_sharing,
  output        io_resp_tailSlot_valid,
  output [2:0]  io_resp_pftAddr,
  output        io_resp_carry,
  output        io_resp_always_taken_0,
  output        io_resp_always_taken_1,
  output        io_resp_hit,
  input  [15:0] io_update_req_tag,
  output        io_update_hit,
  input         io_write_valid,
  input  [2:0]  io_write_entry_brSlots_0_offset,
  input  [11:0] io_write_entry_brSlots_0_lower,
  input  [1:0]  io_write_entry_brSlots_0_tarStat,
  input         io_write_entry_brSlots_0_valid,
  input  [2:0]  io_write_entry_tailSlot_offset,
  input  [19:0] io_write_entry_tailSlot_lower,
  input  [1:0]  io_write_entry_tailSlot_tarStat,
  input         io_write_entry_tailSlot_sharing,
  input         io_write_entry_tailSlot_valid,
  input  [2:0]  io_write_entry_pftAddr,
  input         io_write_entry_carry,
  input         io_write_entry_always_taken_0,
  input         io_write_entry_always_taken_1,
  input  [15:0] io_write_tag
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
`endif // RANDOMIZE_REG_INIT
  reg [2:0] data_brSlots_0_offset; // @[FauFTB.scala 58:17]
  reg [11:0] data_brSlots_0_lower; // @[FauFTB.scala 58:17]
  reg [1:0] data_brSlots_0_tarStat; // @[FauFTB.scala 58:17]
  reg  data_brSlots_0_valid; // @[FauFTB.scala 58:17]
  reg [2:0] data_tailSlot_offset; // @[FauFTB.scala 58:17]
  reg [19:0] data_tailSlot_lower; // @[FauFTB.scala 58:17]
  reg [1:0] data_tailSlot_tarStat; // @[FauFTB.scala 58:17]
  reg  data_tailSlot_sharing; // @[FauFTB.scala 58:17]
  reg  data_tailSlot_valid; // @[FauFTB.scala 58:17]
  reg [2:0] data_pftAddr; // @[FauFTB.scala 58:17]
  reg  data_carry; // @[FauFTB.scala 58:17]
  reg  data_always_taken_0; // @[FauFTB.scala 58:17]
  reg  data_always_taken_1; // @[FauFTB.scala 58:17]
  reg [15:0] tag; // @[FauFTB.scala 59:16]
  reg  valid; // @[FauFTB.scala 60:22]
  wire  _io_update_hit_T_3 = io_write_tag == io_update_req_tag & io_write_valid; // @[FauFTB.scala 66:58]
  wire  _GEN_0 = ~valid | valid; // @[FauFTB.scala 70:19 71:13 60:22]
  assign io_resp_brSlots_0_offset = data_brSlots_0_offset; // @[FauFTB.scala 62:11]
  assign io_resp_brSlots_0_lower = data_brSlots_0_lower; // @[FauFTB.scala 62:11]
  assign io_resp_brSlots_0_tarStat = data_brSlots_0_tarStat; // @[FauFTB.scala 62:11]
  assign io_resp_brSlots_0_valid = data_brSlots_0_valid; // @[FauFTB.scala 62:11]
  assign io_resp_tailSlot_offset = data_tailSlot_offset; // @[FauFTB.scala 62:11]
  assign io_resp_tailSlot_lower = data_tailSlot_lower; // @[FauFTB.scala 62:11]
  assign io_resp_tailSlot_tarStat = data_tailSlot_tarStat; // @[FauFTB.scala 62:11]
  assign io_resp_tailSlot_sharing = data_tailSlot_sharing; // @[FauFTB.scala 62:11]
  assign io_resp_tailSlot_valid = data_tailSlot_valid; // @[FauFTB.scala 62:11]
  assign io_resp_pftAddr = data_pftAddr; // @[FauFTB.scala 62:11]
  assign io_resp_carry = data_carry; // @[FauFTB.scala 62:11]
  assign io_resp_always_taken_0 = data_always_taken_0; // @[FauFTB.scala 62:11]
  assign io_resp_always_taken_1 = data_always_taken_1; // @[FauFTB.scala 62:11]
  assign io_resp_hit = tag == io_req_tag & valid; // @[FauFTB.scala 63:37]
  assign io_update_hit = tag == io_update_req_tag & valid | _io_update_hit_T_3; // @[FauFTB.scala 65:59]
  always @(posedge clock) begin
    if (io_write_valid) begin // @[FauFTB.scala 69:25]
      data_brSlots_0_offset <= io_write_entry_brSlots_0_offset; // @[FauFTB.scala 74:11]
    end
    if (io_write_valid) begin // @[FauFTB.scala 69:25]
      data_brSlots_0_lower <= io_write_entry_brSlots_0_lower; // @[FauFTB.scala 74:11]
    end
    if (io_write_valid) begin // @[FauFTB.scala 69:25]
      data_brSlots_0_tarStat <= io_write_entry_brSlots_0_tarStat; // @[FauFTB.scala 74:11]
    end
    if (io_write_valid) begin // @[FauFTB.scala 69:25]
      data_brSlots_0_valid <= io_write_entry_brSlots_0_valid; // @[FauFTB.scala 74:11]
    end
    if (io_write_valid) begin // @[FauFTB.scala 69:25]
      data_tailSlot_offset <= io_write_entry_tailSlot_offset; // @[FauFTB.scala 74:11]
    end
    if (io_write_valid) begin // @[FauFTB.scala 69:25]
      data_tailSlot_lower <= io_write_entry_tailSlot_lower; // @[FauFTB.scala 74:11]
    end
    if (io_write_valid) begin // @[FauFTB.scala 69:25]
      data_tailSlot_tarStat <= io_write_entry_tailSlot_tarStat; // @[FauFTB.scala 74:11]
    end
    if (io_write_valid) begin // @[FauFTB.scala 69:25]
      data_tailSlot_sharing <= io_write_entry_tailSlot_sharing; // @[FauFTB.scala 74:11]
    end
    if (io_write_valid) begin // @[FauFTB.scala 69:25]
      data_tailSlot_valid <= io_write_entry_tailSlot_valid; // @[FauFTB.scala 74:11]
    end
    if (io_write_valid) begin // @[FauFTB.scala 69:25]
      data_pftAddr <= io_write_entry_pftAddr; // @[FauFTB.scala 74:11]
    end
    if (io_write_valid) begin // @[FauFTB.scala 69:25]
      data_carry <= io_write_entry_carry; // @[FauFTB.scala 74:11]
    end
    if (io_write_valid) begin // @[FauFTB.scala 69:25]
      data_always_taken_0 <= io_write_entry_always_taken_0; // @[FauFTB.scala 74:11]
    end
    if (io_write_valid) begin // @[FauFTB.scala 69:25]
      data_always_taken_1 <= io_write_entry_always_taken_1; // @[FauFTB.scala 74:11]
    end
    if (io_write_valid) begin // @[FauFTB.scala 69:25]
      tag <= io_write_tag; // @[FauFTB.scala 73:11]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[FauFTB.scala 69:25]
      valid <= 1'h0;
    end else if (io_write_valid) begin // @[FauFTB.scala 60:22]
      valid <= _GEN_0;
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
  data_brSlots_0_offset = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  data_brSlots_0_lower = _RAND_1[11:0];
  _RAND_2 = {1{`RANDOM}};
  data_brSlots_0_tarStat = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  data_brSlots_0_valid = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  data_tailSlot_offset = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  data_tailSlot_lower = _RAND_5[19:0];
  _RAND_6 = {1{`RANDOM}};
  data_tailSlot_tarStat = _RAND_6[1:0];
  _RAND_7 = {1{`RANDOM}};
  data_tailSlot_sharing = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  data_tailSlot_valid = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  data_pftAddr = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  data_carry = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  data_always_taken_0 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  data_always_taken_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  tag = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  valid = _RAND_14[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    valid = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

