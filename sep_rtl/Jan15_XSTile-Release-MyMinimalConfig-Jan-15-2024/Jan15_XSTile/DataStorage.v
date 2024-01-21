module DataStorage(
  input          clock,
  input          io_req_valid,
  input  [2:0]   io_req_bits_way,
  input  [6:0]   io_req_bits_set,
  input          io_req_bits_wen,
  output [511:0] io_rdata_data,
  input  [511:0] io_wdata_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [511:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  array_clock; // @[DataStorage.scala 49:21]
  wire  array_io_rreq_valid; // @[DataStorage.scala 49:21]
  wire [9:0] array_io_rreq_bits_setIdx; // @[DataStorage.scala 49:21]
  wire [511:0] array_io_rresp_data_0_data; // @[DataStorage.scala 49:21]
  wire  array_io_wreq_valid; // @[DataStorage.scala 49:21]
  wire [9:0] array_io_wreq_bits_setIdx; // @[DataStorage.scala 49:21]
  wire [511:0] array_io_wreq_bits_data_0_data; // @[DataStorage.scala 49:21]
  reg [511:0] io_rdata_REG_data; // @[Pipeline.scala 58:31]
  SRAMTemplate_155 array ( // @[DataStorage.scala 49:21]
    .clock(array_clock),
    .io_rreq_valid(array_io_rreq_valid),
    .io_rreq_bits_setIdx(array_io_rreq_bits_setIdx),
    .io_rresp_data_0_data(array_io_rresp_data_0_data),
    .io_wreq_valid(array_io_wreq_valid),
    .io_wreq_bits_setIdx(array_io_wreq_bits_setIdx),
    .io_wreq_bits_data_0_data(array_io_wreq_bits_data_0_data)
  );
  assign io_rdata_data = io_rdata_REG_data; // @[DataStorage.scala 64:12]
  assign array_clock = clock;
  assign array_io_rreq_valid = io_req_valid & ~io_req_bits_wen; // @[DataStorage.scala 58:26]
  assign array_io_rreq_bits_setIdx = {io_req_bits_way,io_req_bits_set}; // @[Cat.scala 31:58]
  assign array_io_wreq_valid = io_req_valid & io_req_bits_wen; // @[DataStorage.scala 57:26]
  assign array_io_wreq_bits_setIdx = {io_req_bits_way,io_req_bits_set}; // @[Cat.scala 31:58]
  assign array_io_wreq_bits_data_0_data = io_wdata_data; // @[SRAMTemplate.scala 95:{25,25}]
  always @(posedge clock) begin
    io_rdata_REG_data <= array_io_rresp_data_0_data; // @[Pipeline.scala 58:31]
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
  _RAND_0 = {16{`RANDOM}};
  io_rdata_REG_data = _RAND_0[511:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

