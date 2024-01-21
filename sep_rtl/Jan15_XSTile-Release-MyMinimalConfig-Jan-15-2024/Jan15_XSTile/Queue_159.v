module Queue_159(
  input          clock,
  input          reset,
  output         io_enq_ready,
  input          io_enq_valid,
  input  [6:0]   io_enq_bits_task_set,
  input  [21:0]  io_enq_bits_task_tag,
  input  [5:0]   io_enq_bits_task_off,
  input  [2:0]   io_enq_bits_task_opcode,
  input  [2:0]   io_enq_bits_task_param,
  input  [7:0]   io_enq_bits_task_mshrId,
  input          io_enq_bits_task_dirty,
  input  [511:0] io_enq_bits_data_data,
  input          io_deq_ready,
  output         io_deq_valid,
  output [6:0]   io_deq_bits_task_set,
  output [21:0]  io_deq_bits_task_tag,
  output [5:0]   io_deq_bits_task_off,
  output [2:0]   io_deq_bits_task_opcode,
  output [2:0]   io_deq_bits_task_param,
  output [7:0]   io_deq_bits_task_mshrId,
  output         io_deq_bits_task_dirty,
  output [511:0] io_deq_bits_data_data
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [511:0] _RAND_7;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  reg [6:0] ram_task_set [0:15]; // @[Decoupled.scala 259:95]
  wire  ram_task_set_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [3:0] ram_task_set_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [6:0] ram_task_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [6:0] ram_task_set_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_task_set_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_task_set_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_task_set_MPORT_en; // @[Decoupled.scala 259:95]
  reg [21:0] ram_task_tag [0:15]; // @[Decoupled.scala 259:95]
  wire  ram_task_tag_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [3:0] ram_task_tag_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [21:0] ram_task_tag_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [21:0] ram_task_tag_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_task_tag_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_task_tag_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_task_tag_MPORT_en; // @[Decoupled.scala 259:95]
  reg [5:0] ram_task_off [0:15]; // @[Decoupled.scala 259:95]
  wire  ram_task_off_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [3:0] ram_task_off_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [5:0] ram_task_off_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [5:0] ram_task_off_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_task_off_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_task_off_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_task_off_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_task_opcode [0:15]; // @[Decoupled.scala 259:95]
  wire  ram_task_opcode_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [3:0] ram_task_opcode_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_task_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_task_opcode_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_task_opcode_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_task_opcode_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_task_opcode_MPORT_en; // @[Decoupled.scala 259:95]
  reg [2:0] ram_task_param [0:15]; // @[Decoupled.scala 259:95]
  wire  ram_task_param_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [3:0] ram_task_param_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [2:0] ram_task_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [2:0] ram_task_param_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_task_param_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_task_param_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_task_param_MPORT_en; // @[Decoupled.scala 259:95]
  reg [7:0] ram_task_mshrId [0:15]; // @[Decoupled.scala 259:95]
  wire  ram_task_mshrId_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [3:0] ram_task_mshrId_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [7:0] ram_task_mshrId_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [7:0] ram_task_mshrId_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_task_mshrId_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_task_mshrId_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_task_mshrId_MPORT_en; // @[Decoupled.scala 259:95]
  reg  ram_task_dirty [0:15]; // @[Decoupled.scala 259:95]
  wire  ram_task_dirty_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [3:0] ram_task_dirty_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_task_dirty_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire  ram_task_dirty_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_task_dirty_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_task_dirty_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_task_dirty_MPORT_en; // @[Decoupled.scala 259:95]
  reg [511:0] ram_data_data [0:15]; // @[Decoupled.scala 259:95]
  wire  ram_data_data_io_deq_bits_MPORT_en; // @[Decoupled.scala 259:95]
  wire [3:0] ram_data_data_io_deq_bits_MPORT_addr; // @[Decoupled.scala 259:95]
  wire [511:0] ram_data_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 259:95]
  wire [511:0] ram_data_data_MPORT_data; // @[Decoupled.scala 259:95]
  wire [3:0] ram_data_data_MPORT_addr; // @[Decoupled.scala 259:95]
  wire  ram_data_data_MPORT_mask; // @[Decoupled.scala 259:95]
  wire  ram_data_data_MPORT_en; // @[Decoupled.scala 259:95]
  reg [3:0] enq_ptr_value; // @[Counter.scala 62:40]
  reg [3:0] deq_ptr_value; // @[Counter.scala 62:40]
  reg  maybe_full; // @[Decoupled.scala 262:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 263:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 264:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 265:24]
  wire  _do_enq_T = io_enq_ready & io_enq_valid; // @[Decoupled.scala 50:35]
  wire  _do_deq_T = io_deq_ready & io_deq_valid; // @[Decoupled.scala 50:35]
  wire [3:0] _value_T_1 = enq_ptr_value + 4'h1; // @[Counter.scala 78:24]
  wire  _GEN_37 = io_deq_ready ? 1'h0 : _do_enq_T; // @[Decoupled.scala 304:{26,35}]
  wire  do_enq = empty ? _GEN_37 : _do_enq_T; // @[Decoupled.scala 301:17]
  wire [3:0] _value_T_3 = deq_ptr_value + 4'h1; // @[Counter.scala 78:24]
  wire  do_deq = empty ? 1'h0 : _do_deq_T; // @[Decoupled.scala 301:17 303:14]
  assign ram_task_set_io_deq_bits_MPORT_en = 1'h1;
  assign ram_task_set_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_task_set_io_deq_bits_MPORT_data = ram_task_set[ram_task_set_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_task_set_MPORT_data = io_enq_bits_task_set;
  assign ram_task_set_MPORT_addr = enq_ptr_value;
  assign ram_task_set_MPORT_mask = 1'h1;
  assign ram_task_set_MPORT_en = empty ? _GEN_37 : _do_enq_T;
  assign ram_task_tag_io_deq_bits_MPORT_en = 1'h1;
  assign ram_task_tag_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_task_tag_io_deq_bits_MPORT_data = ram_task_tag[ram_task_tag_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_task_tag_MPORT_data = io_enq_bits_task_tag;
  assign ram_task_tag_MPORT_addr = enq_ptr_value;
  assign ram_task_tag_MPORT_mask = 1'h1;
  assign ram_task_tag_MPORT_en = empty ? _GEN_37 : _do_enq_T;
  assign ram_task_off_io_deq_bits_MPORT_en = 1'h1;
  assign ram_task_off_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_task_off_io_deq_bits_MPORT_data = ram_task_off[ram_task_off_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_task_off_MPORT_data = io_enq_bits_task_off;
  assign ram_task_off_MPORT_addr = enq_ptr_value;
  assign ram_task_off_MPORT_mask = 1'h1;
  assign ram_task_off_MPORT_en = empty ? _GEN_37 : _do_enq_T;
  assign ram_task_opcode_io_deq_bits_MPORT_en = 1'h1;
  assign ram_task_opcode_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_task_opcode_io_deq_bits_MPORT_data = ram_task_opcode[ram_task_opcode_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_task_opcode_MPORT_data = io_enq_bits_task_opcode;
  assign ram_task_opcode_MPORT_addr = enq_ptr_value;
  assign ram_task_opcode_MPORT_mask = 1'h1;
  assign ram_task_opcode_MPORT_en = empty ? _GEN_37 : _do_enq_T;
  assign ram_task_param_io_deq_bits_MPORT_en = 1'h1;
  assign ram_task_param_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_task_param_io_deq_bits_MPORT_data = ram_task_param[ram_task_param_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_task_param_MPORT_data = io_enq_bits_task_param;
  assign ram_task_param_MPORT_addr = enq_ptr_value;
  assign ram_task_param_MPORT_mask = 1'h1;
  assign ram_task_param_MPORT_en = empty ? _GEN_37 : _do_enq_T;
  assign ram_task_mshrId_io_deq_bits_MPORT_en = 1'h1;
  assign ram_task_mshrId_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_task_mshrId_io_deq_bits_MPORT_data = ram_task_mshrId[ram_task_mshrId_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_task_mshrId_MPORT_data = io_enq_bits_task_mshrId;
  assign ram_task_mshrId_MPORT_addr = enq_ptr_value;
  assign ram_task_mshrId_MPORT_mask = 1'h1;
  assign ram_task_mshrId_MPORT_en = empty ? _GEN_37 : _do_enq_T;
  assign ram_task_dirty_io_deq_bits_MPORT_en = 1'h1;
  assign ram_task_dirty_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_task_dirty_io_deq_bits_MPORT_data = ram_task_dirty[ram_task_dirty_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_task_dirty_MPORT_data = io_enq_bits_task_dirty;
  assign ram_task_dirty_MPORT_addr = enq_ptr_value;
  assign ram_task_dirty_MPORT_mask = 1'h1;
  assign ram_task_dirty_MPORT_en = empty ? _GEN_37 : _do_enq_T;
  assign ram_data_data_io_deq_bits_MPORT_en = 1'h1;
  assign ram_data_data_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_data_data_io_deq_bits_MPORT_data = ram_data_data[ram_data_data_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 259:95]
  assign ram_data_data_MPORT_data = io_enq_bits_data_data;
  assign ram_data_data_MPORT_addr = enq_ptr_value;
  assign ram_data_data_MPORT_mask = 1'h1;
  assign ram_data_data_MPORT_en = empty ? _GEN_37 : _do_enq_T;
  assign io_enq_ready = ~full; // @[Decoupled.scala 289:19]
  assign io_deq_valid = io_enq_valid | ~empty; // @[Decoupled.scala 288:16 300:{24,39}]
  assign io_deq_bits_task_set = empty ? io_enq_bits_task_set : ram_task_set_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_task_tag = empty ? io_enq_bits_task_tag : ram_task_tag_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_task_off = empty ? io_enq_bits_task_off : ram_task_off_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_task_opcode = empty ? io_enq_bits_task_opcode : ram_task_opcode_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_task_param = empty ? io_enq_bits_task_param : ram_task_param_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_task_mshrId = empty ? io_enq_bits_task_mshrId : ram_task_mshrId_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_task_dirty = empty ? io_enq_bits_task_dirty : ram_task_dirty_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  assign io_deq_bits_data_data = empty ? io_enq_bits_data_data : ram_data_data_io_deq_bits_MPORT_data; // @[Decoupled.scala 296:17 301:17 302:19]
  always @(posedge clock) begin
    if (ram_task_set_MPORT_en & ram_task_set_MPORT_mask) begin
      ram_task_set[ram_task_set_MPORT_addr] <= ram_task_set_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_task_tag_MPORT_en & ram_task_tag_MPORT_mask) begin
      ram_task_tag[ram_task_tag_MPORT_addr] <= ram_task_tag_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_task_off_MPORT_en & ram_task_off_MPORT_mask) begin
      ram_task_off[ram_task_off_MPORT_addr] <= ram_task_off_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_task_opcode_MPORT_en & ram_task_opcode_MPORT_mask) begin
      ram_task_opcode[ram_task_opcode_MPORT_addr] <= ram_task_opcode_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_task_param_MPORT_en & ram_task_param_MPORT_mask) begin
      ram_task_param[ram_task_param_MPORT_addr] <= ram_task_param_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_task_mshrId_MPORT_en & ram_task_mshrId_MPORT_mask) begin
      ram_task_mshrId[ram_task_mshrId_MPORT_addr] <= ram_task_mshrId_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_task_dirty_MPORT_en & ram_task_dirty_MPORT_mask) begin
      ram_task_dirty[ram_task_dirty_MPORT_addr] <= ram_task_dirty_MPORT_data; // @[Decoupled.scala 259:95]
    end
    if (ram_data_data_MPORT_en & ram_data_data_MPORT_mask) begin
      ram_data_data[ram_data_data_MPORT_addr] <= ram_data_data_MPORT_data; // @[Decoupled.scala 259:95]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Decoupled.scala 272:16]
      enq_ptr_value <= 4'h0; // @[Counter.scala 78:15]
    end else if (do_enq) begin // @[Counter.scala 62:40]
      enq_ptr_value <= _value_T_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Decoupled.scala 276:16]
      deq_ptr_value <= 4'h0; // @[Counter.scala 78:15]
    end else if (do_deq) begin // @[Counter.scala 62:40]
      deq_ptr_value <= _value_T_3;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Decoupled.scala 279:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 301:17 304:{26,35}]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 262:27]
      if (empty) begin
        if (io_deq_ready) begin
          maybe_full <= 1'h0;
        end else begin
          maybe_full <= _do_enq_T;
        end
      end else begin
        maybe_full <= _do_enq_T;
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_task_set[initvar] = _RAND_0[6:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_task_tag[initvar] = _RAND_1[21:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_task_off[initvar] = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_task_opcode[initvar] = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_task_param[initvar] = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_task_mshrId[initvar] = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_task_dirty[initvar] = _RAND_6[0:0];
  _RAND_7 = {16{`RANDOM}};
  for (initvar = 0; initvar < 16; initvar = initvar+1)
    ram_data_data[initvar] = _RAND_7[511:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  enq_ptr_value = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  deq_ptr_value = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  maybe_full = _RAND_10[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    enq_ptr_value = 4'h0;
  end
  if (reset) begin
    deq_ptr_value = 4'h0;
  end
  if (reset) begin
    maybe_full = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

