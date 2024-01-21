module SourceC(
  input          clock,
  input          reset,
  output         io_in_ready,
  input          io_in_valid,
  input  [6:0]   io_in_bits_task_set,
  input  [21:0]  io_in_bits_task_tag,
  input  [5:0]   io_in_bits_task_off,
  input  [2:0]   io_in_bits_task_opcode,
  input  [2:0]   io_in_bits_task_param,
  input  [7:0]   io_in_bits_task_mshrId,
  input          io_in_bits_task_dirty,
  input  [511:0] io_in_bits_data_data,
  input          io_out_ready,
  output         io_out_valid,
  output [2:0]   io_out_bits_opcode,
  output [2:0]   io_out_bits_param,
  output [7:0]   io_out_bits_source,
  output [35:0]  io_out_bits_address,
  output         io_out_bits_echo_blockisdirty,
  output [255:0] io_out_bits_data
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
  reg [511:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  wire  queue_clock; // @[SourceC.scala 131:21]
  wire  queue_reset; // @[SourceC.scala 131:21]
  wire  queue_io_enq_ready; // @[SourceC.scala 131:21]
  wire  queue_io_enq_valid; // @[SourceC.scala 131:21]
  wire [6:0] queue_io_enq_bits_task_set; // @[SourceC.scala 131:21]
  wire [21:0] queue_io_enq_bits_task_tag; // @[SourceC.scala 131:21]
  wire [5:0] queue_io_enq_bits_task_off; // @[SourceC.scala 131:21]
  wire [2:0] queue_io_enq_bits_task_opcode; // @[SourceC.scala 131:21]
  wire [2:0] queue_io_enq_bits_task_param; // @[SourceC.scala 131:21]
  wire [7:0] queue_io_enq_bits_task_mshrId; // @[SourceC.scala 131:21]
  wire  queue_io_enq_bits_task_dirty; // @[SourceC.scala 131:21]
  wire [511:0] queue_io_enq_bits_data_data; // @[SourceC.scala 131:21]
  wire  queue_io_deq_ready; // @[SourceC.scala 131:21]
  wire  queue_io_deq_valid; // @[SourceC.scala 131:21]
  wire [6:0] queue_io_deq_bits_task_set; // @[SourceC.scala 131:21]
  wire [21:0] queue_io_deq_bits_task_tag; // @[SourceC.scala 131:21]
  wire [5:0] queue_io_deq_bits_task_off; // @[SourceC.scala 131:21]
  wire [2:0] queue_io_deq_bits_task_opcode; // @[SourceC.scala 131:21]
  wire [2:0] queue_io_deq_bits_task_param; // @[SourceC.scala 131:21]
  wire [7:0] queue_io_deq_bits_task_mshrId; // @[SourceC.scala 131:21]
  wire  queue_io_deq_bits_task_dirty; // @[SourceC.scala 131:21]
  wire [511:0] queue_io_deq_bits_data_data; // @[SourceC.scala 131:21]
  reg  beatValids_0; // @[SourceC.scala 137:27]
  reg  beatValids_1; // @[SourceC.scala 137:27]
  wire [1:0] _taskValid_T = {beatValids_1,beatValids_0}; // @[SourceC.scala 138:30]
  wire  taskValid = |_taskValid_T; // @[SourceC.scala 138:37]
  reg [6:0] taskR_task_set; // @[SourceC.scala 139:22]
  reg [21:0] taskR_task_tag; // @[SourceC.scala 139:22]
  reg [5:0] taskR_task_off; // @[SourceC.scala 139:22]
  reg [2:0] taskR_task_opcode; // @[SourceC.scala 139:22]
  reg [2:0] taskR_task_param; // @[SourceC.scala 139:22]
  reg [7:0] taskR_task_mshrId; // @[SourceC.scala 139:22]
  reg  taskR_task_dirty; // @[SourceC.scala 139:22]
  reg [511:0] taskR_data_data; // @[SourceC.scala 139:22]
  wire  dequeueReady = ~taskValid; // @[SourceC.scala 144:22]
  wire  _GEN_0 = queue_io_deq_valid & dequeueReady | beatValids_0; // @[SourceC.scala 146:44 147:26 137:27]
  wire  _GEN_1 = queue_io_deq_valid & dequeueReady | beatValids_1; // @[SourceC.scala 146:44 147:26 137:27]
  wire [1:0] _selOH_T_2 = _taskValid_T[1] ? 2'h2 : 2'h0; // @[Mux.scala 47:70]
  wire [1:0] selOH = _taskValid_T[0] ? 2'h1 : _selOH_T_2; // @[Mux.scala 47:70]
  wire [1:0] _next_beatsOH_T = ~selOH; // @[SourceC.scala 174:34]
  wire [1:0] next_beatsOH = _taskValid_T & _next_beatsOH_T; // @[SourceC.scala 174:32]
  wire [34:0] _io_out_bits_c_address_T = {taskR_task_tag,taskR_task_set,taskR_task_off}; // @[Cat.scala 31:58]
  wire  hasData = io_out_bits_opcode[0]; // @[SourceC.scala 185:35]
  wire  _T_1 = io_out_ready & io_out_valid; // @[Decoupled.scala 50:35]
  wire  _GEN_28 = hasData & next_beatsOH[0]; // @[SourceC.scala 187:20 188:18 190:28]
  wire  _GEN_29 = hasData & next_beatsOH[1]; // @[SourceC.scala 187:20 188:18 190:28]
  Queue_159 queue ( // @[SourceC.scala 131:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_task_set(queue_io_enq_bits_task_set),
    .io_enq_bits_task_tag(queue_io_enq_bits_task_tag),
    .io_enq_bits_task_off(queue_io_enq_bits_task_off),
    .io_enq_bits_task_opcode(queue_io_enq_bits_task_opcode),
    .io_enq_bits_task_param(queue_io_enq_bits_task_param),
    .io_enq_bits_task_mshrId(queue_io_enq_bits_task_mshrId),
    .io_enq_bits_task_dirty(queue_io_enq_bits_task_dirty),
    .io_enq_bits_data_data(queue_io_enq_bits_data_data),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_task_set(queue_io_deq_bits_task_set),
    .io_deq_bits_task_tag(queue_io_deq_bits_task_tag),
    .io_deq_bits_task_off(queue_io_deq_bits_task_off),
    .io_deq_bits_task_opcode(queue_io_deq_bits_task_opcode),
    .io_deq_bits_task_param(queue_io_deq_bits_task_param),
    .io_deq_bits_task_mshrId(queue_io_deq_bits_task_mshrId),
    .io_deq_bits_task_dirty(queue_io_deq_bits_task_dirty),
    .io_deq_bits_data_data(queue_io_deq_bits_data_data)
  );
  assign io_in_ready = queue_io_enq_ready; // @[SourceC.scala 132:16]
  assign io_out_valid = |_taskValid_T; // @[SourceC.scala 138:37]
  assign io_out_bits_opcode = taskR_task_opcode; // @[SourceC.scala 153:17 154:14]
  assign io_out_bits_param = taskR_task_param; // @[SourceC.scala 153:17 155:13]
  assign io_out_bits_source = taskR_task_mshrId; // @[SourceC.scala 153:17 157:14]
  assign io_out_bits_address = {{1'd0}, _io_out_bits_c_address_T}; // @[SourceC.scala 153:17 158:15]
  assign io_out_bits_echo_blockisdirty = taskR_task_dirty; // @[SourceC.scala 153:17 162:37]
  assign io_out_bits_data = _taskValid_T[0] ? taskR_data_data[255:0] : taskR_data_data[511:256]; // @[ParallelMux.scala 90:77]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_in_valid; // @[SourceC.scala 132:16]
  assign queue_io_enq_bits_task_set = io_in_bits_task_set; // @[SourceC.scala 132:16]
  assign queue_io_enq_bits_task_tag = io_in_bits_task_tag; // @[SourceC.scala 132:16]
  assign queue_io_enq_bits_task_off = io_in_bits_task_off; // @[SourceC.scala 132:16]
  assign queue_io_enq_bits_task_opcode = io_in_bits_task_opcode; // @[SourceC.scala 132:16]
  assign queue_io_enq_bits_task_param = io_in_bits_task_param; // @[SourceC.scala 132:16]
  assign queue_io_enq_bits_task_mshrId = io_in_bits_task_mshrId; // @[SourceC.scala 132:16]
  assign queue_io_enq_bits_task_dirty = io_in_bits_task_dirty; // @[SourceC.scala 132:16]
  assign queue_io_enq_bits_data_data = io_in_bits_data_data; // @[SourceC.scala 132:16]
  assign queue_io_deq_ready = ~taskValid; // @[SourceC.scala 144:22]
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceC.scala 186:22]
      beatValids_0 <= 1'h0;
    end else if (_T_1) begin
      beatValids_0 <= _GEN_28;
    end else begin
      beatValids_0 <= _GEN_0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceC.scala 186:22]
      beatValids_1 <= 1'h0;
    end else if (_T_1) begin
      beatValids_1 <= _GEN_29;
    end else begin
      beatValids_1 <= _GEN_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceC.scala 146:44]
      taskR_task_set <= 7'h0; // @[SourceC.scala 148:16]
    end else if (queue_io_deq_valid & dequeueReady) begin // @[SourceC.scala 139:22]
      taskR_task_set <= queue_io_deq_bits_task_set;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceC.scala 146:44]
      taskR_task_tag <= 22'h0; // @[SourceC.scala 148:16]
    end else if (queue_io_deq_valid & dequeueReady) begin // @[SourceC.scala 139:22]
      taskR_task_tag <= queue_io_deq_bits_task_tag;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceC.scala 146:44]
      taskR_task_off <= 6'h0; // @[SourceC.scala 148:16]
    end else if (queue_io_deq_valid & dequeueReady) begin // @[SourceC.scala 139:22]
      taskR_task_off <= queue_io_deq_bits_task_off;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceC.scala 146:44]
      taskR_task_opcode <= 3'h0; // @[SourceC.scala 148:16]
    end else if (queue_io_deq_valid & dequeueReady) begin // @[SourceC.scala 139:22]
      taskR_task_opcode <= queue_io_deq_bits_task_opcode;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceC.scala 146:44]
      taskR_task_param <= 3'h0; // @[SourceC.scala 148:16]
    end else if (queue_io_deq_valid & dequeueReady) begin // @[SourceC.scala 139:22]
      taskR_task_param <= queue_io_deq_bits_task_param;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceC.scala 146:44]
      taskR_task_mshrId <= 8'h0; // @[SourceC.scala 148:16]
    end else if (queue_io_deq_valid & dequeueReady) begin // @[SourceC.scala 139:22]
      taskR_task_mshrId <= queue_io_deq_bits_task_mshrId;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceC.scala 146:44]
      taskR_task_dirty <= 1'h0; // @[SourceC.scala 148:16]
    end else if (queue_io_deq_valid & dequeueReady) begin // @[SourceC.scala 139:22]
      taskR_task_dirty <= queue_io_deq_bits_task_dirty;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SourceC.scala 146:44]
      taskR_data_data <= 512'h0; // @[SourceC.scala 149:16]
    end else if (queue_io_deq_valid & dequeueReady) begin // @[SourceC.scala 139:22]
      taskR_data_data <= queue_io_deq_bits_data_data;
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
  beatValids_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  beatValids_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  taskR_task_set = _RAND_2[6:0];
  _RAND_3 = {1{`RANDOM}};
  taskR_task_tag = _RAND_3[21:0];
  _RAND_4 = {1{`RANDOM}};
  taskR_task_off = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  taskR_task_opcode = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  taskR_task_param = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  taskR_task_mshrId = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  taskR_task_dirty = _RAND_8[0:0];
  _RAND_9 = {16{`RANDOM}};
  taskR_data_data = _RAND_9[511:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    beatValids_0 = 1'h0;
  end
  if (reset) begin
    beatValids_1 = 1'h0;
  end
  if (reset) begin
    taskR_task_set = 7'h0;
  end
  if (reset) begin
    taskR_task_tag = 22'h0;
  end
  if (reset) begin
    taskR_task_off = 6'h0;
  end
  if (reset) begin
    taskR_task_opcode = 3'h0;
  end
  if (reset) begin
    taskR_task_param = 3'h0;
  end
  if (reset) begin
    taskR_task_mshrId = 8'h0;
  end
  if (reset) begin
    taskR_task_dirty = 1'h0;
  end
  if (reset) begin
    taskR_data_data = 512'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

