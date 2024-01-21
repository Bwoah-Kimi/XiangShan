module WrBypass_75(
  input        clock,
  input        reset,
  input        io_wen,
  input  [8:0] io_write_idx,
  input  [1:0] io_write_data_0,
  output       io_hit,
  output [1:0] io_hit_data_0_bits
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  idx_tag_cam_clock; // @[WrBypass.scala 54:27]
  wire [8:0] idx_tag_cam_io_rreq_0_idx; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_0; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_1; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_2; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_rresp_0_3; // @[WrBypass.scala 54:27]
  wire  idx_tag_cam_io_wvalid; // @[WrBypass.scala 54:27]
  wire [8:0] idx_tag_cam_io_wdata_idx; // @[WrBypass.scala 54:27]
  wire [1:0] idx_tag_cam_io_windex; // @[WrBypass.scala 54:27]
  reg [1:0] data_mem_0 [0:3]; // @[WrBypass.scala 55:21]
  wire  data_mem_0_io_hit_data_0_bits_MPORT_en; // @[WrBypass.scala 55:21]
  wire [1:0] data_mem_0_io_hit_data_0_bits_MPORT_addr; // @[WrBypass.scala 55:21]
  wire [1:0] data_mem_0_io_hit_data_0_bits_MPORT_data; // @[WrBypass.scala 55:21]
  wire [1:0] data_mem_0_MPORT_data; // @[WrBypass.scala 55:21]
  wire [1:0] data_mem_0_MPORT_addr; // @[WrBypass.scala 55:21]
  wire  data_mem_0_MPORT_mask; // @[WrBypass.scala 55:21]
  wire  data_mem_0_MPORT_en; // @[WrBypass.scala 55:21]
  reg  ever_written_0; // @[WrBypass.scala 58:29]
  reg  ever_written_1; // @[WrBypass.scala 58:29]
  reg  ever_written_2; // @[WrBypass.scala 58:29]
  reg  ever_written_3; // @[WrBypass.scala 58:29]
  wire  hits_oh_0 = idx_tag_cam_io_rresp_0_0 & ever_written_0; // @[WrBypass.scala 62:83]
  wire  hits_oh_1 = idx_tag_cam_io_rresp_0_1 & ever_written_1; // @[WrBypass.scala 62:83]
  wire  hits_oh_2 = idx_tag_cam_io_rresp_0_2 & ever_written_2; // @[WrBypass.scala 62:83]
  wire  hits_oh_3 = idx_tag_cam_io_rresp_0_3 & ever_written_3; // @[WrBypass.scala 62:83]
  wire [3:0] _hit_idx_T = {hits_oh_3,hits_oh_2,hits_oh_1,hits_oh_0}; // @[Cat.scala 31:58]
  wire [1:0] hit_idx_hi_1 = _hit_idx_T[3:2]; // @[OneHot.scala 30:18]
  wire [1:0] hit_idx_lo_1 = _hit_idx_T[1:0]; // @[OneHot.scala 31:18]
  wire  _hit_idx_T_1 = |hit_idx_hi_1; // @[OneHot.scala 32:14]
  wire [1:0] _hit_idx_T_2 = hit_idx_hi_1 | hit_idx_lo_1; // @[OneHot.scala 32:28]
  wire [1:0] hit_idx = {_hit_idx_T_1,_hit_idx_T_2[1]}; // @[Cat.scala 31:58]
  wire  hit = hits_oh_0 | hits_oh_1 | hits_oh_2 | hits_oh_3; // @[WrBypass.scala 64:29]
  reg [2:0] state_reg; // @[Replacement.scala 168:72]
  wire  enq_idx_left_subtree_older = state_reg[2]; // @[Replacement.scala 243:38]
  wire  enq_idx_left_subtree_state = state_reg[1]; // @[package.scala 154:13]
  wire  enq_idx_right_subtree_state = state_reg[0]; // @[Replacement.scala 245:38]
  wire  _enq_idx_T_2 = enq_idx_left_subtree_older ? enq_idx_left_subtree_state : enq_idx_right_subtree_state; // @[Replacement.scala 250:16]
  wire [1:0] enq_idx = {enq_idx_left_subtree_older,_enq_idx_T_2}; // @[Cat.scala 31:58]
  wire [1:0] data_write_idx = hit ? hit_idx : enq_idx; // @[WrBypass.scala 84:29]
  wire  state_reg_set_left_older = ~data_write_idx[1]; // @[Replacement.scala 196:33]
  wire  _state_reg_T_2 = ~data_write_idx[0]; // @[Replacement.scala 218:7]
  wire  _state_reg_T_3 = state_reg_set_left_older ? enq_idx_left_subtree_state : _state_reg_T_2; // @[Replacement.scala 203:16]
  wire  _state_reg_T_7 = state_reg_set_left_older ? _state_reg_T_2 : enq_idx_right_subtree_state; // @[Replacement.scala 206:16]
  wire [2:0] _state_reg_T_8 = {state_reg_set_left_older,_state_reg_T_3,_state_reg_T_7}; // @[Cat.scala 31:58]
  wire  _GEN_16 = 2'h0 == enq_idx | ever_written_0; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_17 = 2'h1 == enq_idx | ever_written_1; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_18 = 2'h2 == enq_idx | ever_written_2; // @[WrBypass.scala 58:29 99:{31,31}]
  wire  _GEN_19 = 2'h3 == enq_idx | ever_written_3; // @[WrBypass.scala 58:29 99:{31,31}]
  CAMTemplate_75 idx_tag_cam ( // @[WrBypass.scala 54:27]
    .clock(idx_tag_cam_clock),
    .io_rreq_0_idx(idx_tag_cam_io_rreq_0_idx),
    .io_rresp_0_0(idx_tag_cam_io_rresp_0_0),
    .io_rresp_0_1(idx_tag_cam_io_rresp_0_1),
    .io_rresp_0_2(idx_tag_cam_io_rresp_0_2),
    .io_rresp_0_3(idx_tag_cam_io_rresp_0_3),
    .io_wvalid(idx_tag_cam_io_wvalid),
    .io_wdata_idx(idx_tag_cam_io_wdata_idx),
    .io_windex(idx_tag_cam_io_windex)
  );
  assign data_mem_0_io_hit_data_0_bits_MPORT_en = 1'h1;
  assign data_mem_0_io_hit_data_0_bits_MPORT_addr = {_hit_idx_T_1,_hit_idx_T_2[1]};
  assign data_mem_0_io_hit_data_0_bits_MPORT_data = data_mem_0[data_mem_0_io_hit_data_0_bits_MPORT_addr]; // @[WrBypass.scala 55:21]
  assign data_mem_0_MPORT_data = io_write_data_0;
  assign data_mem_0_MPORT_addr = hit ? hit_idx : enq_idx;
  assign data_mem_0_MPORT_mask = 1'h1;
  assign data_mem_0_MPORT_en = io_wen;
  assign io_hit = hits_oh_0 | hits_oh_1 | hits_oh_2 | hits_oh_3; // @[WrBypass.scala 64:29]
  assign io_hit_data_0_bits = data_mem_0_io_hit_data_0_bits_MPORT_data; // @[WrBypass.scala 69:26]
  assign idx_tag_cam_clock = clock;
  assign idx_tag_cam_io_rreq_0_idx = io_write_idx; // @[WrBypass.scala 50:16]
  assign idx_tag_cam_io_wvalid = io_wen & ~hit; // @[WrBypass.scala 108:23]
  assign idx_tag_cam_io_wdata_idx = io_write_idx; // @[WrBypass.scala 50:16]
  assign idx_tag_cam_io_windex = {enq_idx_left_subtree_older,_enq_idx_T_2}; // @[Cat.scala 31:58]
  always @(posedge clock) begin
    if (data_mem_0_MPORT_en & data_mem_0_MPORT_mask) begin
      data_mem_0[data_mem_0_MPORT_addr] <= data_mem_0_MPORT_data; // @[WrBypass.scala 55:21]
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_0 <= 1'h0; // @[WrBypass.scala 94:18 58:29]
    end else if (io_wen) begin // @[WrBypass.scala 58:29]
      if (!(hit)) begin
        ever_written_0 <= _GEN_16;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_1 <= 1'h0; // @[WrBypass.scala 94:18 58:29]
    end else if (io_wen) begin // @[WrBypass.scala 58:29]
      if (!(hit)) begin
        ever_written_1 <= _GEN_17;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_2 <= 1'h0; // @[WrBypass.scala 94:18 58:29]
    end else if (io_wen) begin // @[WrBypass.scala 58:29]
      if (!(hit)) begin
        ever_written_2 <= _GEN_18;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[WrBypass.scala 93:19]
      ever_written_3 <= 1'h0; // @[WrBypass.scala 94:18 58:29]
    end else if (io_wen) begin // @[WrBypass.scala 58:29]
      if (!(hit)) begin
        ever_written_3 <= _GEN_19;
      end
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Replacement.scala 175:40]
      state_reg <= 3'h0; // @[Replacement.scala 22:56]
    end else if (io_wen) begin // @[Replacement.scala 168:72]
      if (io_wen) begin
        state_reg <= _state_reg_T_8;
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
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    data_mem_0[initvar] = _RAND_0[1:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ever_written_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  ever_written_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  ever_written_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  ever_written_3 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  state_reg = _RAND_5[2:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    ever_written_0 = 1'h0;
  end
  if (reset) begin
    ever_written_1 = 1'h0;
  end
  if (reset) begin
    ever_written_2 = 1'h0;
  end
  if (reset) begin
    ever_written_3 = 1'h0;
  end
  if (reset) begin
    state_reg = 3'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

