module FastArbiter(
  input         clock,
  input         reset,
  input         io_in_0_valid,
  input  [2:0]  io_in_0_bits_task_channel,
  input  [6:0]  io_in_0_bits_task_set,
  input  [21:0] io_in_0_bits_task_tag,
  input  [5:0]  io_in_0_bits_task_off,
  input  [2:0]  io_in_0_bits_task_opcode,
  input  [2:0]  io_in_0_bits_task_param,
  input  [2:0]  io_in_0_bits_task_size,
  input  [4:0]  io_in_0_bits_task_sourceId,
  input  [3:0]  io_in_0_bits_task_reqSource,
  input         io_in_1_valid,
  input  [2:0]  io_in_1_bits_task_channel,
  input  [6:0]  io_in_1_bits_task_set,
  input  [21:0] io_in_1_bits_task_tag,
  input  [5:0]  io_in_1_bits_task_off,
  input  [2:0]  io_in_1_bits_task_opcode,
  input  [2:0]  io_in_1_bits_task_param,
  input  [2:0]  io_in_1_bits_task_size,
  input  [4:0]  io_in_1_bits_task_sourceId,
  input  [3:0]  io_in_1_bits_task_reqSource,
  input         io_in_2_valid,
  input  [2:0]  io_in_2_bits_task_channel,
  input  [6:0]  io_in_2_bits_task_set,
  input  [21:0] io_in_2_bits_task_tag,
  input  [5:0]  io_in_2_bits_task_off,
  input  [2:0]  io_in_2_bits_task_opcode,
  input  [2:0]  io_in_2_bits_task_param,
  input  [2:0]  io_in_2_bits_task_size,
  input  [4:0]  io_in_2_bits_task_sourceId,
  input  [3:0]  io_in_2_bits_task_reqSource,
  input         io_in_3_valid,
  input  [2:0]  io_in_3_bits_task_channel,
  input  [6:0]  io_in_3_bits_task_set,
  input  [21:0] io_in_3_bits_task_tag,
  input  [5:0]  io_in_3_bits_task_off,
  input  [2:0]  io_in_3_bits_task_opcode,
  input  [2:0]  io_in_3_bits_task_param,
  input  [2:0]  io_in_3_bits_task_size,
  input  [4:0]  io_in_3_bits_task_sourceId,
  input  [3:0]  io_in_3_bits_task_reqSource,
  input         io_out_ready,
  output        io_out_valid,
  output [2:0]  io_out_bits_task_channel,
  output [6:0]  io_out_bits_task_set,
  output [21:0] io_out_bits_task_tag,
  output [5:0]  io_out_bits_task_off,
  output [2:0]  io_out_bits_task_opcode,
  output [2:0]  io_out_bits_task_param,
  output [2:0]  io_out_bits_task_size,
  output [4:0]  io_out_bits_task_sourceId,
  output [3:0]  io_out_bits_task_reqSource,
  output [1:0]  io_chosen
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] valids = {io_in_3_valid,io_in_2_valid,io_in_1_valid,io_in_0_valid}; // @[FastArbiter.scala 36:50]
  reg [3:0] rrGrantMask; // @[Reg.scala 28:20]
  reg [3:0] pendingMask; // @[Reg.scala 28:20]
  wire [3:0] _rrSelOH_T = rrGrantMask & pendingMask; // @[FastArbiter.scala 51:47]
  wire [1:0] rrSelOH_hi = {_rrSelOH_T[0],_rrSelOH_T[1]}; // @[Cat.scala 31:58]
  wire [2:0] _rrSelOH_T_12 = {_rrSelOH_T[0],_rrSelOH_T[1],_rrSelOH_T[2]}; // @[Cat.scala 31:58]
  wire  _rrSelOH_T_15 = _rrSelOH_T[3] & ~(|_rrSelOH_T_12); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_11 = _rrSelOH_T[2] & ~(|rrSelOH_hi); // @[FastArbiter.scala 28:24]
  wire  _rrSelOH_T_7 = _rrSelOH_T[1] & ~(|_rrSelOH_T[0]); // @[FastArbiter.scala 28:24]
  wire [3:0] rrSelOH = {_rrSelOH_T_15,_rrSelOH_T_11,_rrSelOH_T_7,_rrSelOH_T[0]}; // @[FastArbiter.scala 51:80]
  wire [3:0] _rrValid_T = rrSelOH & valids; // @[FastArbiter.scala 53:26]
  wire  rrValid = |_rrValid_T; // @[FastArbiter.scala 53:39]
  wire [1:0] firstOneOH_hi = {valids[0],valids[1]}; // @[Cat.scala 31:58]
  wire [2:0] _firstOneOH_T_11 = {valids[0],valids[1],valids[2]}; // @[Cat.scala 31:58]
  wire  _firstOneOH_T_14 = valids[3] & ~(|_firstOneOH_T_11); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_10 = valids[2] & ~(|firstOneOH_hi); // @[FastArbiter.scala 28:24]
  wire  _firstOneOH_T_6 = valids[1] & ~(|valids[0]); // @[FastArbiter.scala 28:24]
  wire [3:0] firstOneOH = {_firstOneOH_T_14,_firstOneOH_T_10,_firstOneOH_T_6,valids[0]}; // @[FastArbiter.scala 52:62]
  wire [3:0] chosenOH = rrValid ? rrSelOH : firstOneOH; // @[FastArbiter.scala 54:18]
  wire [3:0] _pendingMask_T = ~chosenOH; // @[FastArbiter.scala 39:15]
  wire [3:0] _pendingMask_T_1 = valids & _pendingMask_T; // @[FastArbiter.scala 39:12]
  wire  _pendingMask_T_2 = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire  _rrGrantMask_T_1 = |chosenOH[0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_3 = |chosenOH[1:0]; // @[FastArbiter.scala 49:51]
  wire  _rrGrantMask_T_5 = |chosenOH[2:0]; // @[FastArbiter.scala 49:51]
  wire [3:0] _rrGrantMask_T_6 = {_rrGrantMask_T_5,_rrGrantMask_T_3,_rrGrantMask_T_1,1'h0}; // @[FastArbiter.scala 50:12]
  wire [3:0] _io_out_bits_T_18 = chosenOH[0] ? io_in_0_bits_task_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_19 = chosenOH[1] ? io_in_1_bits_task_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_20 = chosenOH[2] ? io_in_2_bits_task_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_21 = chosenOH[3] ? io_in_3_bits_task_reqSource : 4'h0; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_22 = _io_out_bits_T_18 | _io_out_bits_T_19; // @[Mux.scala 27:73]
  wire [3:0] _io_out_bits_T_23 = _io_out_bits_T_22 | _io_out_bits_T_20; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_137 = chosenOH[0] ? io_in_0_bits_task_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_138 = chosenOH[1] ? io_in_1_bits_task_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_139 = chosenOH[2] ? io_in_2_bits_task_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_140 = chosenOH[3] ? io_in_3_bits_task_sourceId : 5'h0; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_141 = _io_out_bits_T_137 | _io_out_bits_T_138; // @[Mux.scala 27:73]
  wire [4:0] _io_out_bits_T_142 = _io_out_bits_T_141 | _io_out_bits_T_139; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_144 = chosenOH[0] ? io_in_0_bits_task_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_145 = chosenOH[1] ? io_in_1_bits_task_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_146 = chosenOH[2] ? io_in_2_bits_task_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_147 = chosenOH[3] ? io_in_3_bits_task_size : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_148 = _io_out_bits_T_144 | _io_out_bits_T_145; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_149 = _io_out_bits_T_148 | _io_out_bits_T_146; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_151 = chosenOH[0] ? io_in_0_bits_task_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_152 = chosenOH[1] ? io_in_1_bits_task_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_153 = chosenOH[2] ? io_in_2_bits_task_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_154 = chosenOH[3] ? io_in_3_bits_task_param : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_155 = _io_out_bits_T_151 | _io_out_bits_T_152; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_156 = _io_out_bits_T_155 | _io_out_bits_T_153; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_158 = chosenOH[0] ? io_in_0_bits_task_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_159 = chosenOH[1] ? io_in_1_bits_task_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_160 = chosenOH[2] ? io_in_2_bits_task_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_161 = chosenOH[3] ? io_in_3_bits_task_opcode : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_162 = _io_out_bits_T_158 | _io_out_bits_T_159; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_163 = _io_out_bits_T_162 | _io_out_bits_T_160; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_165 = chosenOH[0] ? io_in_0_bits_task_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_166 = chosenOH[1] ? io_in_1_bits_task_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_167 = chosenOH[2] ? io_in_2_bits_task_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_168 = chosenOH[3] ? io_in_3_bits_task_off : 6'h0; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_169 = _io_out_bits_T_165 | _io_out_bits_T_166; // @[Mux.scala 27:73]
  wire [5:0] _io_out_bits_T_170 = _io_out_bits_T_169 | _io_out_bits_T_167; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_172 = chosenOH[0] ? io_in_0_bits_task_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_173 = chosenOH[1] ? io_in_1_bits_task_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_174 = chosenOH[2] ? io_in_2_bits_task_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_175 = chosenOH[3] ? io_in_3_bits_task_tag : 22'h0; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_176 = _io_out_bits_T_172 | _io_out_bits_T_173; // @[Mux.scala 27:73]
  wire [21:0] _io_out_bits_T_177 = _io_out_bits_T_176 | _io_out_bits_T_174; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_179 = chosenOH[0] ? io_in_0_bits_task_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_180 = chosenOH[1] ? io_in_1_bits_task_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_181 = chosenOH[2] ? io_in_2_bits_task_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_182 = chosenOH[3] ? io_in_3_bits_task_set : 7'h0; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_183 = _io_out_bits_T_179 | _io_out_bits_T_180; // @[Mux.scala 27:73]
  wire [6:0] _io_out_bits_T_184 = _io_out_bits_T_183 | _io_out_bits_T_181; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_186 = chosenOH[0] ? io_in_0_bits_task_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_187 = chosenOH[1] ? io_in_1_bits_task_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_188 = chosenOH[2] ? io_in_2_bits_task_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_189 = chosenOH[3] ? io_in_3_bits_task_channel : 3'h0; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_190 = _io_out_bits_T_186 | _io_out_bits_T_187; // @[Mux.scala 27:73]
  wire [2:0] _io_out_bits_T_191 = _io_out_bits_T_190 | _io_out_bits_T_188; // @[Mux.scala 27:73]
  wire [1:0] io_chosen_hi = chosenOH[3:2]; // @[OneHot.scala 30:18]
  wire  _io_chosen_T = |io_chosen_hi; // @[OneHot.scala 32:14]
  wire [1:0] _io_chosen_T_1 = io_chosen_hi | chosenOH[1:0]; // @[OneHot.scala 32:28]
  assign io_out_valid = |valids; // @[FastArbiter.scala 56:29]
  assign io_out_bits_task_channel = _io_out_bits_T_191 | _io_out_bits_T_189; // @[Mux.scala 27:73]
  assign io_out_bits_task_set = _io_out_bits_T_184 | _io_out_bits_T_182; // @[Mux.scala 27:73]
  assign io_out_bits_task_tag = _io_out_bits_T_177 | _io_out_bits_T_175; // @[Mux.scala 27:73]
  assign io_out_bits_task_off = _io_out_bits_T_170 | _io_out_bits_T_168; // @[Mux.scala 27:73]
  assign io_out_bits_task_opcode = _io_out_bits_T_163 | _io_out_bits_T_161; // @[Mux.scala 27:73]
  assign io_out_bits_task_param = _io_out_bits_T_156 | _io_out_bits_T_154; // @[Mux.scala 27:73]
  assign io_out_bits_task_size = _io_out_bits_T_149 | _io_out_bits_T_147; // @[Mux.scala 27:73]
  assign io_out_bits_task_sourceId = _io_out_bits_T_142 | _io_out_bits_T_140; // @[Mux.scala 27:73]
  assign io_out_bits_task_reqSource = _io_out_bits_T_23 | _io_out_bits_T_21; // @[Mux.scala 27:73]
  assign io_chosen = {_io_chosen_T,_io_chosen_T_1[1]}; // @[Cat.scala 31:58]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      rrGrantMask <= 4'h0; // @[Reg.scala 29:22]
    end else if (_pendingMask_T_2) begin // @[Reg.scala 28:20]
      rrGrantMask <= _rrGrantMask_T_6;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Reg.scala 29:18]
      pendingMask <= 4'h0; // @[Reg.scala 29:22]
    end else if (_pendingMask_T_2) begin // @[Reg.scala 28:20]
      pendingMask <= _pendingMask_T_1;
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
  rrGrantMask = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  pendingMask = _RAND_1[3:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    rrGrantMask = 4'h0;
  end
  if (reset) begin
    pendingMask = 4'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

