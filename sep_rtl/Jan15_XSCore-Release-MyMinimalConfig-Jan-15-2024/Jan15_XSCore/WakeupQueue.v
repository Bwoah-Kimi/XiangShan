module WakeupQueue(
  input        io_in_valid,
  input        io_in_bits_ctrl_rfWen,
  input        io_in_bits_ctrl_fpWen,
  input  [5:0] io_in_bits_pdest,
  input        io_in_bits_robIdx_flag,
  input  [4:0] io_in_bits_robIdx_value,
  input        io_in_bits_lqIdx_flag,
  input  [3:0] io_in_bits_lqIdx_value,
  output       io_out_valid,
  output       io_out_bits_ctrl_rfWen,
  output       io_out_bits_ctrl_fpWen,
  output [5:0] io_out_bits_pdest,
  output       io_out_bits_robIdx_flag,
  output [4:0] io_out_bits_robIdx_value,
  output       io_out_bits_lqIdx_flag,
  output [3:0] io_out_bits_lqIdx_value
);
  assign io_out_valid = io_in_valid; // @[WakeupQueue.scala 37:18]
  assign io_out_bits_ctrl_rfWen = io_in_bits_ctrl_rfWen; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_ctrl_fpWen = io_in_bits_ctrl_fpWen; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_pdest = io_in_bits_pdest; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_robIdx_flag = io_in_bits_robIdx_flag; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_robIdx_value = io_in_bits_robIdx_value; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_lqIdx_flag = io_in_bits_lqIdx_flag; // @[WakeupQueue.scala 36:11]
  assign io_out_bits_lqIdx_value = io_in_bits_lqIdx_value; // @[WakeupQueue.scala 36:11]
endmodule

