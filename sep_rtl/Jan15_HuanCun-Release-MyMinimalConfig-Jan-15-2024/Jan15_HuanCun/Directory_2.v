module Directory_2(
  input         clock,
  input         reset,
  output        io_read_ready,
  input         io_read_valid,
  input  [15:0] io_read_bits_idOH,
  input  [21:0] io_read_bits_tag,
  input  [7:0]  io_read_bits_set,
  input  [2:0]  io_read_bits_replacerInfo_channel,
  input  [2:0]  io_read_bits_replacerInfo_opcode,
  input  [9:0]  io_read_bits_source,
  output        io_result_valid,
  output [15:0] io_result_bits_idOH,
  output        io_result_bits_self_dirty,
  output [1:0]  io_result_bits_self_state,
  output [1:0]  io_result_bits_self_clientStates_0,
  output        io_result_bits_self_hit,
  output [2:0]  io_result_bits_self_way,
  output [21:0] io_result_bits_self_tag,
  output [1:0]  io_result_bits_clients_states_0_state,
  output        io_result_bits_clients_states_0_hit,
  output        io_result_bits_clients_tag_match,
  output [21:0] io_result_bits_clients_tag,
  output [2:0]  io_result_bits_clients_way,
  output [9:0]  io_result_bits_sourceId,
  output [7:0]  io_result_bits_set,
  output [2:0]  io_result_bits_replacerInfo_channel,
  output [2:0]  io_result_bits_replacerInfo_opcode,
  input         io_dirWReq_valid,
  input  [7:0]  io_dirWReq_bits_set,
  input  [2:0]  io_dirWReq_bits_way,
  input         io_dirWReq_bits_data_dirty,
  input  [1:0]  io_dirWReq_bits_data_state,
  input  [1:0]  io_dirWReq_bits_data_clientStates_0,
  input         io_tagWReq_valid,
  input  [7:0]  io_tagWReq_bits_set,
  input  [2:0]  io_tagWReq_bits_way,
  input  [21:0] io_tagWReq_bits_tag,
  input         io_clientDirWReq_valid,
  input  [7:0]  io_clientDirWReq_bits_set,
  input  [2:0]  io_clientDirWReq_bits_way,
  input  [1:0]  io_clientDirWReq_bits_data_0_state,
  input         io_clientTagWreq_valid,
  input  [7:0]  io_clientTagWreq_bits_set,
  input  [2:0]  io_clientTagWreq_bits_way,
  input  [21:0] io_clientTagWreq_bits_tag
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
`endif // RANDOMIZE_REG_INIT
  wire  clientDir_clock; // @[Directory.scala 180:25]
  wire  clientDir_reset; // @[Directory.scala 180:25]
  wire  clientDir_io_read_ready; // @[Directory.scala 180:25]
  wire  clientDir_io_read_valid; // @[Directory.scala 180:25]
  wire [21:0] clientDir_io_read_bits_tag; // @[Directory.scala 180:25]
  wire [7:0] clientDir_io_read_bits_set; // @[Directory.scala 180:25]
  wire  clientDir_io_resp_bits_hit; // @[Directory.scala 180:25]
  wire [2:0] clientDir_io_resp_bits_way; // @[Directory.scala 180:25]
  wire [21:0] clientDir_io_resp_bits_tag; // @[Directory.scala 180:25]
  wire [1:0] clientDir_io_resp_bits_dir_0_state; // @[Directory.scala 180:25]
  wire  clientDir_io_tag_wready; // @[Directory.scala 180:25]
  wire  clientDir_io_tag_wvalid; // @[Directory.scala 180:25]
  wire [21:0] clientDir_io_tag_wtag; // @[Directory.scala 180:25]
  wire [7:0] clientDir_io_tag_wset; // @[Directory.scala 180:25]
  wire [2:0] clientDir_io_tag_wway; // @[Directory.scala 180:25]
  wire  clientDir_io_dir_wvalid; // @[Directory.scala 180:25]
  wire [7:0] clientDir_io_dir_wset; // @[Directory.scala 180:25]
  wire [2:0] clientDir_io_dir_wway; // @[Directory.scala 180:25]
  wire [1:0] clientDir_io_dir_wdir_0_state; // @[Directory.scala 180:25]
  wire  selfDir_clock; // @[Directory.scala 215:23]
  wire  selfDir_reset; // @[Directory.scala 215:23]
  wire  selfDir_io_read_ready; // @[Directory.scala 215:23]
  wire  selfDir_io_read_valid; // @[Directory.scala 215:23]
  wire [21:0] selfDir_io_read_bits_tag; // @[Directory.scala 215:23]
  wire [7:0] selfDir_io_read_bits_set; // @[Directory.scala 215:23]
  wire [2:0] selfDir_io_read_bits_replacerInfo_channel; // @[Directory.scala 215:23]
  wire [2:0] selfDir_io_read_bits_replacerInfo_opcode; // @[Directory.scala 215:23]
  wire  selfDir_io_resp_valid; // @[Directory.scala 215:23]
  wire  selfDir_io_resp_bits_hit; // @[Directory.scala 215:23]
  wire [2:0] selfDir_io_resp_bits_way; // @[Directory.scala 215:23]
  wire [21:0] selfDir_io_resp_bits_tag; // @[Directory.scala 215:23]
  wire  selfDir_io_resp_bits_dir_dirty; // @[Directory.scala 215:23]
  wire [1:0] selfDir_io_resp_bits_dir_state; // @[Directory.scala 215:23]
  wire [1:0] selfDir_io_resp_bits_dir_clientStates_0; // @[Directory.scala 215:23]
  wire  selfDir_io_tag_wready; // @[Directory.scala 215:23]
  wire  selfDir_io_tag_wvalid; // @[Directory.scala 215:23]
  wire [21:0] selfDir_io_tag_wtag; // @[Directory.scala 215:23]
  wire [7:0] selfDir_io_tag_wset; // @[Directory.scala 215:23]
  wire [2:0] selfDir_io_tag_wway; // @[Directory.scala 215:23]
  wire  selfDir_io_dir_wvalid; // @[Directory.scala 215:23]
  wire [7:0] selfDir_io_dir_wset; // @[Directory.scala 215:23]
  wire [2:0] selfDir_io_dir_wway; // @[Directory.scala 215:23]
  wire  selfDir_io_dir_wdir_dirty; // @[Directory.scala 215:23]
  wire [1:0] selfDir_io_dir_wdir_state; // @[Directory.scala 215:23]
  wire [1:0] selfDir_io_dir_wdir_clientStates_0; // @[Directory.scala 215:23]
  wire [29:0] addr = {io_read_bits_tag,io_read_bits_set}; // @[Cat.scala 31:58]
  wire  _T_4 = io_read_ready & io_read_valid; // @[Decoupled.scala 50:35]
  wire [1:0] _io_read_ready_T = {clientDir_io_read_ready,selfDir_io_read_ready}; // @[Cat.scala 31:58]
  reg  reqValidReg; // @[Directory.scala 257:28]
  reg [15:0] reqIdOHReg; // @[Reg.scala 16:16]
  reg [9:0] sourceIdReg_r; // @[Reg.scala 16:16]
  reg [9:0] sourceIdReg; // @[Reg.scala 16:16]
  reg [7:0] setReg_r; // @[Reg.scala 16:16]
  reg [7:0] setReg; // @[Reg.scala 16:16]
  reg [2:0] replacerInfoReg_rchannel; // @[Reg.scala 16:16]
  reg [2:0] replacerInfoReg_ropcode; // @[Reg.scala 16:16]
  reg [2:0] replacerInfoReg_channel; // @[Reg.scala 16:16]
  reg [2:0] replacerInfoReg_opcode; // @[Reg.scala 16:16]
  SubDirectory clientDir ( // @[Directory.scala 180:25]
    .clock(clientDir_clock),
    .reset(clientDir_reset),
    .io_read_ready(clientDir_io_read_ready),
    .io_read_valid(clientDir_io_read_valid),
    .io_read_bits_tag(clientDir_io_read_bits_tag),
    .io_read_bits_set(clientDir_io_read_bits_set),
    .io_resp_bits_hit(clientDir_io_resp_bits_hit),
    .io_resp_bits_way(clientDir_io_resp_bits_way),
    .io_resp_bits_tag(clientDir_io_resp_bits_tag),
    .io_resp_bits_dir_0_state(clientDir_io_resp_bits_dir_0_state),
    .io_tag_wready(clientDir_io_tag_wready),
    .io_tag_wvalid(clientDir_io_tag_wvalid),
    .io_tag_wtag(clientDir_io_tag_wtag),
    .io_tag_wset(clientDir_io_tag_wset),
    .io_tag_wway(clientDir_io_tag_wway),
    .io_dir_wvalid(clientDir_io_dir_wvalid),
    .io_dir_wset(clientDir_io_dir_wset),
    .io_dir_wway(clientDir_io_dir_wway),
    .io_dir_wdir_0_state(clientDir_io_dir_wdir_0_state)
  );
  Directory_Anon selfDir ( // @[Directory.scala 215:23]
    .clock(selfDir_clock),
    .reset(selfDir_reset),
    .io_read_ready(selfDir_io_read_ready),
    .io_read_valid(selfDir_io_read_valid),
    .io_read_bits_tag(selfDir_io_read_bits_tag),
    .io_read_bits_set(selfDir_io_read_bits_set),
    .io_read_bits_replacerInfo_channel(selfDir_io_read_bits_replacerInfo_channel),
    .io_read_bits_replacerInfo_opcode(selfDir_io_read_bits_replacerInfo_opcode),
    .io_resp_valid(selfDir_io_resp_valid),
    .io_resp_bits_hit(selfDir_io_resp_bits_hit),
    .io_resp_bits_way(selfDir_io_resp_bits_way),
    .io_resp_bits_tag(selfDir_io_resp_bits_tag),
    .io_resp_bits_dir_dirty(selfDir_io_resp_bits_dir_dirty),
    .io_resp_bits_dir_state(selfDir_io_resp_bits_dir_state),
    .io_resp_bits_dir_clientStates_0(selfDir_io_resp_bits_dir_clientStates_0),
    .io_tag_wready(selfDir_io_tag_wready),
    .io_tag_wvalid(selfDir_io_tag_wvalid),
    .io_tag_wtag(selfDir_io_tag_wtag),
    .io_tag_wset(selfDir_io_tag_wset),
    .io_tag_wway(selfDir_io_tag_wway),
    .io_dir_wvalid(selfDir_io_dir_wvalid),
    .io_dir_wset(selfDir_io_dir_wset),
    .io_dir_wway(selfDir_io_dir_wway),
    .io_dir_wdir_dirty(selfDir_io_dir_wdir_dirty),
    .io_dir_wdir_state(selfDir_io_dir_wdir_state),
    .io_dir_wdir_clientStates_0(selfDir_io_dir_wdir_clientStates_0)
  );
  assign io_read_ready = &_io_read_ready_T; // @[Directory.scala 256:45]
  assign io_result_valid = selfDir_io_resp_valid; // @[Directory.scala 265:14]
  assign io_result_bits_idOH = reqIdOHReg; // @[Directory.scala 268:18]
  assign io_result_bits_self_dirty = selfDir_io_resp_bits_dir_dirty; // @[Directory.scala 275:24]
  assign io_result_bits_self_state = selfDir_io_resp_bits_dir_state; // @[Directory.scala 276:24]
  assign io_result_bits_self_clientStates_0 = selfDir_io_resp_bits_dir_clientStates_0; // @[Directory.scala 278:31]
  assign io_result_bits_self_hit = selfDir_io_resp_bits_hit; // @[Directory.scala 272:22]
  assign io_result_bits_self_way = selfDir_io_resp_bits_way; // @[Directory.scala 273:22]
  assign io_result_bits_self_tag = selfDir_io_resp_bits_tag; // @[Directory.scala 274:22]
  assign io_result_bits_clients_states_0_state = clientDir_io_resp_bits_dir_0_state; // @[Directory.scala 285:15]
  assign io_result_bits_clients_states_0_hit = clientDir_io_resp_bits_hit & clientDir_io_resp_bits_dir_0_state != 2'h0; // @[Directory.scala 286:36]
  assign io_result_bits_clients_tag_match = clientDir_io_resp_bits_hit; // @[Directory.scala 289:31]
  assign io_result_bits_clients_tag = clientDir_io_resp_bits_tag; // @[Directory.scala 281:25]
  assign io_result_bits_clients_way = clientDir_io_resp_bits_way; // @[Directory.scala 280:25]
  assign io_result_bits_sourceId = sourceIdReg; // @[Directory.scala 269:22]
  assign io_result_bits_set = setReg; // @[Directory.scala 270:17]
  assign io_result_bits_replacerInfo_channel = replacerInfoReg_channel; // @[Directory.scala 271:26]
  assign io_result_bits_replacerInfo_opcode = replacerInfoReg_opcode; // @[Directory.scala 271:26]
  assign clientDir_clock = clock;
  assign clientDir_reset = reset;
  assign clientDir_io_read_valid = io_read_valid; // @[Directory.scala 243:13]
  assign clientDir_io_read_bits_tag = addr[29:8]; // @[Directory.scala 237:22]
  assign clientDir_io_read_bits_set = addr[7:0]; // @[Directory.scala 236:22]
  assign clientDir_io_tag_wvalid = io_clientTagWreq_valid; // @[Directory.scala 298:28]
  assign clientDir_io_tag_wtag = io_clientTagWreq_bits_tag; // @[Directory.scala 299:31]
  assign clientDir_io_tag_wset = io_clientTagWreq_bits_set; // @[Directory.scala 300:31]
  assign clientDir_io_tag_wway = io_clientTagWreq_bits_way; // @[Directory.scala 301:31]
  assign clientDir_io_dir_wvalid = io_clientDirWReq_valid; // @[Directory.scala 311:28]
  assign clientDir_io_dir_wset = io_clientDirWReq_bits_set; // @[Directory.scala 312:31]
  assign clientDir_io_dir_wway = io_clientDirWReq_bits_way; // @[Directory.scala 313:31]
  assign clientDir_io_dir_wdir_0_state = io_clientDirWReq_bits_data_0_state; // @[Directory.scala 314:31]
  assign selfDir_clock = clock;
  assign selfDir_reset = reset;
  assign selfDir_io_read_valid = io_read_valid; // @[Directory.scala 243:13]
  assign selfDir_io_read_bits_tag = addr[29:8]; // @[Directory.scala 237:22]
  assign selfDir_io_read_bits_set = addr[7:0]; // @[Directory.scala 236:22]
  assign selfDir_io_read_bits_replacerInfo_channel = io_read_bits_replacerInfo_channel; // @[Directory.scala 245:25]
  assign selfDir_io_read_bits_replacerInfo_opcode = io_read_bits_replacerInfo_opcode; // @[Directory.scala 245:25]
  assign selfDir_io_tag_wvalid = io_tagWReq_valid; // @[Directory.scala 292:26]
  assign selfDir_io_tag_wtag = io_tagWReq_bits_tag; // @[Directory.scala 293:29]
  assign selfDir_io_tag_wset = io_tagWReq_bits_set; // @[Directory.scala 294:29]
  assign selfDir_io_tag_wway = io_tagWReq_bits_way; // @[Directory.scala 295:29]
  assign selfDir_io_dir_wvalid = io_dirWReq_valid; // @[Directory.scala 305:26]
  assign selfDir_io_dir_wset = io_dirWReq_bits_set; // @[Directory.scala 306:29]
  assign selfDir_io_dir_wway = io_dirWReq_bits_way; // @[Directory.scala 307:29]
  assign selfDir_io_dir_wdir_dirty = io_dirWReq_bits_data_dirty; // @[Directory.scala 308:29]
  assign selfDir_io_dir_wdir_state = io_dirWReq_bits_data_state; // @[Directory.scala 308:29]
  assign selfDir_io_dir_wdir_clientStates_0 = io_dirWReq_bits_data_clientStates_0; // @[Directory.scala 308:29]
  always @(posedge clock) begin
    if (_T_4) begin // @[Reg.scala 17:18]
      reqIdOHReg <= io_read_bits_idOH; // @[Reg.scala 17:22]
    end
    if (_T_4) begin // @[Reg.scala 17:18]
      sourceIdReg_r <= io_read_bits_source; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      sourceIdReg <= sourceIdReg_r; // @[Reg.scala 17:22]
    end
    if (_T_4) begin // @[Reg.scala 17:18]
      setReg_r <= io_read_bits_set; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      setReg <= setReg_r; // @[Reg.scala 17:22]
    end
    if (_T_4) begin // @[Reg.scala 17:18]
      replacerInfoReg_rchannel <= io_read_bits_replacerInfo_channel; // @[Reg.scala 17:22]
    end
    if (_T_4) begin // @[Reg.scala 17:18]
      replacerInfoReg_ropcode <= io_read_bits_replacerInfo_opcode; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      replacerInfoReg_channel <= replacerInfoReg_rchannel; // @[Reg.scala 17:22]
    end
    if (reqValidReg) begin // @[Reg.scala 17:18]
      replacerInfoReg_opcode <= replacerInfoReg_ropcode; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Decoupled.scala 50:35]
      reqValidReg <= 1'h0;
    end else begin
      reqValidReg <= io_read_ready & io_read_valid;
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
  reqValidReg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  reqIdOHReg = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  sourceIdReg_r = _RAND_2[9:0];
  _RAND_3 = {1{`RANDOM}};
  sourceIdReg = _RAND_3[9:0];
  _RAND_4 = {1{`RANDOM}};
  setReg_r = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  setReg = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  replacerInfoReg_rchannel = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  replacerInfoReg_ropcode = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  replacerInfoReg_channel = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  replacerInfoReg_opcode = _RAND_9[2:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    reqValidReg = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

