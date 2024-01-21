module CryptoModule(
  input         clock,
  input  [63:0] io_src_0,
  input  [63:0] io_src_1,
  input  [6:0]  io_func,
  input         io_regEnable,
  output [63:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  hashModule_clock; // @[Bku.scala 310:26]
  wire [63:0] hashModule_io_src; // @[Bku.scala 310:26]
  wire [6:0] hashModule_io_func; // @[Bku.scala 310:26]
  wire  hashModule_io_regEnable; // @[Bku.scala 310:26]
  wire [63:0] hashModule_io_out; // @[Bku.scala 310:26]
  wire  blockCipherModule_clock; // @[Bku.scala 315:33]
  wire [63:0] blockCipherModule_io_src_0; // @[Bku.scala 315:33]
  wire [63:0] blockCipherModule_io_src_1; // @[Bku.scala 315:33]
  wire [6:0] blockCipherModule_io_func; // @[Bku.scala 315:33]
  wire  blockCipherModule_io_regEnable; // @[Bku.scala 315:33]
  wire [63:0] blockCipherModule_io_out; // @[Bku.scala 315:33]
  reg [6:0] funcReg; // @[Reg.scala 16:16]
  HashModule hashModule ( // @[Bku.scala 310:26]
    .clock(hashModule_clock),
    .io_src(hashModule_io_src),
    .io_func(hashModule_io_func),
    .io_regEnable(hashModule_io_regEnable),
    .io_out(hashModule_io_out)
  );
  BlockCipherModule blockCipherModule ( // @[Bku.scala 315:33]
    .clock(blockCipherModule_clock),
    .io_src_0(blockCipherModule_io_src_0),
    .io_src_1(blockCipherModule_io_src_1),
    .io_func(blockCipherModule_io_func),
    .io_regEnable(blockCipherModule_io_regEnable),
    .io_out(blockCipherModule_io_out)
  );
  assign io_out = funcReg[4] ? hashModule_io_out : blockCipherModule_io_out; // @[Bku.scala 321:16]
  assign hashModule_clock = clock;
  assign hashModule_io_src = io_src_0; // @[Bku.scala 311:21]
  assign hashModule_io_func = io_func; // @[Bku.scala 312:22]
  assign hashModule_io_regEnable = io_regEnable; // @[Bku.scala 313:27]
  assign blockCipherModule_clock = clock;
  assign blockCipherModule_io_src_0 = io_src_0; // @[Bku.scala 316:31]
  assign blockCipherModule_io_src_1 = io_src_1; // @[Bku.scala 317:31]
  assign blockCipherModule_io_func = io_func; // @[Bku.scala 318:29]
  assign blockCipherModule_io_regEnable = io_regEnable; // @[Bku.scala 319:34]
  always @(posedge clock) begin
    if (io_regEnable) begin // @[Reg.scala 17:18]
      funcReg <= io_func; // @[Reg.scala 17:22]
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
  funcReg = _RAND_0[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

