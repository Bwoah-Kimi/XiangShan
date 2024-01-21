module SRAMTemplate_16(
  input         clock,
  input         reset,
  output        io_rreq_ready,
  input         io_rreq_valid,
  input  [8:0]  io_rreq_bits_setIdx,
  output        io_rresp_data_0_entry_valid,
  output [2:0]  io_rresp_data_0_entry_brSlots_0_offset,
  output [11:0] io_rresp_data_0_entry_brSlots_0_lower,
  output [1:0]  io_rresp_data_0_entry_brSlots_0_tarStat,
  output        io_rresp_data_0_entry_brSlots_0_sharing,
  output        io_rresp_data_0_entry_brSlots_0_valid,
  output        io_rresp_data_0_entry_brSlots_0_sc,
  output [2:0]  io_rresp_data_0_entry_tailSlot_offset,
  output [19:0] io_rresp_data_0_entry_tailSlot_lower,
  output [1:0]  io_rresp_data_0_entry_tailSlot_tarStat,
  output        io_rresp_data_0_entry_tailSlot_sharing,
  output        io_rresp_data_0_entry_tailSlot_valid,
  output        io_rresp_data_0_entry_tailSlot_sc,
  output [2:0]  io_rresp_data_0_entry_pftAddr,
  output        io_rresp_data_0_entry_carry,
  output        io_rresp_data_0_entry_isCall,
  output        io_rresp_data_0_entry_isRet,
  output        io_rresp_data_0_entry_isJalr,
  output        io_rresp_data_0_entry_last_may_be_rvi_call,
  output        io_rresp_data_0_entry_always_taken_0,
  output        io_rresp_data_0_entry_always_taken_1,
  output [19:0] io_rresp_data_0_tag,
  output        io_rresp_data_1_entry_valid,
  output [2:0]  io_rresp_data_1_entry_brSlots_0_offset,
  output [11:0] io_rresp_data_1_entry_brSlots_0_lower,
  output [1:0]  io_rresp_data_1_entry_brSlots_0_tarStat,
  output        io_rresp_data_1_entry_brSlots_0_sharing,
  output        io_rresp_data_1_entry_brSlots_0_valid,
  output        io_rresp_data_1_entry_brSlots_0_sc,
  output [2:0]  io_rresp_data_1_entry_tailSlot_offset,
  output [19:0] io_rresp_data_1_entry_tailSlot_lower,
  output [1:0]  io_rresp_data_1_entry_tailSlot_tarStat,
  output        io_rresp_data_1_entry_tailSlot_sharing,
  output        io_rresp_data_1_entry_tailSlot_valid,
  output        io_rresp_data_1_entry_tailSlot_sc,
  output [2:0]  io_rresp_data_1_entry_pftAddr,
  output        io_rresp_data_1_entry_carry,
  output        io_rresp_data_1_entry_isCall,
  output        io_rresp_data_1_entry_isRet,
  output        io_rresp_data_1_entry_isJalr,
  output        io_rresp_data_1_entry_last_may_be_rvi_call,
  output        io_rresp_data_1_entry_always_taken_0,
  output        io_rresp_data_1_entry_always_taken_1,
  output [19:0] io_rresp_data_1_tag,
  output        io_rresp_data_2_entry_valid,
  output [2:0]  io_rresp_data_2_entry_brSlots_0_offset,
  output [11:0] io_rresp_data_2_entry_brSlots_0_lower,
  output [1:0]  io_rresp_data_2_entry_brSlots_0_tarStat,
  output        io_rresp_data_2_entry_brSlots_0_sharing,
  output        io_rresp_data_2_entry_brSlots_0_valid,
  output        io_rresp_data_2_entry_brSlots_0_sc,
  output [2:0]  io_rresp_data_2_entry_tailSlot_offset,
  output [19:0] io_rresp_data_2_entry_tailSlot_lower,
  output [1:0]  io_rresp_data_2_entry_tailSlot_tarStat,
  output        io_rresp_data_2_entry_tailSlot_sharing,
  output        io_rresp_data_2_entry_tailSlot_valid,
  output        io_rresp_data_2_entry_tailSlot_sc,
  output [2:0]  io_rresp_data_2_entry_pftAddr,
  output        io_rresp_data_2_entry_carry,
  output        io_rresp_data_2_entry_isCall,
  output        io_rresp_data_2_entry_isRet,
  output        io_rresp_data_2_entry_isJalr,
  output        io_rresp_data_2_entry_last_may_be_rvi_call,
  output        io_rresp_data_2_entry_always_taken_0,
  output        io_rresp_data_2_entry_always_taken_1,
  output [19:0] io_rresp_data_2_tag,
  output        io_rresp_data_3_entry_valid,
  output [2:0]  io_rresp_data_3_entry_brSlots_0_offset,
  output [11:0] io_rresp_data_3_entry_brSlots_0_lower,
  output [1:0]  io_rresp_data_3_entry_brSlots_0_tarStat,
  output        io_rresp_data_3_entry_brSlots_0_sharing,
  output        io_rresp_data_3_entry_brSlots_0_valid,
  output        io_rresp_data_3_entry_brSlots_0_sc,
  output [2:0]  io_rresp_data_3_entry_tailSlot_offset,
  output [19:0] io_rresp_data_3_entry_tailSlot_lower,
  output [1:0]  io_rresp_data_3_entry_tailSlot_tarStat,
  output        io_rresp_data_3_entry_tailSlot_sharing,
  output        io_rresp_data_3_entry_tailSlot_valid,
  output        io_rresp_data_3_entry_tailSlot_sc,
  output [2:0]  io_rresp_data_3_entry_pftAddr,
  output        io_rresp_data_3_entry_carry,
  output        io_rresp_data_3_entry_isCall,
  output        io_rresp_data_3_entry_isRet,
  output        io_rresp_data_3_entry_isJalr,
  output        io_rresp_data_3_entry_last_may_be_rvi_call,
  output        io_rresp_data_3_entry_always_taken_0,
  output        io_rresp_data_3_entry_always_taken_1,
  output [19:0] io_rresp_data_3_tag,
  input         io_wreq_valid,
  input  [8:0]  io_wreq_bits_setIdx,
  input         io_wreq_bits_data_0_entry_valid,
  input  [2:0]  io_wreq_bits_data_0_entry_brSlots_0_offset,
  input  [11:0] io_wreq_bits_data_0_entry_brSlots_0_lower,
  input  [1:0]  io_wreq_bits_data_0_entry_brSlots_0_tarStat,
  input         io_wreq_bits_data_0_entry_brSlots_0_sharing,
  input         io_wreq_bits_data_0_entry_brSlots_0_valid,
  input         io_wreq_bits_data_0_entry_brSlots_0_sc,
  input  [2:0]  io_wreq_bits_data_0_entry_tailSlot_offset,
  input  [19:0] io_wreq_bits_data_0_entry_tailSlot_lower,
  input  [1:0]  io_wreq_bits_data_0_entry_tailSlot_tarStat,
  input         io_wreq_bits_data_0_entry_tailSlot_sharing,
  input         io_wreq_bits_data_0_entry_tailSlot_valid,
  input         io_wreq_bits_data_0_entry_tailSlot_sc,
  input  [2:0]  io_wreq_bits_data_0_entry_pftAddr,
  input         io_wreq_bits_data_0_entry_carry,
  input         io_wreq_bits_data_0_entry_isCall,
  input         io_wreq_bits_data_0_entry_isRet,
  input         io_wreq_bits_data_0_entry_isJalr,
  input         io_wreq_bits_data_0_entry_last_may_be_rvi_call,
  input         io_wreq_bits_data_0_entry_always_taken_0,
  input         io_wreq_bits_data_0_entry_always_taken_1,
  input  [19:0] io_wreq_bits_data_0_tag,
  input         io_wreq_bits_data_1_entry_valid,
  input  [2:0]  io_wreq_bits_data_1_entry_brSlots_0_offset,
  input  [11:0] io_wreq_bits_data_1_entry_brSlots_0_lower,
  input  [1:0]  io_wreq_bits_data_1_entry_brSlots_0_tarStat,
  input         io_wreq_bits_data_1_entry_brSlots_0_sharing,
  input         io_wreq_bits_data_1_entry_brSlots_0_valid,
  input         io_wreq_bits_data_1_entry_brSlots_0_sc,
  input  [2:0]  io_wreq_bits_data_1_entry_tailSlot_offset,
  input  [19:0] io_wreq_bits_data_1_entry_tailSlot_lower,
  input  [1:0]  io_wreq_bits_data_1_entry_tailSlot_tarStat,
  input         io_wreq_bits_data_1_entry_tailSlot_sharing,
  input         io_wreq_bits_data_1_entry_tailSlot_valid,
  input         io_wreq_bits_data_1_entry_tailSlot_sc,
  input  [2:0]  io_wreq_bits_data_1_entry_pftAddr,
  input         io_wreq_bits_data_1_entry_carry,
  input         io_wreq_bits_data_1_entry_isCall,
  input         io_wreq_bits_data_1_entry_isRet,
  input         io_wreq_bits_data_1_entry_isJalr,
  input         io_wreq_bits_data_1_entry_last_may_be_rvi_call,
  input         io_wreq_bits_data_1_entry_always_taken_0,
  input         io_wreq_bits_data_1_entry_always_taken_1,
  input  [19:0] io_wreq_bits_data_1_tag,
  input         io_wreq_bits_data_2_entry_valid,
  input  [2:0]  io_wreq_bits_data_2_entry_brSlots_0_offset,
  input  [11:0] io_wreq_bits_data_2_entry_brSlots_0_lower,
  input  [1:0]  io_wreq_bits_data_2_entry_brSlots_0_tarStat,
  input         io_wreq_bits_data_2_entry_brSlots_0_sharing,
  input         io_wreq_bits_data_2_entry_brSlots_0_valid,
  input         io_wreq_bits_data_2_entry_brSlots_0_sc,
  input  [2:0]  io_wreq_bits_data_2_entry_tailSlot_offset,
  input  [19:0] io_wreq_bits_data_2_entry_tailSlot_lower,
  input  [1:0]  io_wreq_bits_data_2_entry_tailSlot_tarStat,
  input         io_wreq_bits_data_2_entry_tailSlot_sharing,
  input         io_wreq_bits_data_2_entry_tailSlot_valid,
  input         io_wreq_bits_data_2_entry_tailSlot_sc,
  input  [2:0]  io_wreq_bits_data_2_entry_pftAddr,
  input         io_wreq_bits_data_2_entry_carry,
  input         io_wreq_bits_data_2_entry_isCall,
  input         io_wreq_bits_data_2_entry_isRet,
  input         io_wreq_bits_data_2_entry_isJalr,
  input         io_wreq_bits_data_2_entry_last_may_be_rvi_call,
  input         io_wreq_bits_data_2_entry_always_taken_0,
  input         io_wreq_bits_data_2_entry_always_taken_1,
  input  [19:0] io_wreq_bits_data_2_tag,
  input         io_wreq_bits_data_3_entry_valid,
  input  [2:0]  io_wreq_bits_data_3_entry_brSlots_0_offset,
  input  [11:0] io_wreq_bits_data_3_entry_brSlots_0_lower,
  input  [1:0]  io_wreq_bits_data_3_entry_brSlots_0_tarStat,
  input         io_wreq_bits_data_3_entry_brSlots_0_sharing,
  input         io_wreq_bits_data_3_entry_brSlots_0_valid,
  input         io_wreq_bits_data_3_entry_brSlots_0_sc,
  input  [2:0]  io_wreq_bits_data_3_entry_tailSlot_offset,
  input  [19:0] io_wreq_bits_data_3_entry_tailSlot_lower,
  input  [1:0]  io_wreq_bits_data_3_entry_tailSlot_tarStat,
  input         io_wreq_bits_data_3_entry_tailSlot_sharing,
  input         io_wreq_bits_data_3_entry_tailSlot_valid,
  input         io_wreq_bits_data_3_entry_tailSlot_sc,
  input  [2:0]  io_wreq_bits_data_3_entry_pftAddr,
  input         io_wreq_bits_data_3_entry_carry,
  input         io_wreq_bits_data_3_entry_isCall,
  input         io_wreq_bits_data_3_entry_isRet,
  input         io_wreq_bits_data_3_entry_isJalr,
  input         io_wreq_bits_data_3_entry_last_may_be_rvi_call,
  input         io_wreq_bits_data_3_entry_always_taken_0,
  input         io_wreq_bits_data_3_entry_always_taken_1,
  input  [19:0] io_wreq_bits_data_3_tag,
  input  [3:0]  io_wreq_bits_waymask
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [8:0] array_RW0_addr; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_en; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_clk; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmode; // @[SRAMTemplate.scala 105:26]
  wire [78:0] array_RW0_wdata_0; // @[SRAMTemplate.scala 105:26]
  wire [78:0] array_RW0_wdata_1; // @[SRAMTemplate.scala 105:26]
  wire [78:0] array_RW0_wdata_2; // @[SRAMTemplate.scala 105:26]
  wire [78:0] array_RW0_wdata_3; // @[SRAMTemplate.scala 105:26]
  wire [78:0] array_RW0_rdata_0; // @[SRAMTemplate.scala 105:26]
  wire [78:0] array_RW0_rdata_1; // @[SRAMTemplate.scala 105:26]
  wire [78:0] array_RW0_rdata_2; // @[SRAMTemplate.scala 105:26]
  wire [78:0] array_RW0_rdata_3; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_0; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_1; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_2; // @[SRAMTemplate.scala 105:26]
  wire  array_RW0_wmask_3; // @[SRAMTemplate.scala 105:26]
  reg  resetState; // @[SRAMTemplate.scala 109:30]
  reg [8:0] resetSet; // @[Counter.scala 62:40]
  wire  wrap_wrap = resetSet == 9'h1ff; // @[Counter.scala 74:24]
  wire [8:0] _wrap_value_T_1 = resetSet + 9'h1; // @[Counter.scala 78:24]
  wire  resetFinish = resetState & wrap_wrap; // @[Counter.scala 120:{16,23}]
  wire  wen = io_wreq_valid | resetState; // @[SRAMTemplate.scala 122:52]
  wire  _realRen_T = ~wen; // @[SRAMTemplate.scala 123:41]
  wire  realRen = io_rreq_valid & ~wen; // @[SRAMTemplate.scala 123:38]
  wire [8:0] setIdx = resetState ? resetSet : io_wreq_bits_setIdx; // @[SRAMTemplate.scala 125:19]
  wire  _wdata_T__0_entry_valid = resetState ? 1'h0 : io_wreq_bits_data_0_entry_valid; // @[SRAMTemplate.scala 126:26]
  wire [2:0] _wdata_T__0_entry_brSlots_0_offset = resetState ? 3'h0 : io_wreq_bits_data_0_entry_brSlots_0_offset; // @[SRAMTemplate.scala 126:26]
  wire [11:0] _wdata_T__0_entry_brSlots_0_lower = resetState ? 12'h0 : io_wreq_bits_data_0_entry_brSlots_0_lower; // @[SRAMTemplate.scala 126:26]
  wire [1:0] _wdata_T__0_entry_brSlots_0_tarStat = resetState ? 2'h0 : io_wreq_bits_data_0_entry_brSlots_0_tarStat; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__0_entry_brSlots_0_sharing = resetState ? 1'h0 : io_wreq_bits_data_0_entry_brSlots_0_sharing; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__0_entry_brSlots_0_valid = resetState ? 1'h0 : io_wreq_bits_data_0_entry_brSlots_0_valid; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__0_entry_brSlots_0_sc = resetState ? 1'h0 : io_wreq_bits_data_0_entry_brSlots_0_sc; // @[SRAMTemplate.scala 126:26]
  wire [2:0] _wdata_T__0_entry_tailSlot_offset = resetState ? 3'h0 : io_wreq_bits_data_0_entry_tailSlot_offset; // @[SRAMTemplate.scala 126:26]
  wire [19:0] _wdata_T__0_entry_tailSlot_lower = resetState ? 20'h0 : io_wreq_bits_data_0_entry_tailSlot_lower; // @[SRAMTemplate.scala 126:26]
  wire [1:0] _wdata_T__0_entry_tailSlot_tarStat = resetState ? 2'h0 : io_wreq_bits_data_0_entry_tailSlot_tarStat; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__0_entry_tailSlot_sharing = resetState ? 1'h0 : io_wreq_bits_data_0_entry_tailSlot_sharing; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__0_entry_tailSlot_valid = resetState ? 1'h0 : io_wreq_bits_data_0_entry_tailSlot_valid; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__0_entry_tailSlot_sc = resetState ? 1'h0 : io_wreq_bits_data_0_entry_tailSlot_sc; // @[SRAMTemplate.scala 126:26]
  wire [2:0] _wdata_T__0_entry_pftAddr = resetState ? 3'h0 : io_wreq_bits_data_0_entry_pftAddr; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__0_entry_carry = resetState ? 1'h0 : io_wreq_bits_data_0_entry_carry; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__0_entry_isCall = resetState ? 1'h0 : io_wreq_bits_data_0_entry_isCall; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__0_entry_isRet = resetState ? 1'h0 : io_wreq_bits_data_0_entry_isRet; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__0_entry_isJalr = resetState ? 1'h0 : io_wreq_bits_data_0_entry_isJalr; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__0_entry_last_may_be_rvi_call = resetState ? 1'h0 : io_wreq_bits_data_0_entry_last_may_be_rvi_call; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__0_entry_always_taken_0 = resetState ? 1'h0 : io_wreq_bits_data_0_entry_always_taken_0; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__0_entry_always_taken_1 = resetState ? 1'h0 : io_wreq_bits_data_0_entry_always_taken_1; // @[SRAMTemplate.scala 126:26]
  wire [19:0] _wdata_T__0_tag = resetState ? 20'h0 : io_wreq_bits_data_0_tag; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__1_entry_valid = resetState ? 1'h0 : io_wreq_bits_data_1_entry_valid; // @[SRAMTemplate.scala 126:26]
  wire [2:0] _wdata_T__1_entry_brSlots_0_offset = resetState ? 3'h0 : io_wreq_bits_data_1_entry_brSlots_0_offset; // @[SRAMTemplate.scala 126:26]
  wire [11:0] _wdata_T__1_entry_brSlots_0_lower = resetState ? 12'h0 : io_wreq_bits_data_1_entry_brSlots_0_lower; // @[SRAMTemplate.scala 126:26]
  wire [1:0] _wdata_T__1_entry_brSlots_0_tarStat = resetState ? 2'h0 : io_wreq_bits_data_1_entry_brSlots_0_tarStat; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__1_entry_brSlots_0_sharing = resetState ? 1'h0 : io_wreq_bits_data_1_entry_brSlots_0_sharing; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__1_entry_brSlots_0_valid = resetState ? 1'h0 : io_wreq_bits_data_1_entry_brSlots_0_valid; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__1_entry_brSlots_0_sc = resetState ? 1'h0 : io_wreq_bits_data_1_entry_brSlots_0_sc; // @[SRAMTemplate.scala 126:26]
  wire [2:0] _wdata_T__1_entry_tailSlot_offset = resetState ? 3'h0 : io_wreq_bits_data_1_entry_tailSlot_offset; // @[SRAMTemplate.scala 126:26]
  wire [19:0] _wdata_T__1_entry_tailSlot_lower = resetState ? 20'h0 : io_wreq_bits_data_1_entry_tailSlot_lower; // @[SRAMTemplate.scala 126:26]
  wire [1:0] _wdata_T__1_entry_tailSlot_tarStat = resetState ? 2'h0 : io_wreq_bits_data_1_entry_tailSlot_tarStat; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__1_entry_tailSlot_sharing = resetState ? 1'h0 : io_wreq_bits_data_1_entry_tailSlot_sharing; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__1_entry_tailSlot_valid = resetState ? 1'h0 : io_wreq_bits_data_1_entry_tailSlot_valid; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__1_entry_tailSlot_sc = resetState ? 1'h0 : io_wreq_bits_data_1_entry_tailSlot_sc; // @[SRAMTemplate.scala 126:26]
  wire [2:0] _wdata_T__1_entry_pftAddr = resetState ? 3'h0 : io_wreq_bits_data_1_entry_pftAddr; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__1_entry_carry = resetState ? 1'h0 : io_wreq_bits_data_1_entry_carry; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__1_entry_isCall = resetState ? 1'h0 : io_wreq_bits_data_1_entry_isCall; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__1_entry_isRet = resetState ? 1'h0 : io_wreq_bits_data_1_entry_isRet; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__1_entry_isJalr = resetState ? 1'h0 : io_wreq_bits_data_1_entry_isJalr; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__1_entry_last_may_be_rvi_call = resetState ? 1'h0 : io_wreq_bits_data_1_entry_last_may_be_rvi_call; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__1_entry_always_taken_0 = resetState ? 1'h0 : io_wreq_bits_data_1_entry_always_taken_0; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__1_entry_always_taken_1 = resetState ? 1'h0 : io_wreq_bits_data_1_entry_always_taken_1; // @[SRAMTemplate.scala 126:26]
  wire [19:0] _wdata_T__1_tag = resetState ? 20'h0 : io_wreq_bits_data_1_tag; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__2_entry_valid = resetState ? 1'h0 : io_wreq_bits_data_2_entry_valid; // @[SRAMTemplate.scala 126:26]
  wire [2:0] _wdata_T__2_entry_brSlots_0_offset = resetState ? 3'h0 : io_wreq_bits_data_2_entry_brSlots_0_offset; // @[SRAMTemplate.scala 126:26]
  wire [11:0] _wdata_T__2_entry_brSlots_0_lower = resetState ? 12'h0 : io_wreq_bits_data_2_entry_brSlots_0_lower; // @[SRAMTemplate.scala 126:26]
  wire [1:0] _wdata_T__2_entry_brSlots_0_tarStat = resetState ? 2'h0 : io_wreq_bits_data_2_entry_brSlots_0_tarStat; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__2_entry_brSlots_0_sharing = resetState ? 1'h0 : io_wreq_bits_data_2_entry_brSlots_0_sharing; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__2_entry_brSlots_0_valid = resetState ? 1'h0 : io_wreq_bits_data_2_entry_brSlots_0_valid; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__2_entry_brSlots_0_sc = resetState ? 1'h0 : io_wreq_bits_data_2_entry_brSlots_0_sc; // @[SRAMTemplate.scala 126:26]
  wire [2:0] _wdata_T__2_entry_tailSlot_offset = resetState ? 3'h0 : io_wreq_bits_data_2_entry_tailSlot_offset; // @[SRAMTemplate.scala 126:26]
  wire [19:0] _wdata_T__2_entry_tailSlot_lower = resetState ? 20'h0 : io_wreq_bits_data_2_entry_tailSlot_lower; // @[SRAMTemplate.scala 126:26]
  wire [1:0] _wdata_T__2_entry_tailSlot_tarStat = resetState ? 2'h0 : io_wreq_bits_data_2_entry_tailSlot_tarStat; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__2_entry_tailSlot_sharing = resetState ? 1'h0 : io_wreq_bits_data_2_entry_tailSlot_sharing; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__2_entry_tailSlot_valid = resetState ? 1'h0 : io_wreq_bits_data_2_entry_tailSlot_valid; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__2_entry_tailSlot_sc = resetState ? 1'h0 : io_wreq_bits_data_2_entry_tailSlot_sc; // @[SRAMTemplate.scala 126:26]
  wire [2:0] _wdata_T__2_entry_pftAddr = resetState ? 3'h0 : io_wreq_bits_data_2_entry_pftAddr; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__2_entry_carry = resetState ? 1'h0 : io_wreq_bits_data_2_entry_carry; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__2_entry_isCall = resetState ? 1'h0 : io_wreq_bits_data_2_entry_isCall; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__2_entry_isRet = resetState ? 1'h0 : io_wreq_bits_data_2_entry_isRet; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__2_entry_isJalr = resetState ? 1'h0 : io_wreq_bits_data_2_entry_isJalr; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__2_entry_last_may_be_rvi_call = resetState ? 1'h0 : io_wreq_bits_data_2_entry_last_may_be_rvi_call; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__2_entry_always_taken_0 = resetState ? 1'h0 : io_wreq_bits_data_2_entry_always_taken_0; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__2_entry_always_taken_1 = resetState ? 1'h0 : io_wreq_bits_data_2_entry_always_taken_1; // @[SRAMTemplate.scala 126:26]
  wire [19:0] _wdata_T__2_tag = resetState ? 20'h0 : io_wreq_bits_data_2_tag; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__3_entry_valid = resetState ? 1'h0 : io_wreq_bits_data_3_entry_valid; // @[SRAMTemplate.scala 126:26]
  wire [2:0] _wdata_T__3_entry_brSlots_0_offset = resetState ? 3'h0 : io_wreq_bits_data_3_entry_brSlots_0_offset; // @[SRAMTemplate.scala 126:26]
  wire [11:0] _wdata_T__3_entry_brSlots_0_lower = resetState ? 12'h0 : io_wreq_bits_data_3_entry_brSlots_0_lower; // @[SRAMTemplate.scala 126:26]
  wire [1:0] _wdata_T__3_entry_brSlots_0_tarStat = resetState ? 2'h0 : io_wreq_bits_data_3_entry_brSlots_0_tarStat; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__3_entry_brSlots_0_sharing = resetState ? 1'h0 : io_wreq_bits_data_3_entry_brSlots_0_sharing; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__3_entry_brSlots_0_valid = resetState ? 1'h0 : io_wreq_bits_data_3_entry_brSlots_0_valid; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__3_entry_brSlots_0_sc = resetState ? 1'h0 : io_wreq_bits_data_3_entry_brSlots_0_sc; // @[SRAMTemplate.scala 126:26]
  wire [2:0] _wdata_T__3_entry_tailSlot_offset = resetState ? 3'h0 : io_wreq_bits_data_3_entry_tailSlot_offset; // @[SRAMTemplate.scala 126:26]
  wire [19:0] _wdata_T__3_entry_tailSlot_lower = resetState ? 20'h0 : io_wreq_bits_data_3_entry_tailSlot_lower; // @[SRAMTemplate.scala 126:26]
  wire [1:0] _wdata_T__3_entry_tailSlot_tarStat = resetState ? 2'h0 : io_wreq_bits_data_3_entry_tailSlot_tarStat; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__3_entry_tailSlot_sharing = resetState ? 1'h0 : io_wreq_bits_data_3_entry_tailSlot_sharing; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__3_entry_tailSlot_valid = resetState ? 1'h0 : io_wreq_bits_data_3_entry_tailSlot_valid; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__3_entry_tailSlot_sc = resetState ? 1'h0 : io_wreq_bits_data_3_entry_tailSlot_sc; // @[SRAMTemplate.scala 126:26]
  wire [2:0] _wdata_T__3_entry_pftAddr = resetState ? 3'h0 : io_wreq_bits_data_3_entry_pftAddr; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__3_entry_carry = resetState ? 1'h0 : io_wreq_bits_data_3_entry_carry; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__3_entry_isCall = resetState ? 1'h0 : io_wreq_bits_data_3_entry_isCall; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__3_entry_isRet = resetState ? 1'h0 : io_wreq_bits_data_3_entry_isRet; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__3_entry_isJalr = resetState ? 1'h0 : io_wreq_bits_data_3_entry_isJalr; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__3_entry_last_may_be_rvi_call = resetState ? 1'h0 : io_wreq_bits_data_3_entry_last_may_be_rvi_call; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__3_entry_always_taken_0 = resetState ? 1'h0 : io_wreq_bits_data_3_entry_always_taken_0; // @[SRAMTemplate.scala 126:26]
  wire  _wdata_T__3_entry_always_taken_1 = resetState ? 1'h0 : io_wreq_bits_data_3_entry_always_taken_1; // @[SRAMTemplate.scala 126:26]
  wire [19:0] _wdata_T__3_tag = resetState ? 20'h0 : io_wreq_bits_data_3_tag; // @[SRAMTemplate.scala 126:26]
  wire [23:0] wdata_lo_lo = {_wdata_T__0_entry_isJalr,_wdata_T__0_entry_last_may_be_rvi_call,
    _wdata_T__0_entry_always_taken_1,_wdata_T__0_entry_always_taken_0,_wdata_T__0_tag}; // @[SRAMTemplate.scala 126:102]
  wire [31:0] wdata_lo = {_wdata_T__0_entry_tailSlot_valid,_wdata_T__0_entry_tailSlot_sc,_wdata_T__0_entry_pftAddr,
    _wdata_T__0_entry_carry,_wdata_T__0_entry_isCall,_wdata_T__0_entry_isRet,wdata_lo_lo}; // @[SRAMTemplate.scala 126:102]
  wire [26:0] wdata_hi_lo = {_wdata_T__0_entry_brSlots_0_sc,_wdata_T__0_entry_tailSlot_offset,
    _wdata_T__0_entry_tailSlot_lower,_wdata_T__0_entry_tailSlot_tarStat,_wdata_T__0_entry_tailSlot_sharing}; // @[SRAMTemplate.scala 126:102]
  wire [46:0] wdata_hi = {_wdata_T__0_entry_valid,_wdata_T__0_entry_brSlots_0_offset,_wdata_T__0_entry_brSlots_0_lower,
    _wdata_T__0_entry_brSlots_0_tarStat,_wdata_T__0_entry_brSlots_0_sharing,_wdata_T__0_entry_brSlots_0_valid,
    wdata_hi_lo}; // @[SRAMTemplate.scala 126:102]
  wire [23:0] wdata_lo_lo_1 = {_wdata_T__1_entry_isJalr,_wdata_T__1_entry_last_may_be_rvi_call,
    _wdata_T__1_entry_always_taken_1,_wdata_T__1_entry_always_taken_0,_wdata_T__1_tag}; // @[SRAMTemplate.scala 126:102]
  wire [31:0] wdata_lo_1 = {_wdata_T__1_entry_tailSlot_valid,_wdata_T__1_entry_tailSlot_sc,_wdata_T__1_entry_pftAddr,
    _wdata_T__1_entry_carry,_wdata_T__1_entry_isCall,_wdata_T__1_entry_isRet,wdata_lo_lo_1}; // @[SRAMTemplate.scala 126:102]
  wire [26:0] wdata_hi_lo_1 = {_wdata_T__1_entry_brSlots_0_sc,_wdata_T__1_entry_tailSlot_offset,
    _wdata_T__1_entry_tailSlot_lower,_wdata_T__1_entry_tailSlot_tarStat,_wdata_T__1_entry_tailSlot_sharing}; // @[SRAMTemplate.scala 126:102]
  wire [46:0] wdata_hi_1 = {_wdata_T__1_entry_valid,_wdata_T__1_entry_brSlots_0_offset,_wdata_T__1_entry_brSlots_0_lower
    ,_wdata_T__1_entry_brSlots_0_tarStat,_wdata_T__1_entry_brSlots_0_sharing,_wdata_T__1_entry_brSlots_0_valid,
    wdata_hi_lo_1}; // @[SRAMTemplate.scala 126:102]
  wire [23:0] wdata_lo_lo_2 = {_wdata_T__2_entry_isJalr,_wdata_T__2_entry_last_may_be_rvi_call,
    _wdata_T__2_entry_always_taken_1,_wdata_T__2_entry_always_taken_0,_wdata_T__2_tag}; // @[SRAMTemplate.scala 126:102]
  wire [31:0] wdata_lo_2 = {_wdata_T__2_entry_tailSlot_valid,_wdata_T__2_entry_tailSlot_sc,_wdata_T__2_entry_pftAddr,
    _wdata_T__2_entry_carry,_wdata_T__2_entry_isCall,_wdata_T__2_entry_isRet,wdata_lo_lo_2}; // @[SRAMTemplate.scala 126:102]
  wire [26:0] wdata_hi_lo_2 = {_wdata_T__2_entry_brSlots_0_sc,_wdata_T__2_entry_tailSlot_offset,
    _wdata_T__2_entry_tailSlot_lower,_wdata_T__2_entry_tailSlot_tarStat,_wdata_T__2_entry_tailSlot_sharing}; // @[SRAMTemplate.scala 126:102]
  wire [46:0] wdata_hi_2 = {_wdata_T__2_entry_valid,_wdata_T__2_entry_brSlots_0_offset,_wdata_T__2_entry_brSlots_0_lower
    ,_wdata_T__2_entry_brSlots_0_tarStat,_wdata_T__2_entry_brSlots_0_sharing,_wdata_T__2_entry_brSlots_0_valid,
    wdata_hi_lo_2}; // @[SRAMTemplate.scala 126:102]
  wire [23:0] wdata_lo_lo_3 = {_wdata_T__3_entry_isJalr,_wdata_T__3_entry_last_may_be_rvi_call,
    _wdata_T__3_entry_always_taken_1,_wdata_T__3_entry_always_taken_0,_wdata_T__3_tag}; // @[SRAMTemplate.scala 126:102]
  wire [31:0] wdata_lo_3 = {_wdata_T__3_entry_tailSlot_valid,_wdata_T__3_entry_tailSlot_sc,_wdata_T__3_entry_pftAddr,
    _wdata_T__3_entry_carry,_wdata_T__3_entry_isCall,_wdata_T__3_entry_isRet,wdata_lo_lo_3}; // @[SRAMTemplate.scala 126:102]
  wire [26:0] wdata_hi_lo_3 = {_wdata_T__3_entry_brSlots_0_sc,_wdata_T__3_entry_tailSlot_offset,
    _wdata_T__3_entry_tailSlot_lower,_wdata_T__3_entry_tailSlot_tarStat,_wdata_T__3_entry_tailSlot_sharing}; // @[SRAMTemplate.scala 126:102]
  wire [46:0] wdata_hi_3 = {_wdata_T__3_entry_valid,_wdata_T__3_entry_brSlots_0_offset,_wdata_T__3_entry_brSlots_0_lower
    ,_wdata_T__3_entry_brSlots_0_tarStat,_wdata_T__3_entry_brSlots_0_sharing,_wdata_T__3_entry_brSlots_0_valid,
    wdata_hi_lo_3}; // @[SRAMTemplate.scala 126:102]
  wire [3:0] waymask = resetState ? 4'hf : io_wreq_bits_waymask; // @[SRAMTemplate.scala 127:20]
  wire [78:0] _rdata_WIRE = array_RW0_rdata_0;
  wire [78:0] _rdata_WIRE_1 = array_RW0_rdata_1;
  wire [78:0] _rdata_WIRE_2 = array_RW0_rdata_2;
  wire [78:0] _rdata_WIRE_3 = array_RW0_rdata_3;
  array_3 array ( // @[SRAMTemplate.scala 105:26]
    .RW0_addr(array_RW0_addr),
    .RW0_en(array_RW0_en),
    .RW0_clk(array_RW0_clk),
    .RW0_wmode(array_RW0_wmode),
    .RW0_wdata_0(array_RW0_wdata_0),
    .RW0_wdata_1(array_RW0_wdata_1),
    .RW0_wdata_2(array_RW0_wdata_2),
    .RW0_wdata_3(array_RW0_wdata_3),
    .RW0_rdata_0(array_RW0_rdata_0),
    .RW0_rdata_1(array_RW0_rdata_1),
    .RW0_rdata_2(array_RW0_rdata_2),
    .RW0_rdata_3(array_RW0_rdata_3),
    .RW0_wmask_0(array_RW0_wmask_0),
    .RW0_wmask_1(array_RW0_wmask_1),
    .RW0_wmask_2(array_RW0_wmask_2),
    .RW0_wmask_3(array_RW0_wmask_3)
  );
  assign io_rreq_ready = ~resetState & _realRen_T; // @[SRAMTemplate.scala 157:33]
  assign io_rresp_data_0_entry_valid = _rdata_WIRE[78]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_brSlots_0_offset = _rdata_WIRE[77:75]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_brSlots_0_lower = _rdata_WIRE[74:63]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_brSlots_0_tarStat = _rdata_WIRE[62:61]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_brSlots_0_sharing = _rdata_WIRE[60]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_brSlots_0_valid = _rdata_WIRE[59]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_brSlots_0_sc = _rdata_WIRE[58]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_tailSlot_offset = _rdata_WIRE[57:55]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_tailSlot_lower = _rdata_WIRE[54:35]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_tailSlot_tarStat = _rdata_WIRE[34:33]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_tailSlot_sharing = _rdata_WIRE[32]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_tailSlot_valid = _rdata_WIRE[31]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_tailSlot_sc = _rdata_WIRE[30]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_pftAddr = _rdata_WIRE[29:27]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_carry = _rdata_WIRE[26]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_isCall = _rdata_WIRE[25]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_isRet = _rdata_WIRE[24]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_isJalr = _rdata_WIRE[23]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_last_may_be_rvi_call = _rdata_WIRE[22]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_always_taken_0 = _rdata_WIRE[20]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_entry_always_taken_1 = _rdata_WIRE[21]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_0_tag = _rdata_WIRE[19:0]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_valid = _rdata_WIRE_1[78]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_brSlots_0_offset = _rdata_WIRE_1[77:75]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_brSlots_0_lower = _rdata_WIRE_1[74:63]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_brSlots_0_tarStat = _rdata_WIRE_1[62:61]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_brSlots_0_sharing = _rdata_WIRE_1[60]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_brSlots_0_valid = _rdata_WIRE_1[59]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_brSlots_0_sc = _rdata_WIRE_1[58]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_tailSlot_offset = _rdata_WIRE_1[57:55]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_tailSlot_lower = _rdata_WIRE_1[54:35]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_tailSlot_tarStat = _rdata_WIRE_1[34:33]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_tailSlot_sharing = _rdata_WIRE_1[32]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_tailSlot_valid = _rdata_WIRE_1[31]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_tailSlot_sc = _rdata_WIRE_1[30]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_pftAddr = _rdata_WIRE_1[29:27]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_carry = _rdata_WIRE_1[26]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_isCall = _rdata_WIRE_1[25]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_isRet = _rdata_WIRE_1[24]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_isJalr = _rdata_WIRE_1[23]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_last_may_be_rvi_call = _rdata_WIRE_1[22]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_always_taken_0 = _rdata_WIRE_1[20]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_entry_always_taken_1 = _rdata_WIRE_1[21]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_1_tag = _rdata_WIRE_1[19:0]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_valid = _rdata_WIRE_2[78]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_brSlots_0_offset = _rdata_WIRE_2[77:75]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_brSlots_0_lower = _rdata_WIRE_2[74:63]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_brSlots_0_tarStat = _rdata_WIRE_2[62:61]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_brSlots_0_sharing = _rdata_WIRE_2[60]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_brSlots_0_valid = _rdata_WIRE_2[59]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_brSlots_0_sc = _rdata_WIRE_2[58]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_tailSlot_offset = _rdata_WIRE_2[57:55]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_tailSlot_lower = _rdata_WIRE_2[54:35]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_tailSlot_tarStat = _rdata_WIRE_2[34:33]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_tailSlot_sharing = _rdata_WIRE_2[32]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_tailSlot_valid = _rdata_WIRE_2[31]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_tailSlot_sc = _rdata_WIRE_2[30]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_pftAddr = _rdata_WIRE_2[29:27]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_carry = _rdata_WIRE_2[26]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_isCall = _rdata_WIRE_2[25]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_isRet = _rdata_WIRE_2[24]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_isJalr = _rdata_WIRE_2[23]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_last_may_be_rvi_call = _rdata_WIRE_2[22]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_always_taken_0 = _rdata_WIRE_2[20]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_entry_always_taken_1 = _rdata_WIRE_2[21]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_2_tag = _rdata_WIRE_2[19:0]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_valid = _rdata_WIRE_3[78]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_brSlots_0_offset = _rdata_WIRE_3[77:75]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_brSlots_0_lower = _rdata_WIRE_3[74:63]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_brSlots_0_tarStat = _rdata_WIRE_3[62:61]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_brSlots_0_sharing = _rdata_WIRE_3[60]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_brSlots_0_valid = _rdata_WIRE_3[59]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_brSlots_0_sc = _rdata_WIRE_3[58]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_tailSlot_offset = _rdata_WIRE_3[57:55]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_tailSlot_lower = _rdata_WIRE_3[54:35]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_tailSlot_tarStat = _rdata_WIRE_3[34:33]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_tailSlot_sharing = _rdata_WIRE_3[32]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_tailSlot_valid = _rdata_WIRE_3[31]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_tailSlot_sc = _rdata_WIRE_3[30]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_pftAddr = _rdata_WIRE_3[29:27]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_carry = _rdata_WIRE_3[26]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_isCall = _rdata_WIRE_3[25]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_isRet = _rdata_WIRE_3[24]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_isJalr = _rdata_WIRE_3[23]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_last_may_be_rvi_call = _rdata_WIRE_3[22]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_always_taken_0 = _rdata_WIRE_3[20]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_entry_always_taken_1 = _rdata_WIRE_3[21]; // @[SRAMTemplate.scala 154:45]
  assign io_rresp_data_3_tag = _rdata_WIRE_3[19:0]; // @[SRAMTemplate.scala 154:45]
  assign array_RW0_clk = clock; // @[SRAMTemplate.scala 128:14]
  assign array_RW0_wdata_0 = {wdata_hi,wdata_lo}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wdata_1 = {wdata_hi_1,wdata_lo_1}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wdata_2 = {wdata_hi_2,wdata_lo_2}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wdata_3 = {wdata_hi_3,wdata_lo_3}; // @[SRAMTemplate.scala 126:102]
  assign array_RW0_wmask_0 = waymask[0]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_1 = waymask[1]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_2 = waymask[2]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_wmask_3 = waymask[3]; // @[SRAMTemplate.scala 128:51]
  assign array_RW0_en = realRen | wen;
  assign array_RW0_wmode = io_wreq_valid | resetState; // @[SRAMTemplate.scala 122:52]
  assign array_RW0_addr = wen ? setIdx : io_rreq_bits_setIdx;
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[SRAMTemplate.scala 111:24]
      resetState <= 1'h1; // @[SRAMTemplate.scala 111:38]
    end else if (resetFinish) begin // @[SRAMTemplate.scala 109:30]
      resetState <= 1'h0;
    end
  end
  always @(posedge clock or posedge reset) begin
    if (reset) begin // @[Counter.scala 120:16]
      resetSet <= 9'h0; // @[Counter.scala 78:15]
    end else if (resetState) begin // @[Counter.scala 62:40]
      resetSet <= _wrap_value_T_1;
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
  resetState = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  resetSet = _RAND_1[8:0];
`endif // RANDOMIZE_REG_INIT
  if (reset) begin
    resetState = 1'h1;
  end
  if (reset) begin
    resetSet = 9'h0;
  end
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule

