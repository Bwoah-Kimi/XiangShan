module DelayN(
  input         clock,
  input         io_in_source_tag,
  input         io_in_source_data,
  input         io_in_source_l2,
  input         io_in_opType_fetch,
  input         io_in_opType_load,
  input         io_in_opType_store,
  input         io_in_opType_probe,
  input         io_in_opType_release,
  input         io_in_opType_atom,
  input  [35:0] io_in_paddr,
  input         io_in_report_to_beu,
  input         io_in_valid,
  output        io_out_source_tag,
  output        io_out_source_data,
  output        io_out_source_l2,
  output        io_out_opType_fetch,
  output        io_out_opType_load,
  output        io_out_opType_store,
  output        io_out_opType_probe,
  output        io_out_opType_release,
  output        io_out_opType_atom,
  output [35:0] io_out_paddr,
  output        io_out_report_to_beu,
  output        io_out_valid
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
  reg [63:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
`endif // RANDOMIZE_REG_INIT
  reg  out_source_tag; // @[Hold.scala 90:18]
  reg  out_source_data; // @[Hold.scala 90:18]
  reg  out_source_l2; // @[Hold.scala 90:18]
  reg  out_opType_fetch; // @[Hold.scala 90:18]
  reg  out_opType_load; // @[Hold.scala 90:18]
  reg  out_opType_store; // @[Hold.scala 90:18]
  reg  out_opType_probe; // @[Hold.scala 90:18]
  reg  out_opType_release; // @[Hold.scala 90:18]
  reg  out_opType_atom; // @[Hold.scala 90:18]
  reg [35:0] out_paddr; // @[Hold.scala 90:18]
  reg  out_report_to_beu; // @[Hold.scala 90:18]
  reg  out_valid; // @[Hold.scala 90:18]
  assign io_out_source_tag = out_source_tag; // @[Hold.scala 92:10]
  assign io_out_source_data = out_source_data; // @[Hold.scala 92:10]
  assign io_out_source_l2 = out_source_l2; // @[Hold.scala 92:10]
  assign io_out_opType_fetch = out_opType_fetch; // @[Hold.scala 92:10]
  assign io_out_opType_load = out_opType_load; // @[Hold.scala 92:10]
  assign io_out_opType_store = out_opType_store; // @[Hold.scala 92:10]
  assign io_out_opType_probe = out_opType_probe; // @[Hold.scala 92:10]
  assign io_out_opType_release = out_opType_release; // @[Hold.scala 92:10]
  assign io_out_opType_atom = out_opType_atom; // @[Hold.scala 92:10]
  assign io_out_paddr = out_paddr; // @[Hold.scala 92:10]
  assign io_out_report_to_beu = out_report_to_beu; // @[Hold.scala 92:10]
  assign io_out_valid = out_valid; // @[Hold.scala 92:10]
  always @(posedge clock) begin
    out_source_tag <= io_in_source_tag; // @[Hold.scala 90:18]
    out_source_data <= io_in_source_data; // @[Hold.scala 90:18]
    out_source_l2 <= io_in_source_l2; // @[Hold.scala 90:18]
    out_opType_fetch <= io_in_opType_fetch; // @[Hold.scala 90:18]
    out_opType_load <= io_in_opType_load; // @[Hold.scala 90:18]
    out_opType_store <= io_in_opType_store; // @[Hold.scala 90:18]
    out_opType_probe <= io_in_opType_probe; // @[Hold.scala 90:18]
    out_opType_release <= io_in_opType_release; // @[Hold.scala 90:18]
    out_opType_atom <= io_in_opType_atom; // @[Hold.scala 90:18]
    out_paddr <= io_in_paddr; // @[Hold.scala 90:18]
    out_report_to_beu <= io_in_report_to_beu; // @[Hold.scala 90:18]
    out_valid <= io_in_valid; // @[Hold.scala 90:18]
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
  out_source_tag = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  out_source_data = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  out_source_l2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  out_opType_fetch = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  out_opType_load = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  out_opType_store = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  out_opType_probe = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  out_opType_release = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  out_opType_atom = _RAND_8[0:0];
  _RAND_9 = {2{`RANDOM}};
  out_paddr = _RAND_9[35:0];
  _RAND_10 = {1{`RANDOM}};
  out_report_to_beu = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  out_valid = _RAND_11[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

