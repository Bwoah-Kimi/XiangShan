module PTWRepeaterNB(
  input         clock,
  input         reset,
  input         io_sfence_valid,
  input         io_csr_satp_changed,
  output        io_tlb_req_0_ready,
  input         io_tlb_req_0_valid,
  input  [26:0] io_tlb_req_0_bits_vpn,
  output        io_tlb_resp_valid,
  output [23:0] io_tlb_resp_bits_entry_tag,
  output [15:0] io_tlb_resp_bits_entry_asid,
  output        io_tlb_resp_bits_entry_perm_d,
  output        io_tlb_resp_bits_entry_perm_a,
  output        io_tlb_resp_bits_entry_perm_g,
  output        io_tlb_resp_bits_entry_perm_u,
  output        io_tlb_resp_bits_entry_perm_x,
  output        io_tlb_resp_bits_entry_perm_w,
  output        io_tlb_resp_bits_entry_perm_r,
  output [1:0]  io_tlb_resp_bits_entry_level,
  output [20:0] io_tlb_resp_bits_entry_ppn,
  output [2:0]  io_tlb_resp_bits_ppn_low_0,
  output [2:0]  io_tlb_resp_bits_ppn_low_1,
  output [2:0]  io_tlb_resp_bits_ppn_low_2,
  output [2:0]  io_tlb_resp_bits_ppn_low_3,
  output [2:0]  io_tlb_resp_bits_ppn_low_4,
  output [2:0]  io_tlb_resp_bits_ppn_low_5,
  output [2:0]  io_tlb_resp_bits_ppn_low_6,
  output [2:0]  io_tlb_resp_bits_ppn_low_7,
  output        io_tlb_resp_bits_valididx_0,
  output        io_tlb_resp_bits_valididx_1,
  output        io_tlb_resp_bits_valididx_2,
  output        io_tlb_resp_bits_valididx_3,
  output        io_tlb_resp_bits_valididx_4,
  output        io_tlb_resp_bits_valididx_5,
  output        io_tlb_resp_bits_valididx_6,
  output        io_tlb_resp_bits_valididx_7,
  output        io_tlb_resp_bits_pteidx_0,
  output        io_tlb_resp_bits_pteidx_1,
  output        io_tlb_resp_bits_pteidx_2,
  output        io_tlb_resp_bits_pteidx_3,
  output        io_tlb_resp_bits_pteidx_4,
  output        io_tlb_resp_bits_pteidx_5,
  output        io_tlb_resp_bits_pteidx_6,
  output        io_tlb_resp_bits_pteidx_7,
  output        io_tlb_resp_bits_pf,
  output        io_tlb_resp_bits_af,
  input         io_ptw_req_0_ready,
  output        io_ptw_req_0_valid,
  output [26:0] io_ptw_req_0_bits_vpn,
  output        io_ptw_resp_ready,
  input         io_ptw_resp_valid,
  input  [23:0] io_ptw_resp_bits_entry_tag,
  input  [15:0] io_ptw_resp_bits_entry_asid,
  input         io_ptw_resp_bits_entry_perm_d,
  input         io_ptw_resp_bits_entry_perm_a,
  input         io_ptw_resp_bits_entry_perm_g,
  input         io_ptw_resp_bits_entry_perm_u,
  input         io_ptw_resp_bits_entry_perm_x,
  input         io_ptw_resp_bits_entry_perm_w,
  input         io_ptw_resp_bits_entry_perm_r,
  input  [1:0]  io_ptw_resp_bits_entry_level,
  input  [20:0] io_ptw_resp_bits_entry_ppn,
  input  [2:0]  io_ptw_resp_bits_ppn_low_0,
  input  [2:0]  io_ptw_resp_bits_ppn_low_1,
  input  [2:0]  io_ptw_resp_bits_ppn_low_2,
  input  [2:0]  io_ptw_resp_bits_ppn_low_3,
  input  [2:0]  io_ptw_resp_bits_ppn_low_4,
  input  [2:0]  io_ptw_resp_bits_ppn_low_5,
  input  [2:0]  io_ptw_resp_bits_ppn_low_6,
  input  [2:0]  io_ptw_resp_bits_ppn_low_7,
  input         io_ptw_resp_bits_valididx_0,
  input         io_ptw_resp_bits_valididx_1,
  input         io_ptw_resp_bits_valididx_2,
  input         io_ptw_resp_bits_valididx_3,
  input         io_ptw_resp_bits_valididx_4,
  input         io_ptw_resp_bits_valididx_5,
  input         io_ptw_resp_bits_valididx_6,
  input         io_ptw_resp_bits_valididx_7,
  input         io_ptw_resp_bits_pteidx_0,
  input         io_ptw_resp_bits_pteidx_1,
  input         io_ptw_resp_bits_pteidx_2,
  input         io_ptw_resp_bits_pteidx_3,
  input         io_ptw_resp_bits_pteidx_4,
  input         io_ptw_resp_bits_pteidx_5,
  input         io_ptw_resp_bits_pteidx_6,
  input         io_ptw_resp_bits_pteidx_7,
  input         io_ptw_resp_bits_pf,
  input         io_ptw_resp_bits_af
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
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
`endif // RANDOMIZE_REG_INIT
  wire  delay_clock; // @[Hold.scala 97:23]
  wire  delay_io_in; // @[Hold.scala 97:23]
  wire  delay_io_out; // @[Hold.scala 97:23]
  wire  _req_T = io_tlb_req_0_ready & io_tlb_req_0_valid; // @[Decoupled.scala 50:35]
  reg [26:0] req_vpn; // @[Reg.scala 16:16]
  wire  _sent_T_1 = io_ptw_req_0_ready & io_ptw_req_0_valid; // @[Decoupled.scala 50:35]
  wire  _sent_T_2 = _sent_T_1 | delay_io_out; // @[Repeater.scala 109:61]
  reg  sent; // @[StopWatch.scala 23:20]
  wire  _GEN_1 = _req_T | sent; // @[StopWatch.scala 23:20 29:{20,24}]
  wire  _resp_T = io_ptw_resp_ready & io_ptw_resp_valid; // @[Decoupled.scala 50:35]
  reg [23:0] resp_entry_tag; // @[Reg.scala 16:16]
  reg [15:0] resp_entry_asid; // @[Reg.scala 16:16]
  reg  resp_entry_perm_d; // @[Reg.scala 16:16]
  reg  resp_entry_perm_a; // @[Reg.scala 16:16]
  reg  resp_entry_perm_g; // @[Reg.scala 16:16]
  reg  resp_entry_perm_u; // @[Reg.scala 16:16]
  reg  resp_entry_perm_x; // @[Reg.scala 16:16]
  reg  resp_entry_perm_w; // @[Reg.scala 16:16]
  reg  resp_entry_perm_r; // @[Reg.scala 16:16]
  reg [1:0] resp_entry_level; // @[Reg.scala 16:16]
  reg [20:0] resp_entry_ppn; // @[Reg.scala 16:16]
  reg [2:0] resp_ppn_low_0; // @[Reg.scala 16:16]
  reg [2:0] resp_ppn_low_1; // @[Reg.scala 16:16]
  reg [2:0] resp_ppn_low_2; // @[Reg.scala 16:16]
  reg [2:0] resp_ppn_low_3; // @[Reg.scala 16:16]
  reg [2:0] resp_ppn_low_4; // @[Reg.scala 16:16]
  reg [2:0] resp_ppn_low_5; // @[Reg.scala 16:16]
  reg [2:0] resp_ppn_low_6; // @[Reg.scala 16:16]
  reg [2:0] resp_ppn_low_7; // @[Reg.scala 16:16]
  reg  resp_valididx_0; // @[Reg.scala 16:16]
  reg  resp_valididx_1; // @[Reg.scala 16:16]
  reg  resp_valididx_2; // @[Reg.scala 16:16]
  reg  resp_valididx_3; // @[Reg.scala 16:16]
  reg  resp_valididx_4; // @[Reg.scala 16:16]
  reg  resp_valididx_5; // @[Reg.scala 16:16]
  reg  resp_valididx_6; // @[Reg.scala 16:16]
  reg  resp_valididx_7; // @[Reg.scala 16:16]
  reg  resp_pteidx_0; // @[Reg.scala 16:16]
  reg  resp_pteidx_1; // @[Reg.scala 16:16]
  reg  resp_pteidx_2; // @[Reg.scala 16:16]
  reg  resp_pteidx_3; // @[Reg.scala 16:16]
  reg  resp_pteidx_4; // @[Reg.scala 16:16]
  reg  resp_pteidx_5; // @[Reg.scala 16:16]
  reg  resp_pteidx_6; // @[Reg.scala 16:16]
  reg  resp_pteidx_7; // @[Reg.scala 16:16]
  reg  resp_pf; // @[Reg.scala 16:16]
  reg  resp_af; // @[Reg.scala 16:16]
  wire  _recv_T_2 = io_tlb_resp_valid | delay_io_out; // @[Repeater.scala 116:61]
  reg  recv; // @[StopWatch.scala 23:20]
  wire  _GEN_43 = _resp_T | recv; // @[StopWatch.scala 23:20 29:{20,24}]
  DelayN_6 delay ( // @[Hold.scala 97:23]
    .clock(delay_clock),
    .io_in(delay_io_in),
    .io_out(delay_io_out)
  );
  assign io_tlb_req_0_ready = ~sent; // @[Repeater.scala 110:19]
  assign io_tlb_resp_valid = recv; // @[Repeater.scala 118:18]
  assign io_tlb_resp_bits_entry_tag = resp_entry_tag; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_entry_asid = resp_entry_asid; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_entry_perm_d = resp_entry_perm_d; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_entry_perm_a = resp_entry_perm_a; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_entry_perm_g = resp_entry_perm_g; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_entry_perm_u = resp_entry_perm_u; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_entry_perm_x = resp_entry_perm_x; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_entry_perm_w = resp_entry_perm_w; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_entry_perm_r = resp_entry_perm_r; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_entry_level = resp_entry_level; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_entry_ppn = resp_entry_ppn; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_ppn_low_0 = resp_ppn_low_0; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_ppn_low_1 = resp_ppn_low_1; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_ppn_low_2 = resp_ppn_low_2; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_ppn_low_3 = resp_ppn_low_3; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_ppn_low_4 = resp_ppn_low_4; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_ppn_low_5 = resp_ppn_low_5; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_ppn_low_6 = resp_ppn_low_6; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_ppn_low_7 = resp_ppn_low_7; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_valididx_0 = resp_valididx_0; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_valididx_1 = resp_valididx_1; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_valididx_2 = resp_valididx_2; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_valididx_3 = resp_valididx_3; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_valididx_4 = resp_valididx_4; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_valididx_5 = resp_valididx_5; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_valididx_6 = resp_valididx_6; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_valididx_7 = resp_valididx_7; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_pteidx_0 = resp_pteidx_0; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_pteidx_1 = resp_pteidx_1; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_pteidx_2 = resp_pteidx_2; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_pteidx_3 = resp_pteidx_3; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_pteidx_4 = resp_pteidx_4; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_pteidx_5 = resp_pteidx_5; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_pteidx_6 = resp_pteidx_6; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_pteidx_7 = resp_pteidx_7; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_pf = resp_pf; // @[Repeater.scala 119:17]
  assign io_tlb_resp_bits_af = resp_af; // @[Repeater.scala 119:17]
  assign io_ptw_req_0_valid = sent; // @[Repeater.scala 111:20]
  assign io_ptw_req_0_bits_vpn = req_vpn; // @[Repeater.scala 112:19]
  assign io_ptw_resp_ready = ~recv; // @[Repeater.scala 117:21]
  assign delay_clock = clock;
  assign delay_io_in = io_sfence_valid | io_csr_satp_changed; // @[Repeater.scala 101:67]
  always @(posedge clock) begin
    if (_req_T) begin // @[Reg.scala 17:18]
      req_vpn <= io_tlb_req_0_bits_vpn; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_tag <= io_ptw_resp_bits_entry_tag; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_asid <= io_ptw_resp_bits_entry_asid; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_perm_d <= io_ptw_resp_bits_entry_perm_d; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_perm_a <= io_ptw_resp_bits_entry_perm_a; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_perm_g <= io_ptw_resp_bits_entry_perm_g; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_perm_u <= io_ptw_resp_bits_entry_perm_u; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_perm_x <= io_ptw_resp_bits_entry_perm_x; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_perm_w <= io_ptw_resp_bits_entry_perm_w; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_perm_r <= io_ptw_resp_bits_entry_perm_r; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_level <= io_ptw_resp_bits_entry_level; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_entry_ppn <= io_ptw_resp_bits_entry_ppn; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_ppn_low_0 <= io_ptw_resp_bits_ppn_low_0; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_ppn_low_1 <= io_ptw_resp_bits_ppn_low_1; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_ppn_low_2 <= io_ptw_resp_bits_ppn_low_2; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_ppn_low_3 <= io_ptw_resp_bits_ppn_low_3; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_ppn_low_4 <= io_ptw_resp_bits_ppn_low_4; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_ppn_low_5 <= io_ptw_resp_bits_ppn_low_5; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_ppn_low_6 <= io_ptw_resp_bits_ppn_low_6; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_ppn_low_7 <= io_ptw_resp_bits_ppn_low_7; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_valididx_0 <= io_ptw_resp_bits_valididx_0; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_valididx_1 <= io_ptw_resp_bits_valididx_1; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_valididx_2 <= io_ptw_resp_bits_valididx_2; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_valididx_3 <= io_ptw_resp_bits_valididx_3; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_valididx_4 <= io_ptw_resp_bits_valididx_4; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_valididx_5 <= io_ptw_resp_bits_valididx_5; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_valididx_6 <= io_ptw_resp_bits_valididx_6; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_valididx_7 <= io_ptw_resp_bits_valididx_7; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_pteidx_0 <= io_ptw_resp_bits_pteidx_0; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_pteidx_1 <= io_ptw_resp_bits_pteidx_1; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_pteidx_2 <= io_ptw_resp_bits_pteidx_2; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_pteidx_3 <= io_ptw_resp_bits_pteidx_3; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_pteidx_4 <= io_ptw_resp_bits_pteidx_4; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_pteidx_5 <= io_ptw_resp_bits_pteidx_5; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_pteidx_6 <= io_ptw_resp_bits_pteidx_6; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_pteidx_7 <= io_ptw_resp_bits_pteidx_7; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_pf <= io_ptw_resp_bits_pf; // @[Reg.scala 17:22]
    end
    if (_resp_T) begin // @[Reg.scala 17:18]
      resp_af <= io_ptw_resp_bits_af; // @[Reg.scala 17:22]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StopWatch.scala 30:19]
      sent <= 1'h0; // @[StopWatch.scala 30:23]
    end else if (_sent_T_2) begin
      sent <= 1'h0;
    end else begin
      sent <= _GEN_1;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[StopWatch.scala 30:19]
      recv <= 1'h0; // @[StopWatch.scala 30:23]
    end else if (_recv_T_2) begin
      recv <= 1'h0;
    end else begin
      recv <= _GEN_43;
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
  req_vpn = _RAND_0[26:0];
  _RAND_1 = {1{`RANDOM}};
  sent = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  resp_entry_tag = _RAND_2[23:0];
  _RAND_3 = {1{`RANDOM}};
  resp_entry_asid = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  resp_entry_perm_d = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  resp_entry_perm_a = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  resp_entry_perm_g = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  resp_entry_perm_u = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  resp_entry_perm_x = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  resp_entry_perm_w = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  resp_entry_perm_r = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  resp_entry_level = _RAND_11[1:0];
  _RAND_12 = {1{`RANDOM}};
  resp_entry_ppn = _RAND_12[20:0];
  _RAND_13 = {1{`RANDOM}};
  resp_ppn_low_0 = _RAND_13[2:0];
  _RAND_14 = {1{`RANDOM}};
  resp_ppn_low_1 = _RAND_14[2:0];
  _RAND_15 = {1{`RANDOM}};
  resp_ppn_low_2 = _RAND_15[2:0];
  _RAND_16 = {1{`RANDOM}};
  resp_ppn_low_3 = _RAND_16[2:0];
  _RAND_17 = {1{`RANDOM}};
  resp_ppn_low_4 = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  resp_ppn_low_5 = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  resp_ppn_low_6 = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  resp_ppn_low_7 = _RAND_20[2:0];
  _RAND_21 = {1{`RANDOM}};
  resp_valididx_0 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  resp_valididx_1 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  resp_valididx_2 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  resp_valididx_3 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  resp_valididx_4 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  resp_valididx_5 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  resp_valididx_6 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  resp_valididx_7 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  resp_pteidx_0 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  resp_pteidx_1 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  resp_pteidx_2 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  resp_pteidx_3 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  resp_pteidx_4 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  resp_pteidx_5 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  resp_pteidx_6 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  resp_pteidx_7 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  resp_pf = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  resp_af = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  recv = _RAND_39[0:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    sent = 1'h0;
  end
  if (reset) begin
    recv = 1'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

