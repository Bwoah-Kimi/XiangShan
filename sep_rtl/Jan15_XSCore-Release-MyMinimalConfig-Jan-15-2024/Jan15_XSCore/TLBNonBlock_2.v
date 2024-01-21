module TLBNonBlock_2(
  input         clock,
  input         io_sfence_valid,
  input         io_sfence_bits_rs1,
  input         io_sfence_bits_rs2,
  input  [38:0] io_sfence_bits_addr,
  input  [15:0] io_sfence_bits_asid,
  input  [3:0]  io_csr_satp_mode,
  input  [15:0] io_csr_satp_asid,
  input         io_csr_satp_changed,
  input  [1:0]  io_csr_priv_dmode,
  output        io_requestor_0_resp_valid,
  output        io_ptw_resp_ready,
  input         io_ptw_resp_valid,
  input  [23:0] io_ptw_resp_bits_entry_tag,
  input  [15:0] io_ptw_resp_bits_entry_asid,
  input  [1:0]  io_ptw_resp_bits_entry_level,
  input  [20:0] io_ptw_resp_bits_entry_ppn,
  input  [2:0]  io_ptw_resp_bits_ppn_low_0,
  input         io_ptw_resp_bits_valididx_0,
  output        io_pmp_0_valid,
  output [35:0] io_pmp_0_bits_addr
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  sfence_delay_clock; // @[Hold.scala 97:23]
  wire  sfence_delay_io_in_valid; // @[Hold.scala 97:23]
  wire  sfence_delay_io_in_bits_rs1; // @[Hold.scala 97:23]
  wire  sfence_delay_io_in_bits_rs2; // @[Hold.scala 97:23]
  wire [38:0] sfence_delay_io_in_bits_addr; // @[Hold.scala 97:23]
  wire [15:0] sfence_delay_io_in_bits_asid; // @[Hold.scala 97:23]
  wire  sfence_delay_io_out_valid; // @[Hold.scala 97:23]
  wire  sfence_delay_io_out_bits_rs1; // @[Hold.scala 97:23]
  wire  sfence_delay_io_out_bits_rs2; // @[Hold.scala 97:23]
  wire [38:0] sfence_delay_io_out_bits_addr; // @[Hold.scala 97:23]
  wire [15:0] sfence_delay_io_out_bits_asid; // @[Hold.scala 97:23]
  wire  satp_delay_clock; // @[Hold.scala 97:23]
  wire [3:0] satp_delay_io_in_mode; // @[Hold.scala 97:23]
  wire [15:0] satp_delay_io_in_asid; // @[Hold.scala 97:23]
  wire [3:0] satp_delay_io_out_mode; // @[Hold.scala 97:23]
  wire [15:0] satp_delay_io_out_asid; // @[Hold.scala 97:23]
  wire  flush_mmu_delay_clock; // @[Hold.scala 97:23]
  wire  flush_mmu_delay_io_in; // @[Hold.scala 97:23]
  wire  flush_mmu_delay_io_out; // @[Hold.scala 97:23]
  wire  mmu_flush_pipe_delay_clock; // @[Hold.scala 97:23]
  wire  mmu_flush_pipe_delay_io_in; // @[Hold.scala 97:23]
  wire  mmu_flush_pipe_delay_io_out; // @[Hold.scala 97:23]
  wire  vmEnable = satp_delay_io_out_mode == 4'h8 & io_csr_priv_dmode < 2'h3; // @[TLB.scala 75:29]
  wire  _refill_T = io_ptw_resp_ready & io_ptw_resp_valid; // @[Decoupled.scala 50:35]
  wire  p_hit_asid_hit = io_ptw_resp_bits_entry_asid == io_csr_satp_asid; // @[MMUBundle.scala 1010:65]
  wire  p_hit_hit0 = io_ptw_resp_bits_entry_tag[23:15] == 9'h0; // @[MMUBundle.scala 1012:76]
  wire  p_hit_hit1 = io_ptw_resp_bits_entry_tag[14:6] == 9'h0; // @[MMUBundle.scala 1013:90]
  wire  p_hit_hit2 = io_ptw_resp_bits_entry_tag[5:0] == 6'h0; // @[MMUBundle.scala 1014:61]
  wire  _p_hit_T_5 = io_ptw_resp_bits_entry_level == 2'h1 ? p_hit_hit1 & p_hit_hit0 : p_hit_hit0; // @[MMUBundle.scala 1017:84]
  wire  _p_hit_T_6 = io_ptw_resp_bits_entry_level == 2'h2 ? p_hit_hit2 & p_hit_hit1 & p_hit_hit0 : _p_hit_T_5; // @[MMUBundle.scala 1017:22]
  wire  _p_hit_T_8 = p_hit_asid_hit & _p_hit_T_6 & io_ptw_resp_bits_valididx_0; // @[MMUBundle.scala 1017:142]
  reg  p_hit; // @[TLB.scala 271:24]
  wire [23:0] _p_ppn_T_2 = {io_ptw_resp_bits_entry_ppn[20:15],18'h0}; // @[Cat.scala 31:58]
  wire [23:0] _p_ppn_T_5 = {io_ptw_resp_bits_entry_ppn[20:6],9'h0}; // @[Cat.scala 31:58]
  wire [23:0] _p_ppn_T_8 = {io_ptw_resp_bits_entry_ppn,io_ptw_resp_bits_ppn_low_0}; // @[Cat.scala 31:58]
  reg [23:0] p_ppn; // @[Reg.scala 16:16]
  wire [23:0] _pmp_paddr_T = p_hit ? p_ppn : 24'h0; // @[TLB.scala 155:40]
  wire [35:0] _pmp_paddr_T_2 = {_pmp_paddr_T,12'h0}; // @[Cat.scala 31:58]
  DelayN_19 sfence_delay ( // @[Hold.scala 97:23]
    .clock(sfence_delay_clock),
    .io_in_valid(sfence_delay_io_in_valid),
    .io_in_bits_rs1(sfence_delay_io_in_bits_rs1),
    .io_in_bits_rs2(sfence_delay_io_in_bits_rs2),
    .io_in_bits_addr(sfence_delay_io_in_bits_addr),
    .io_in_bits_asid(sfence_delay_io_in_bits_asid),
    .io_out_valid(sfence_delay_io_out_valid),
    .io_out_bits_rs1(sfence_delay_io_out_bits_rs1),
    .io_out_bits_rs2(sfence_delay_io_out_bits_rs2),
    .io_out_bits_addr(sfence_delay_io_out_bits_addr),
    .io_out_bits_asid(sfence_delay_io_out_bits_asid)
  );
  DelayN_20 satp_delay ( // @[Hold.scala 97:23]
    .clock(satp_delay_clock),
    .io_in_mode(satp_delay_io_in_mode),
    .io_in_asid(satp_delay_io_in_asid),
    .io_out_mode(satp_delay_io_out_mode),
    .io_out_asid(satp_delay_io_out_asid)
  );
  DelayN_6 flush_mmu_delay ( // @[Hold.scala 97:23]
    .clock(flush_mmu_delay_clock),
    .io_in(flush_mmu_delay_io_in),
    .io_out(flush_mmu_delay_io_out)
  );
  DelayN_6 mmu_flush_pipe_delay ( // @[Hold.scala 97:23]
    .clock(mmu_flush_pipe_delay_clock),
    .io_in(mmu_flush_pipe_delay_io_in),
    .io_out(mmu_flush_pipe_delay_io_out)
  );
  assign io_requestor_0_resp_valid = 1'h0; // @[TLB.scala 202:34]
  assign io_ptw_resp_ready = 1'h1; // @[TLB.scala 122:21]
  assign io_pmp_0_valid = io_requestor_0_resp_valid; // @[TLB.scala 164:20]
  assign io_pmp_0_bits_addr = vmEnable ? _pmp_paddr_T_2 : 36'h0; // @[TLB.scala 155:24]
  assign sfence_delay_clock = clock;
  assign sfence_delay_io_in_valid = io_sfence_valid; // @[Hold.scala 98:17]
  assign sfence_delay_io_in_bits_rs1 = io_sfence_bits_rs1; // @[Hold.scala 98:17]
  assign sfence_delay_io_in_bits_rs2 = io_sfence_bits_rs2; // @[Hold.scala 98:17]
  assign sfence_delay_io_in_bits_addr = io_sfence_bits_addr; // @[Hold.scala 98:17]
  assign sfence_delay_io_in_bits_asid = io_sfence_bits_asid; // @[Hold.scala 98:17]
  assign satp_delay_clock = clock;
  assign satp_delay_io_in_mode = io_csr_satp_mode; // @[Hold.scala 98:17]
  assign satp_delay_io_in_asid = io_csr_satp_asid; // @[Hold.scala 98:17]
  assign flush_mmu_delay_clock = clock;
  assign flush_mmu_delay_io_in = sfence_delay_io_out_valid | io_csr_satp_changed; // @[TLB.scala 65:39]
  assign mmu_flush_pipe_delay_clock = clock;
  assign mmu_flush_pipe_delay_io_in = 1'h0; // @[TLB.scala 66:44]
  always @(posedge clock) begin
    p_hit <= _p_hit_T_8 & _refill_T; // @[TLB.scala 271:82]
    if (_refill_T) begin // @[Reg.scala 17:18]
      if (2'h2 == io_ptw_resp_bits_entry_level) begin // @[Mux.scala 81:58]
        p_ppn <= _p_ppn_T_8;
      end else if (2'h1 == io_ptw_resp_bits_entry_level) begin // @[Mux.scala 81:58]
        p_ppn <= _p_ppn_T_5;
      end else if (2'h0 == io_ptw_resp_bits_entry_level) begin // @[Mux.scala 81:58]
        p_ppn <= _p_ppn_T_2;
      end else begin
        p_ppn <= 24'h0;
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
  p_hit = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  p_ppn = _RAND_1[23:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

