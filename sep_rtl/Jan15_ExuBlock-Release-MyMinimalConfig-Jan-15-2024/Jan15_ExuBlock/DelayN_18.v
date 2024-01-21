module DelayN_18(
  input         clock,
  input         io_in_l2_pf_store_only,
  input         io_in_icache_parity_enable,
  input  [4:0]  io_in_lvpred_timeout,
  input         io_in_bp_ctrl_ubtb_enable,
  input         io_in_bp_ctrl_btb_enable,
  input         io_in_bp_ctrl_tage_enable,
  input         io_in_bp_ctrl_sc_enable,
  input         io_in_bp_ctrl_ras_enable,
  input         io_in_ldld_vio_check_enable,
  input         io_in_cache_error_enable,
  input         io_in_uncache_write_outstanding_enable,
  input         io_in_fusion_enable,
  input         io_in_wfi_enable,
  input         io_in_svinval_enable,
  input         io_in_distribute_csr_wvalid,
  input  [11:0] io_in_distribute_csr_waddr,
  input  [63:0] io_in_distribute_csr_wdata,
  input         io_in_singlestep,
  input         io_in_frontend_trigger_t_valid,
  input  [1:0]  io_in_frontend_trigger_t_bits_addr,
  input  [1:0]  io_in_frontend_trigger_t_bits_tdata_matchType,
  input         io_in_frontend_trigger_t_bits_tdata_select,
  input         io_in_frontend_trigger_t_bits_tdata_timing,
  input         io_in_frontend_trigger_t_bits_tdata_chain,
  input  [63:0] io_in_frontend_trigger_t_bits_tdata_tdata2,
  input         io_in_mem_trigger_t_valid,
  input  [2:0]  io_in_mem_trigger_t_bits_addr,
  input  [1:0]  io_in_mem_trigger_t_bits_tdata_matchType,
  input         io_in_mem_trigger_t_bits_tdata_select,
  input         io_in_mem_trigger_t_bits_tdata_chain,
  input  [63:0] io_in_mem_trigger_t_bits_tdata_tdata2,
  input         io_in_trigger_enable_0,
  input         io_in_trigger_enable_1,
  input         io_in_trigger_enable_2,
  input         io_in_trigger_enable_3,
  input         io_in_trigger_enable_4,
  input         io_in_trigger_enable_5,
  input         io_in_trigger_enable_6,
  input         io_in_trigger_enable_7,
  input         io_in_trigger_enable_8,
  input         io_in_trigger_enable_9,
  output        io_out_l2_pf_store_only,
  output        io_out_icache_parity_enable,
  output [4:0]  io_out_lvpred_timeout,
  output        io_out_bp_ctrl_ubtb_enable,
  output        io_out_bp_ctrl_btb_enable,
  output        io_out_bp_ctrl_tage_enable,
  output        io_out_bp_ctrl_sc_enable,
  output        io_out_bp_ctrl_ras_enable,
  output        io_out_ldld_vio_check_enable,
  output        io_out_cache_error_enable,
  output        io_out_uncache_write_outstanding_enable,
  output        io_out_fusion_enable,
  output        io_out_wfi_enable,
  output        io_out_svinval_enable,
  output        io_out_distribute_csr_wvalid,
  output [11:0] io_out_distribute_csr_waddr,
  output [63:0] io_out_distribute_csr_wdata,
  output        io_out_singlestep,
  output        io_out_frontend_trigger_t_valid,
  output [1:0]  io_out_frontend_trigger_t_bits_addr,
  output [1:0]  io_out_frontend_trigger_t_bits_tdata_matchType,
  output        io_out_frontend_trigger_t_bits_tdata_select,
  output        io_out_frontend_trigger_t_bits_tdata_timing,
  output        io_out_frontend_trigger_t_bits_tdata_chain,
  output [63:0] io_out_frontend_trigger_t_bits_tdata_tdata2,
  output        io_out_mem_trigger_t_valid,
  output [2:0]  io_out_mem_trigger_t_bits_addr,
  output [1:0]  io_out_mem_trigger_t_bits_tdata_matchType,
  output        io_out_mem_trigger_t_bits_tdata_select,
  output        io_out_mem_trigger_t_bits_tdata_chain,
  output [63:0] io_out_mem_trigger_t_bits_tdata_tdata2,
  output        io_out_trigger_enable_0,
  output        io_out_trigger_enable_1,
  output        io_out_trigger_enable_2,
  output        io_out_trigger_enable_3,
  output        io_out_trigger_enable_4,
  output        io_out_trigger_enable_5,
  output        io_out_trigger_enable_6,
  output        io_out_trigger_enable_7,
  output        io_out_trigger_enable_8,
  output        io_out_trigger_enable_9
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
  reg [63:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [63:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [63:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [63:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
`endif // RANDOMIZE_REG_INIT
  reg  REG_l2_pf_store_only; // @[Hold.scala 90:18]
  reg  REG_icache_parity_enable; // @[Hold.scala 90:18]
  reg [4:0] REG_lvpred_timeout; // @[Hold.scala 90:18]
  reg  REG_bp_ctrl_ubtb_enable; // @[Hold.scala 90:18]
  reg  REG_bp_ctrl_btb_enable; // @[Hold.scala 90:18]
  reg  REG_bp_ctrl_tage_enable; // @[Hold.scala 90:18]
  reg  REG_bp_ctrl_sc_enable; // @[Hold.scala 90:18]
  reg  REG_bp_ctrl_ras_enable; // @[Hold.scala 90:18]
  reg  REG_ldld_vio_check_enable; // @[Hold.scala 90:18]
  reg  REG_cache_error_enable; // @[Hold.scala 90:18]
  reg  REG_uncache_write_outstanding_enable; // @[Hold.scala 90:18]
  reg  REG_fusion_enable; // @[Hold.scala 90:18]
  reg  REG_wfi_enable; // @[Hold.scala 90:18]
  reg  REG_svinval_enable; // @[Hold.scala 90:18]
  reg  REG_distribute_csr_wvalid; // @[Hold.scala 90:18]
  reg [11:0] REG_distribute_csr_waddr; // @[Hold.scala 90:18]
  reg [63:0] REG_distribute_csr_wdata; // @[Hold.scala 90:18]
  reg  REG_singlestep; // @[Hold.scala 90:18]
  reg  REG_frontend_trigger_t_valid; // @[Hold.scala 90:18]
  reg [1:0] REG_frontend_trigger_t_bits_addr; // @[Hold.scala 90:18]
  reg [1:0] REG_frontend_trigger_t_bits_tdata_matchType; // @[Hold.scala 90:18]
  reg  REG_frontend_trigger_t_bits_tdata_select; // @[Hold.scala 90:18]
  reg  REG_frontend_trigger_t_bits_tdata_timing; // @[Hold.scala 90:18]
  reg  REG_frontend_trigger_t_bits_tdata_chain; // @[Hold.scala 90:18]
  reg [63:0] REG_frontend_trigger_t_bits_tdata_tdata2; // @[Hold.scala 90:18]
  reg  REG_mem_trigger_t_valid; // @[Hold.scala 90:18]
  reg [2:0] REG_mem_trigger_t_bits_addr; // @[Hold.scala 90:18]
  reg [1:0] REG_mem_trigger_t_bits_tdata_matchType; // @[Hold.scala 90:18]
  reg  REG_mem_trigger_t_bits_tdata_select; // @[Hold.scala 90:18]
  reg  REG_mem_trigger_t_bits_tdata_chain; // @[Hold.scala 90:18]
  reg [63:0] REG_mem_trigger_t_bits_tdata_tdata2; // @[Hold.scala 90:18]
  reg  REG_trigger_enable_0; // @[Hold.scala 90:18]
  reg  REG_trigger_enable_1; // @[Hold.scala 90:18]
  reg  REG_trigger_enable_2; // @[Hold.scala 90:18]
  reg  REG_trigger_enable_3; // @[Hold.scala 90:18]
  reg  REG_trigger_enable_4; // @[Hold.scala 90:18]
  reg  REG_trigger_enable_5; // @[Hold.scala 90:18]
  reg  REG_trigger_enable_6; // @[Hold.scala 90:18]
  reg  REG_trigger_enable_7; // @[Hold.scala 90:18]
  reg  REG_trigger_enable_8; // @[Hold.scala 90:18]
  reg  REG_trigger_enable_9; // @[Hold.scala 90:18]
  reg  out_l2_pf_store_only; // @[Hold.scala 90:18]
  reg  out_icache_parity_enable; // @[Hold.scala 90:18]
  reg [4:0] out_lvpred_timeout; // @[Hold.scala 90:18]
  reg  out_bp_ctrl_ubtb_enable; // @[Hold.scala 90:18]
  reg  out_bp_ctrl_btb_enable; // @[Hold.scala 90:18]
  reg  out_bp_ctrl_tage_enable; // @[Hold.scala 90:18]
  reg  out_bp_ctrl_sc_enable; // @[Hold.scala 90:18]
  reg  out_bp_ctrl_ras_enable; // @[Hold.scala 90:18]
  reg  out_ldld_vio_check_enable; // @[Hold.scala 90:18]
  reg  out_cache_error_enable; // @[Hold.scala 90:18]
  reg  out_uncache_write_outstanding_enable; // @[Hold.scala 90:18]
  reg  out_fusion_enable; // @[Hold.scala 90:18]
  reg  out_wfi_enable; // @[Hold.scala 90:18]
  reg  out_svinval_enable; // @[Hold.scala 90:18]
  reg  out_distribute_csr_wvalid; // @[Hold.scala 90:18]
  reg [11:0] out_distribute_csr_waddr; // @[Hold.scala 90:18]
  reg [63:0] out_distribute_csr_wdata; // @[Hold.scala 90:18]
  reg  out_singlestep; // @[Hold.scala 90:18]
  reg  out_frontend_trigger_t_valid; // @[Hold.scala 90:18]
  reg [1:0] out_frontend_trigger_t_bits_addr; // @[Hold.scala 90:18]
  reg [1:0] out_frontend_trigger_t_bits_tdata_matchType; // @[Hold.scala 90:18]
  reg  out_frontend_trigger_t_bits_tdata_select; // @[Hold.scala 90:18]
  reg  out_frontend_trigger_t_bits_tdata_timing; // @[Hold.scala 90:18]
  reg  out_frontend_trigger_t_bits_tdata_chain; // @[Hold.scala 90:18]
  reg [63:0] out_frontend_trigger_t_bits_tdata_tdata2; // @[Hold.scala 90:18]
  reg  out_mem_trigger_t_valid; // @[Hold.scala 90:18]
  reg [2:0] out_mem_trigger_t_bits_addr; // @[Hold.scala 90:18]
  reg [1:0] out_mem_trigger_t_bits_tdata_matchType; // @[Hold.scala 90:18]
  reg  out_mem_trigger_t_bits_tdata_select; // @[Hold.scala 90:18]
  reg  out_mem_trigger_t_bits_tdata_chain; // @[Hold.scala 90:18]
  reg [63:0] out_mem_trigger_t_bits_tdata_tdata2; // @[Hold.scala 90:18]
  reg  out_trigger_enable_0; // @[Hold.scala 90:18]
  reg  out_trigger_enable_1; // @[Hold.scala 90:18]
  reg  out_trigger_enable_2; // @[Hold.scala 90:18]
  reg  out_trigger_enable_3; // @[Hold.scala 90:18]
  reg  out_trigger_enable_4; // @[Hold.scala 90:18]
  reg  out_trigger_enable_5; // @[Hold.scala 90:18]
  reg  out_trigger_enable_6; // @[Hold.scala 90:18]
  reg  out_trigger_enable_7; // @[Hold.scala 90:18]
  reg  out_trigger_enable_8; // @[Hold.scala 90:18]
  reg  out_trigger_enable_9; // @[Hold.scala 90:18]
  assign io_out_l2_pf_store_only = out_l2_pf_store_only; // @[Hold.scala 92:10]
  assign io_out_icache_parity_enable = out_icache_parity_enable; // @[Hold.scala 92:10]
  assign io_out_lvpred_timeout = out_lvpred_timeout; // @[Hold.scala 92:10]
  assign io_out_bp_ctrl_ubtb_enable = out_bp_ctrl_ubtb_enable; // @[Hold.scala 92:10]
  assign io_out_bp_ctrl_btb_enable = out_bp_ctrl_btb_enable; // @[Hold.scala 92:10]
  assign io_out_bp_ctrl_tage_enable = out_bp_ctrl_tage_enable; // @[Hold.scala 92:10]
  assign io_out_bp_ctrl_sc_enable = out_bp_ctrl_sc_enable; // @[Hold.scala 92:10]
  assign io_out_bp_ctrl_ras_enable = out_bp_ctrl_ras_enable; // @[Hold.scala 92:10]
  assign io_out_ldld_vio_check_enable = out_ldld_vio_check_enable; // @[Hold.scala 92:10]
  assign io_out_cache_error_enable = out_cache_error_enable; // @[Hold.scala 92:10]
  assign io_out_uncache_write_outstanding_enable = out_uncache_write_outstanding_enable; // @[Hold.scala 92:10]
  assign io_out_fusion_enable = out_fusion_enable; // @[Hold.scala 92:10]
  assign io_out_wfi_enable = out_wfi_enable; // @[Hold.scala 92:10]
  assign io_out_svinval_enable = out_svinval_enable; // @[Hold.scala 92:10]
  assign io_out_distribute_csr_wvalid = out_distribute_csr_wvalid; // @[Hold.scala 92:10]
  assign io_out_distribute_csr_waddr = out_distribute_csr_waddr; // @[Hold.scala 92:10]
  assign io_out_distribute_csr_wdata = out_distribute_csr_wdata; // @[Hold.scala 92:10]
  assign io_out_singlestep = out_singlestep; // @[Hold.scala 92:10]
  assign io_out_frontend_trigger_t_valid = out_frontend_trigger_t_valid; // @[Hold.scala 92:10]
  assign io_out_frontend_trigger_t_bits_addr = out_frontend_trigger_t_bits_addr; // @[Hold.scala 92:10]
  assign io_out_frontend_trigger_t_bits_tdata_matchType = out_frontend_trigger_t_bits_tdata_matchType; // @[Hold.scala 92:10]
  assign io_out_frontend_trigger_t_bits_tdata_select = out_frontend_trigger_t_bits_tdata_select; // @[Hold.scala 92:10]
  assign io_out_frontend_trigger_t_bits_tdata_timing = out_frontend_trigger_t_bits_tdata_timing; // @[Hold.scala 92:10]
  assign io_out_frontend_trigger_t_bits_tdata_chain = out_frontend_trigger_t_bits_tdata_chain; // @[Hold.scala 92:10]
  assign io_out_frontend_trigger_t_bits_tdata_tdata2 = out_frontend_trigger_t_bits_tdata_tdata2; // @[Hold.scala 92:10]
  assign io_out_mem_trigger_t_valid = out_mem_trigger_t_valid; // @[Hold.scala 92:10]
  assign io_out_mem_trigger_t_bits_addr = out_mem_trigger_t_bits_addr; // @[Hold.scala 92:10]
  assign io_out_mem_trigger_t_bits_tdata_matchType = out_mem_trigger_t_bits_tdata_matchType; // @[Hold.scala 92:10]
  assign io_out_mem_trigger_t_bits_tdata_select = out_mem_trigger_t_bits_tdata_select; // @[Hold.scala 92:10]
  assign io_out_mem_trigger_t_bits_tdata_chain = out_mem_trigger_t_bits_tdata_chain; // @[Hold.scala 92:10]
  assign io_out_mem_trigger_t_bits_tdata_tdata2 = out_mem_trigger_t_bits_tdata_tdata2; // @[Hold.scala 92:10]
  assign io_out_trigger_enable_0 = out_trigger_enable_0; // @[Hold.scala 92:10]
  assign io_out_trigger_enable_1 = out_trigger_enable_1; // @[Hold.scala 92:10]
  assign io_out_trigger_enable_2 = out_trigger_enable_2; // @[Hold.scala 92:10]
  assign io_out_trigger_enable_3 = out_trigger_enable_3; // @[Hold.scala 92:10]
  assign io_out_trigger_enable_4 = out_trigger_enable_4; // @[Hold.scala 92:10]
  assign io_out_trigger_enable_5 = out_trigger_enable_5; // @[Hold.scala 92:10]
  assign io_out_trigger_enable_6 = out_trigger_enable_6; // @[Hold.scala 92:10]
  assign io_out_trigger_enable_7 = out_trigger_enable_7; // @[Hold.scala 92:10]
  assign io_out_trigger_enable_8 = out_trigger_enable_8; // @[Hold.scala 92:10]
  assign io_out_trigger_enable_9 = out_trigger_enable_9; // @[Hold.scala 92:10]
  always @(posedge clock) begin
    REG_l2_pf_store_only <= io_in_l2_pf_store_only; // @[Hold.scala 90:18]
    REG_icache_parity_enable <= io_in_icache_parity_enable; // @[Hold.scala 90:18]
    REG_lvpred_timeout <= io_in_lvpred_timeout; // @[Hold.scala 90:18]
    REG_bp_ctrl_ubtb_enable <= io_in_bp_ctrl_ubtb_enable; // @[Hold.scala 90:18]
    REG_bp_ctrl_btb_enable <= io_in_bp_ctrl_btb_enable; // @[Hold.scala 90:18]
    REG_bp_ctrl_tage_enable <= io_in_bp_ctrl_tage_enable; // @[Hold.scala 90:18]
    REG_bp_ctrl_sc_enable <= io_in_bp_ctrl_sc_enable; // @[Hold.scala 90:18]
    REG_bp_ctrl_ras_enable <= io_in_bp_ctrl_ras_enable; // @[Hold.scala 90:18]
    REG_ldld_vio_check_enable <= io_in_ldld_vio_check_enable; // @[Hold.scala 90:18]
    REG_cache_error_enable <= io_in_cache_error_enable; // @[Hold.scala 90:18]
    REG_uncache_write_outstanding_enable <= io_in_uncache_write_outstanding_enable; // @[Hold.scala 90:18]
    REG_fusion_enable <= io_in_fusion_enable; // @[Hold.scala 90:18]
    REG_wfi_enable <= io_in_wfi_enable; // @[Hold.scala 90:18]
    REG_svinval_enable <= io_in_svinval_enable; // @[Hold.scala 90:18]
    REG_distribute_csr_wvalid <= io_in_distribute_csr_wvalid; // @[Hold.scala 90:18]
    REG_distribute_csr_waddr <= io_in_distribute_csr_waddr; // @[Hold.scala 90:18]
    REG_distribute_csr_wdata <= io_in_distribute_csr_wdata; // @[Hold.scala 90:18]
    REG_singlestep <= io_in_singlestep; // @[Hold.scala 90:18]
    REG_frontend_trigger_t_valid <= io_in_frontend_trigger_t_valid; // @[Hold.scala 90:18]
    REG_frontend_trigger_t_bits_addr <= io_in_frontend_trigger_t_bits_addr; // @[Hold.scala 90:18]
    REG_frontend_trigger_t_bits_tdata_matchType <= io_in_frontend_trigger_t_bits_tdata_matchType; // @[Hold.scala 90:18]
    REG_frontend_trigger_t_bits_tdata_select <= io_in_frontend_trigger_t_bits_tdata_select; // @[Hold.scala 90:18]
    REG_frontend_trigger_t_bits_tdata_timing <= io_in_frontend_trigger_t_bits_tdata_timing; // @[Hold.scala 90:18]
    REG_frontend_trigger_t_bits_tdata_chain <= io_in_frontend_trigger_t_bits_tdata_chain; // @[Hold.scala 90:18]
    REG_frontend_trigger_t_bits_tdata_tdata2 <= io_in_frontend_trigger_t_bits_tdata_tdata2; // @[Hold.scala 90:18]
    REG_mem_trigger_t_valid <= io_in_mem_trigger_t_valid; // @[Hold.scala 90:18]
    REG_mem_trigger_t_bits_addr <= io_in_mem_trigger_t_bits_addr; // @[Hold.scala 90:18]
    REG_mem_trigger_t_bits_tdata_matchType <= io_in_mem_trigger_t_bits_tdata_matchType; // @[Hold.scala 90:18]
    REG_mem_trigger_t_bits_tdata_select <= io_in_mem_trigger_t_bits_tdata_select; // @[Hold.scala 90:18]
    REG_mem_trigger_t_bits_tdata_chain <= io_in_mem_trigger_t_bits_tdata_chain; // @[Hold.scala 90:18]
    REG_mem_trigger_t_bits_tdata_tdata2 <= io_in_mem_trigger_t_bits_tdata_tdata2; // @[Hold.scala 90:18]
    REG_trigger_enable_0 <= io_in_trigger_enable_0; // @[Hold.scala 90:18]
    REG_trigger_enable_1 <= io_in_trigger_enable_1; // @[Hold.scala 90:18]
    REG_trigger_enable_2 <= io_in_trigger_enable_2; // @[Hold.scala 90:18]
    REG_trigger_enable_3 <= io_in_trigger_enable_3; // @[Hold.scala 90:18]
    REG_trigger_enable_4 <= io_in_trigger_enable_4; // @[Hold.scala 90:18]
    REG_trigger_enable_5 <= io_in_trigger_enable_5; // @[Hold.scala 90:18]
    REG_trigger_enable_6 <= io_in_trigger_enable_6; // @[Hold.scala 90:18]
    REG_trigger_enable_7 <= io_in_trigger_enable_7; // @[Hold.scala 90:18]
    REG_trigger_enable_8 <= io_in_trigger_enable_8; // @[Hold.scala 90:18]
    REG_trigger_enable_9 <= io_in_trigger_enable_9; // @[Hold.scala 90:18]
    out_l2_pf_store_only <= REG_l2_pf_store_only; // @[Hold.scala 90:18]
    out_icache_parity_enable <= REG_icache_parity_enable; // @[Hold.scala 90:18]
    out_lvpred_timeout <= REG_lvpred_timeout; // @[Hold.scala 90:18]
    out_bp_ctrl_ubtb_enable <= REG_bp_ctrl_ubtb_enable; // @[Hold.scala 90:18]
    out_bp_ctrl_btb_enable <= REG_bp_ctrl_btb_enable; // @[Hold.scala 90:18]
    out_bp_ctrl_tage_enable <= REG_bp_ctrl_tage_enable; // @[Hold.scala 90:18]
    out_bp_ctrl_sc_enable <= REG_bp_ctrl_sc_enable; // @[Hold.scala 90:18]
    out_bp_ctrl_ras_enable <= REG_bp_ctrl_ras_enable; // @[Hold.scala 90:18]
    out_ldld_vio_check_enable <= REG_ldld_vio_check_enable; // @[Hold.scala 90:18]
    out_cache_error_enable <= REG_cache_error_enable; // @[Hold.scala 90:18]
    out_uncache_write_outstanding_enable <= REG_uncache_write_outstanding_enable; // @[Hold.scala 90:18]
    out_fusion_enable <= REG_fusion_enable; // @[Hold.scala 90:18]
    out_wfi_enable <= REG_wfi_enable; // @[Hold.scala 90:18]
    out_svinval_enable <= REG_svinval_enable; // @[Hold.scala 90:18]
    out_distribute_csr_wvalid <= REG_distribute_csr_wvalid; // @[Hold.scala 90:18]
    out_distribute_csr_waddr <= REG_distribute_csr_waddr; // @[Hold.scala 90:18]
    out_distribute_csr_wdata <= REG_distribute_csr_wdata; // @[Hold.scala 90:18]
    out_singlestep <= REG_singlestep; // @[Hold.scala 90:18]
    out_frontend_trigger_t_valid <= REG_frontend_trigger_t_valid; // @[Hold.scala 90:18]
    out_frontend_trigger_t_bits_addr <= REG_frontend_trigger_t_bits_addr; // @[Hold.scala 90:18]
    out_frontend_trigger_t_bits_tdata_matchType <= REG_frontend_trigger_t_bits_tdata_matchType; // @[Hold.scala 90:18]
    out_frontend_trigger_t_bits_tdata_select <= REG_frontend_trigger_t_bits_tdata_select; // @[Hold.scala 90:18]
    out_frontend_trigger_t_bits_tdata_timing <= REG_frontend_trigger_t_bits_tdata_timing; // @[Hold.scala 90:18]
    out_frontend_trigger_t_bits_tdata_chain <= REG_frontend_trigger_t_bits_tdata_chain; // @[Hold.scala 90:18]
    out_frontend_trigger_t_bits_tdata_tdata2 <= REG_frontend_trigger_t_bits_tdata_tdata2; // @[Hold.scala 90:18]
    out_mem_trigger_t_valid <= REG_mem_trigger_t_valid; // @[Hold.scala 90:18]
    out_mem_trigger_t_bits_addr <= REG_mem_trigger_t_bits_addr; // @[Hold.scala 90:18]
    out_mem_trigger_t_bits_tdata_matchType <= REG_mem_trigger_t_bits_tdata_matchType; // @[Hold.scala 90:18]
    out_mem_trigger_t_bits_tdata_select <= REG_mem_trigger_t_bits_tdata_select; // @[Hold.scala 90:18]
    out_mem_trigger_t_bits_tdata_chain <= REG_mem_trigger_t_bits_tdata_chain; // @[Hold.scala 90:18]
    out_mem_trigger_t_bits_tdata_tdata2 <= REG_mem_trigger_t_bits_tdata_tdata2; // @[Hold.scala 90:18]
    out_trigger_enable_0 <= REG_trigger_enable_0; // @[Hold.scala 90:18]
    out_trigger_enable_1 <= REG_trigger_enable_1; // @[Hold.scala 90:18]
    out_trigger_enable_2 <= REG_trigger_enable_2; // @[Hold.scala 90:18]
    out_trigger_enable_3 <= REG_trigger_enable_3; // @[Hold.scala 90:18]
    out_trigger_enable_4 <= REG_trigger_enable_4; // @[Hold.scala 90:18]
    out_trigger_enable_5 <= REG_trigger_enable_5; // @[Hold.scala 90:18]
    out_trigger_enable_6 <= REG_trigger_enable_6; // @[Hold.scala 90:18]
    out_trigger_enable_7 <= REG_trigger_enable_7; // @[Hold.scala 90:18]
    out_trigger_enable_8 <= REG_trigger_enable_8; // @[Hold.scala 90:18]
    out_trigger_enable_9 <= REG_trigger_enable_9; // @[Hold.scala 90:18]
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
  REG_l2_pf_store_only = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  REG_icache_parity_enable = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  REG_lvpred_timeout = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  REG_bp_ctrl_ubtb_enable = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  REG_bp_ctrl_btb_enable = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  REG_bp_ctrl_tage_enable = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  REG_bp_ctrl_sc_enable = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  REG_bp_ctrl_ras_enable = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  REG_ldld_vio_check_enable = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  REG_cache_error_enable = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  REG_uncache_write_outstanding_enable = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  REG_fusion_enable = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  REG_wfi_enable = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  REG_svinval_enable = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  REG_distribute_csr_wvalid = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  REG_distribute_csr_waddr = _RAND_15[11:0];
  _RAND_16 = {2{`RANDOM}};
  REG_distribute_csr_wdata = _RAND_16[63:0];
  _RAND_17 = {1{`RANDOM}};
  REG_singlestep = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  REG_frontend_trigger_t_valid = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  REG_frontend_trigger_t_bits_addr = _RAND_19[1:0];
  _RAND_20 = {1{`RANDOM}};
  REG_frontend_trigger_t_bits_tdata_matchType = _RAND_20[1:0];
  _RAND_21 = {1{`RANDOM}};
  REG_frontend_trigger_t_bits_tdata_select = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  REG_frontend_trigger_t_bits_tdata_timing = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  REG_frontend_trigger_t_bits_tdata_chain = _RAND_23[0:0];
  _RAND_24 = {2{`RANDOM}};
  REG_frontend_trigger_t_bits_tdata_tdata2 = _RAND_24[63:0];
  _RAND_25 = {1{`RANDOM}};
  REG_mem_trigger_t_valid = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  REG_mem_trigger_t_bits_addr = _RAND_26[2:0];
  _RAND_27 = {1{`RANDOM}};
  REG_mem_trigger_t_bits_tdata_matchType = _RAND_27[1:0];
  _RAND_28 = {1{`RANDOM}};
  REG_mem_trigger_t_bits_tdata_select = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  REG_mem_trigger_t_bits_tdata_chain = _RAND_29[0:0];
  _RAND_30 = {2{`RANDOM}};
  REG_mem_trigger_t_bits_tdata_tdata2 = _RAND_30[63:0];
  _RAND_31 = {1{`RANDOM}};
  REG_trigger_enable_0 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  REG_trigger_enable_1 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  REG_trigger_enable_2 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  REG_trigger_enable_3 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  REG_trigger_enable_4 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  REG_trigger_enable_5 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  REG_trigger_enable_6 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  REG_trigger_enable_7 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  REG_trigger_enable_8 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  REG_trigger_enable_9 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  out_l2_pf_store_only = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  out_icache_parity_enable = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  out_lvpred_timeout = _RAND_43[4:0];
  _RAND_44 = {1{`RANDOM}};
  out_bp_ctrl_ubtb_enable = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  out_bp_ctrl_btb_enable = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  out_bp_ctrl_tage_enable = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  out_bp_ctrl_sc_enable = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  out_bp_ctrl_ras_enable = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  out_ldld_vio_check_enable = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  out_cache_error_enable = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  out_uncache_write_outstanding_enable = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  out_fusion_enable = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  out_wfi_enable = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  out_svinval_enable = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  out_distribute_csr_wvalid = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  out_distribute_csr_waddr = _RAND_56[11:0];
  _RAND_57 = {2{`RANDOM}};
  out_distribute_csr_wdata = _RAND_57[63:0];
  _RAND_58 = {1{`RANDOM}};
  out_singlestep = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  out_frontend_trigger_t_valid = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  out_frontend_trigger_t_bits_addr = _RAND_60[1:0];
  _RAND_61 = {1{`RANDOM}};
  out_frontend_trigger_t_bits_tdata_matchType = _RAND_61[1:0];
  _RAND_62 = {1{`RANDOM}};
  out_frontend_trigger_t_bits_tdata_select = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  out_frontend_trigger_t_bits_tdata_timing = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  out_frontend_trigger_t_bits_tdata_chain = _RAND_64[0:0];
  _RAND_65 = {2{`RANDOM}};
  out_frontend_trigger_t_bits_tdata_tdata2 = _RAND_65[63:0];
  _RAND_66 = {1{`RANDOM}};
  out_mem_trigger_t_valid = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  out_mem_trigger_t_bits_addr = _RAND_67[2:0];
  _RAND_68 = {1{`RANDOM}};
  out_mem_trigger_t_bits_tdata_matchType = _RAND_68[1:0];
  _RAND_69 = {1{`RANDOM}};
  out_mem_trigger_t_bits_tdata_select = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  out_mem_trigger_t_bits_tdata_chain = _RAND_70[0:0];
  _RAND_71 = {2{`RANDOM}};
  out_mem_trigger_t_bits_tdata_tdata2 = _RAND_71[63:0];
  _RAND_72 = {1{`RANDOM}};
  out_trigger_enable_0 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  out_trigger_enable_1 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  out_trigger_enable_2 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  out_trigger_enable_3 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  out_trigger_enable_4 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  out_trigger_enable_5 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  out_trigger_enable_6 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  out_trigger_enable_7 = _RAND_79[0:0];
  _RAND_80 = {1{`RANDOM}};
  out_trigger_enable_8 = _RAND_80[0:0];
  _RAND_81 = {1{`RANDOM}};
  out_trigger_enable_9 = _RAND_81[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

