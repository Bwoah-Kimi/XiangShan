module RefillUnit(
  input          clock,
  input          reset,
  output         io_sinkD_ready,
  input          io_sinkD_valid,
  input  [2:0]   io_sinkD_bits_opcode,
  input  [1:0]   io_sinkD_bits_param,
  input  [2:0]   io_sinkD_bits_size,
  input  [7:0]   io_sinkD_bits_source,
  input  [3:0]   io_sinkD_bits_sink,
  input          io_sinkD_bits_echo_blockisdirty,
  input  [255:0] io_sinkD_bits_data,
  input          io_sourceE_ready,
  output         io_sourceE_valid,
  output [3:0]   io_sourceE_bits_sink,
  output         io_refillBufWrite_valid,
  output [1:0]   io_refillBufWrite_beat_sel,
  output [511:0] io_refillBufWrite_data_data,
  output [7:0]   io_refillBufWrite_id,
  output         io_resp_valid,
  output [7:0]   io_resp_mshrId,
  output [2:0]   io_resp_respInfo_opcode,
  output [2:0]   io_resp_respInfo_param,
  output         io_resp_respInfo_last,
  output         io_resp_respInfo_dirty,
  output         io_resp_respInfo_isHit
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  grantAckQ_clock; // @[RefillUnit.scala 47:25]
  wire  grantAckQ_reset; // @[RefillUnit.scala 47:25]
  wire  grantAckQ_io_enq_ready; // @[RefillUnit.scala 47:25]
  wire  grantAckQ_io_enq_valid; // @[RefillUnit.scala 47:25]
  wire [3:0] grantAckQ_io_enq_bits_sink; // @[RefillUnit.scala 47:25]
  wire  grantAckQ_io_deq_ready; // @[RefillUnit.scala 47:25]
  wire  grantAckQ_io_deq_valid; // @[RefillUnit.scala 47:25]
  wire [3:0] grantAckQ_io_deq_bits_sink; // @[RefillUnit.scala 47:25]
  wire  _T = io_sinkD_ready & io_sinkD_valid; // @[Decoupled.scala 50:35]
  wire [12:0] _beats1_decode_T_1 = 13'h3f << io_sinkD_bits_size; // @[package.scala 234:77]
  wire [5:0] _beats1_decode_T_3 = ~_beats1_decode_T_1[5:0]; // @[package.scala 234:46]
  wire  beats1_decode = _beats1_decode_T_3[5]; // @[Edges.scala 219:59]
  wire  beats1_opdata = io_sinkD_bits_opcode[0]; // @[Edges.scala 105:36]
  wire  beats1 = beats1_opdata & beats1_decode; // @[Edges.scala 220:14]
  reg  counter; // @[Edges.scala 228:27]
  wire  counter1 = counter - 1'h1; // @[Edges.scala 229:28]
  wire  first = ~counter; // @[Edges.scala 230:25]
  wire  last = counter | ~beats1; // @[Edges.scala 231:37]
  wire  beat = beats1 & ~counter1; // @[Edges.scala 233:25]
  wire  isGrant = io_sinkD_bits_opcode == 3'h4 | io_sinkD_bits_opcode == 3'h5; // @[RefillUnit.scala 45:48]
  Queue_158 grantAckQ ( // @[RefillUnit.scala 47:25]
    .clock(grantAckQ_clock),
    .reset(grantAckQ_reset),
    .io_enq_ready(grantAckQ_io_enq_ready),
    .io_enq_valid(grantAckQ_io_enq_valid),
    .io_enq_bits_sink(grantAckQ_io_enq_bits_sink),
    .io_deq_ready(grantAckQ_io_deq_ready),
    .io_deq_valid(grantAckQ_io_deq_valid),
    .io_deq_bits_sink(grantAckQ_io_deq_bits_sink)
  );
  assign io_sinkD_ready = 1'h1; // @[RefillUnit.scala 73:18]
  assign io_sourceE_valid = grantAckQ_io_deq_valid; // @[RefillUnit.scala 55:20]
  assign io_sourceE_bits_sink = grantAckQ_io_deq_bits_sink; // @[RefillUnit.scala 54:24]
  assign io_refillBufWrite_valid = io_sinkD_valid & beats1_opdata; // @[RefillUnit.scala 57:45]
  assign io_refillBufWrite_beat_sel = 2'h1 << beat; // @[OneHot.scala 57:35]
  assign io_refillBufWrite_data_data = {io_sinkD_bits_data,io_sinkD_bits_data}; // @[Cat.scala 31:58]
  assign io_refillBufWrite_id = io_sinkD_bits_source; // @[RefillUnit.scala 60:24]
  assign io_resp_valid = (first | last) & io_sinkD_valid; // @[RefillUnit.scala 62:36]
  assign io_resp_mshrId = io_sinkD_bits_source; // @[RefillUnit.scala 63:18]
  assign io_resp_respInfo_opcode = io_sinkD_bits_opcode; // @[RefillUnit.scala 66:27]
  assign io_resp_respInfo_param = {{1'd0}, io_sinkD_bits_param}; // @[RefillUnit.scala 67:26]
  assign io_resp_respInfo_last = counter | ~beats1; // @[Edges.scala 231:37]
  assign io_resp_respInfo_dirty = io_sinkD_bits_echo_blockisdirty; // @[RefillUnit.scala 69:26]
  assign io_resp_respInfo_isHit = 1'h1; // @[RefillUnit.scala 70:26]
  assign grantAckQ_clock = clock;
  assign grantAckQ_reset = reset;
  assign grantAckQ_io_enq_valid = isGrant & io_sinkD_valid & first; // @[RefillUnit.scala 49:55]
  assign grantAckQ_io_enq_bits_sink = io_sinkD_bits_sink; // @[RefillUnit.scala 51:30]
  assign grantAckQ_io_deq_ready = io_sourceE_ready; // @[RefillUnit.scala 53:26]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Edges.scala 234:17]
      counter <= 1'h0; // @[Edges.scala 235:21]
    end else if (_T) begin // @[Edges.scala 228:27]
      if (first) begin
        counter <= beats1;
      end else begin
        counter <= counter1;
      end
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
  counter = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    counter = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

