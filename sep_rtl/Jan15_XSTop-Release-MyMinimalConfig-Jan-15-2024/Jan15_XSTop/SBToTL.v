module SBToTL(
  input          clock,
  input          reset,
  input          auto_out_a_ready,
  output         auto_out_a_valid,
  output [2:0]   auto_out_a_bits_opcode,
  output [35:0]  auto_out_a_bits_address,
  output [31:0]  auto_out_a_bits_mask,
  output [255:0] auto_out_a_bits_data,
  output         auto_out_d_ready,
  input          auto_out_d_valid,
  input          auto_out_d_bits_denied,
  input  [255:0] auto_out_d_bits_data,
  input          auto_out_d_bits_corrupt,
  input          io_rdEn,
  input          io_wrEn,
  input  [127:0] io_addrIn,
  input  [127:0] io_dataIn,
  input  [2:0]   io_sizeIn,
  output         io_rdLegal,
  output         io_wrLegal,
  output         io_rdDone,
  output         io_wrDone,
  output         io_respError,
  output [7:0]   io_dataOut,
  output         io_rdLoad_0,
  output         io_rdLoad_1,
  output         io_rdLoad_2,
  output         io_rdLoad_3,
  output         io_rdLoad_4,
  output         io_rdLoad_5,
  output         io_rdLoad_6,
  output         io_rdLoad_7,
  output [2:0]   io_sbStateOut
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  d_clock; // @[Decoupled.scala 361:21]
  wire  d_reset; // @[Decoupled.scala 361:21]
  wire  d_io_enq_ready; // @[Decoupled.scala 361:21]
  wire  d_io_enq_valid; // @[Decoupled.scala 361:21]
  wire  d_io_enq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] d_io_enq_bits_data; // @[Decoupled.scala 361:21]
  wire  d_io_enq_bits_corrupt; // @[Decoupled.scala 361:21]
  wire  d_io_deq_ready; // @[Decoupled.scala 361:21]
  wire  d_io_deq_valid; // @[Decoupled.scala 361:21]
  wire  d_io_deq_bits_denied; // @[Decoupled.scala 361:21]
  wire [255:0] d_io_deq_bits_data; // @[Decoupled.scala 361:21]
  wire  d_io_deq_bits_corrupt; // @[Decoupled.scala 361:21]
  reg [2:0] sbState; // @[SBA.scala 291:26]
  wire  _d_io_deq_ready_T = sbState == 3'h3; // @[SBA.scala 295:25]
  wire  _d_io_deq_ready_T_1 = sbState == 3'h4; // @[SBA.scala 295:62]
  reg [3:0] counter; // @[SBA.scala 303:26]
  wire [7:0] vecData_0 = io_dataIn[7:0]; // @[SBA.scala 305:63]
  wire [7:0] vecData_1 = io_dataIn[15:8]; // @[SBA.scala 305:63]
  wire [7:0] vecData_2 = io_dataIn[23:16]; // @[SBA.scala 305:63]
  wire [7:0] vecData_3 = io_dataIn[31:24]; // @[SBA.scala 305:63]
  wire [7:0] vecData_4 = io_dataIn[39:32]; // @[SBA.scala 305:63]
  wire [7:0] vecData_5 = io_dataIn[47:40]; // @[SBA.scala 305:63]
  wire [7:0] vecData_6 = io_dataIn[55:48]; // @[SBA.scala 305:63]
  wire [7:0] vecData_7 = io_dataIn[63:56]; // @[SBA.scala 305:63]
  wire [7:0] _GEN_1 = 3'h1 == counter[2:0] ? vecData_1 : vecData_0; // @[SBA.scala 306:{15,15}]
  wire [7:0] _GEN_2 = 3'h2 == counter[2:0] ? vecData_2 : _GEN_1; // @[SBA.scala 306:{15,15}]
  wire [7:0] _GEN_3 = 3'h3 == counter[2:0] ? vecData_3 : _GEN_2; // @[SBA.scala 306:{15,15}]
  wire [7:0] _GEN_4 = 3'h4 == counter[2:0] ? vecData_4 : _GEN_3; // @[SBA.scala 306:{15,15}]
  wire [7:0] _GEN_5 = 3'h5 == counter[2:0] ? vecData_5 : _GEN_4; // @[SBA.scala 306:{15,15}]
  wire [7:0] _GEN_6 = 3'h6 == counter[2:0] ? vecData_6 : _GEN_5; // @[SBA.scala 306:{15,15}]
  wire [7:0] muxedData = 3'h7 == counter[2:0] ? vecData_7 : _GEN_6; // @[SBA.scala 306:{15,15}]
  wire [128:0] _rdLegal_addr_T_5 = {1'b0,$signed(io_addrIn)}; // @[Parameters.scala 137:49]
  wire [128:0] _rdLegal_addr_T_7 = $signed(_rdLegal_addr_T_5) & -129'sh1000000000; // @[Parameters.scala 137:52]
  wire [127:0] _GEN_21 = {{124'd0}, counter}; // @[SBA.scala 320:33]
  wire [127:0] requestAddr = io_addrIn + _GEN_21; // @[SBA.scala 320:33]
  wire [46:0] _mask_T_3 = 47'h10000 << requestAddr[3:0]; // @[SBA.scala 321:52]
  wire [15:0] _mask_T_5 = 16'h1 << requestAddr[3:0]; // @[SBA.scala 321:78]
  wire [46:0] mask = requestAddr[4] ? _mask_T_3 : {{31'd0}, _mask_T_5}; // @[SBA.scala 321:19]
  wire [127:0] _pfbits_T_1 = requestAddr & 128'hffffffffffffffffffffffffffffffe0; // @[SBA.scala 323:49]
  wire [63:0] _pfbits_T_4 = {muxedData,muxedData,muxedData,muxedData,muxedData,muxedData,muxedData,muxedData}; // @[Cat.scala 31:58]
  wire [127:0] _pfbits_T_5 = {muxedData,muxedData,muxedData,muxedData,muxedData,muxedData,muxedData,muxedData,
    _pfbits_T_4}; // @[Cat.scala 31:58]
  wire [255:0] pfbits_data = {muxedData,muxedData,muxedData,muxedData,muxedData,muxedData,muxedData,muxedData,
    _pfbits_T_4,_pfbits_T_5}; // @[Cat.scala 31:58]
  wire  _T = sbState == 3'h1; // @[SBA.scala 328:18]
  wire [35:0] gbits_address = requestAddr[35:0]; // @[Edges.scala 447:17 452:15]
  wire [35:0] pfbits_address = _pfbits_T_1[35:0]; // @[Edges.scala 483:17 488:15]
  wire [31:0] pfbits_mask = mask[31:0]; // @[Edges.scala 483:17 489:15]
  wire  wrTxValid = _d_io_deq_ready_T_1 & d_io_deq_valid & d_io_deq_ready; // @[SBA.scala 344:71]
  wire  rdTxValid = _d_io_deq_ready_T & d_io_deq_valid & d_io_deq_ready; // @[SBA.scala 345:70]
  wire [7:0] _txLast_T = 8'h1 << io_sizeIn; // @[SBA.scala 346:39]
  wire [7:0] _txLast_T_2 = _txLast_T - 8'h1; // @[SBA.scala 346:53]
  wire [7:0] _GEN_22 = {{4'd0}, counter}; // @[SBA.scala 346:29]
  wire  txLast = _GEN_22 == _txLast_T_2; // @[SBA.scala 346:29]
  wire  _counter_T = wrTxValid | rdTxValid; // @[SBA.scala 348:31]
  wire [3:0] _counter_T_4 = counter + 4'h1; // @[SBA.scala 349:63]
  wire  _bundleOut_0_a_valid_T_1 = sbState == 3'h2; // @[SBA.scala 374:64]
  wire  tl_a_valid = _T | sbState == 3'h2; // @[SBA.scala 374:52]
  wire  _sbState_T_4 = tl_a_valid & auto_out_a_ready; // @[SBA.scala 360:35]
  wire [2:0] _sbState_T_9 = rdTxValid ? 3'h1 : sbState; // @[SBA.scala 364:57]
  wire [2:0] _sbState_T_10 = rdTxValid & txLast ? 3'h0 : _sbState_T_9; // @[SBA.scala 364:21]
  wire [2:0] _sbState_T_12 = wrTxValid ? 3'h2 : sbState; // @[SBA.scala 366:57]
  wire [2:0] _sbState_T_13 = wrTxValid & txLast ? 3'h0 : _sbState_T_12; // @[SBA.scala 366:21]
  wire [2:0] _GEN_16 = _d_io_deq_ready_T_1 ? _sbState_T_13 : sbState; // @[SBA.scala 365:50 366:15 291:26]
  wire [7:0] _io_dataOut_T_1 = {requestAddr[4:0], 3'h0}; // @[SBA.scala 372:55]
  wire [255:0] _io_dataOut_T_2 = d_io_deq_bits_data >> _io_dataOut_T_1; // @[SBA.scala 372:32]
  wire [255:0] _io_dataOut_T_3 = _io_dataOut_T_2 & 256'hff; // @[SBA.scala 372:63]
  Queue_129 d ( // @[Decoupled.scala 361:21]
    .clock(d_clock),
    .reset(d_reset),
    .io_enq_ready(d_io_enq_ready),
    .io_enq_valid(d_io_enq_valid),
    .io_enq_bits_denied(d_io_enq_bits_denied),
    .io_enq_bits_data(d_io_enq_bits_data),
    .io_enq_bits_corrupt(d_io_enq_bits_corrupt),
    .io_deq_ready(d_io_deq_ready),
    .io_deq_valid(d_io_deq_valid),
    .io_deq_bits_denied(d_io_deq_bits_denied),
    .io_deq_bits_data(d_io_deq_bits_data),
    .io_deq_bits_corrupt(d_io_deq_bits_corrupt)
  );
  assign auto_out_a_valid = _T | sbState == 3'h2; // @[SBA.scala 374:52]
  assign auto_out_a_bits_opcode = sbState == 3'h1 ? 3'h4 : 3'h1; // @[SBA.scala 328:{42,54} 329:54]
  assign auto_out_a_bits_address = sbState == 3'h1 ? gbits_address : pfbits_address; // @[SBA.scala 328:{42,54} 329:54]
  assign auto_out_a_bits_mask = sbState == 3'h1 ? 32'hffffffff : pfbits_mask; // @[SBA.scala 328:{42,54} 329:54]
  assign auto_out_a_bits_data = sbState == 3'h1 ? 256'h0 : pfbits_data; // @[SBA.scala 328:{42,54} 329:54]
  assign auto_out_d_ready = d_io_enq_ready; // @[Nodes.scala 1207:84 Decoupled.scala 365:17]
  assign io_rdLegal = $signed(_rdLegal_addr_T_7) == 129'sh0; // @[Parameters.scala 137:67]
  assign io_wrLegal = $signed(_rdLegal_addr_T_7) == 129'sh0; // @[Parameters.scala 137:67]
  assign io_rdDone = rdTxValid & txLast; // @[SBA.scala 369:29]
  assign io_wrDone = wrTxValid & txLast; // @[SBA.scala 370:29]
  assign io_respError = d_io_deq_bits_denied | d_io_deq_bits_corrupt; // @[SBA.scala 341:35]
  assign io_dataOut = _io_dataOut_T_3[7:0]; // @[SBA.scala 372:16]
  assign io_rdLoad_0 = rdTxValid & counter == 4'h0; // @[SBA.scala 352:33]
  assign io_rdLoad_1 = rdTxValid & counter == 4'h1; // @[SBA.scala 352:33]
  assign io_rdLoad_2 = rdTxValid & counter == 4'h2; // @[SBA.scala 352:33]
  assign io_rdLoad_3 = rdTxValid & counter == 4'h3; // @[SBA.scala 352:33]
  assign io_rdLoad_4 = rdTxValid & counter == 4'h4; // @[SBA.scala 352:33]
  assign io_rdLoad_5 = rdTxValid & counter == 4'h5; // @[SBA.scala 352:33]
  assign io_rdLoad_6 = rdTxValid & counter == 4'h6; // @[SBA.scala 352:33]
  assign io_rdLoad_7 = rdTxValid & counter == 4'h7; // @[SBA.scala 352:33]
  assign io_sbStateOut = sbState; // @[SBA.scala 327:19]
  assign d_clock = clock;
  assign d_reset = reset;
  assign d_io_enq_valid = auto_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign d_io_enq_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign d_io_enq_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign d_io_enq_bits_corrupt = auto_out_d_bits_corrupt; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign d_io_deq_ready = sbState == 3'h3 | sbState == 3'h4; // @[SBA.scala 295:50]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SBA.scala 356:33]
      sbState <= 3'h0; // @[SBA.scala 357:21 358:21]
    end else if (sbState == 3'h0) begin // @[SBA.scala 359:48]
      if (io_rdEn & io_rdLegal) begin // @[SBA.scala 360:21]
        sbState <= 3'h1;
      end else if (io_wrEn & io_wrLegal) begin
        sbState <= 3'h2;
      end
    end else if (_T) begin // @[SBA.scala 361:49]
      if (tl_a_valid & auto_out_a_ready) begin // @[SBA.scala 362:21]
        sbState <= 3'h3;
      end
    end else if (_bundleOut_0_a_valid_T_1) begin // @[SBA.scala 363:49]
      if (_sbState_T_4) begin // @[SBA.scala 364:15]
        sbState <= 3'h4;
      end
    end else if (_d_io_deq_ready_T) begin
      sbState <= _sbState_T_10;
    end else begin
      sbState <= _GEN_16;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SBA.scala 348:19]
      counter <= 4'h0;
    end else if ((wrTxValid | rdTxValid) & txLast) begin // @[SBA.scala 349:19]
      counter <= 4'h0;
    end else if (_counter_T) begin
      counter <= _counter_T_4;
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
  sbState = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  counter = _RAND_1[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    sbState = 3'h0;
  end
  if (reset) begin
    counter = 4'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

