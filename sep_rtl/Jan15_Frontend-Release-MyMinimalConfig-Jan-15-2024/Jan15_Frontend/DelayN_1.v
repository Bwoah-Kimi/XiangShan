module DelayN_1(
  input   clock,
  input   io_in_ubtb_enable,
  input   io_in_btb_enable,
  input   io_in_tage_enable,
  input   io_in_sc_enable,
  input   io_in_ras_enable,
  output  io_out_ubtb_enable,
  output  io_out_btb_enable,
  output  io_out_tage_enable,
  output  io_out_sc_enable,
  output  io_out_ras_enable
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg  out_ubtb_enable; // @[Hold.scala 90:18]
  reg  out_btb_enable; // @[Hold.scala 90:18]
  reg  out_tage_enable; // @[Hold.scala 90:18]
  reg  out_sc_enable; // @[Hold.scala 90:18]
  reg  out_ras_enable; // @[Hold.scala 90:18]
  assign io_out_ubtb_enable = out_ubtb_enable; // @[Hold.scala 92:10]
  assign io_out_btb_enable = out_btb_enable; // @[Hold.scala 92:10]
  assign io_out_tage_enable = out_tage_enable; // @[Hold.scala 92:10]
  assign io_out_sc_enable = out_sc_enable; // @[Hold.scala 92:10]
  assign io_out_ras_enable = out_ras_enable; // @[Hold.scala 92:10]
  always @(posedge clock) begin
    out_ubtb_enable <= io_in_ubtb_enable; // @[Hold.scala 90:18]
    out_btb_enable <= io_in_btb_enable; // @[Hold.scala 90:18]
    out_tage_enable <= io_in_tage_enable; // @[Hold.scala 90:18]
    out_sc_enable <= io_in_sc_enable; // @[Hold.scala 90:18]
    out_ras_enable <= io_in_ras_enable; // @[Hold.scala 90:18]
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
  out_ubtb_enable = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  out_btb_enable = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  out_tage_enable = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_sc_enable = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_ras_enable = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

