module ImmExtractor_5(
  input  [63:0] io_data_in_0,
  input  [63:0] io_data_in_1,
  output [63:0] io_data_out_0,
  output [63:0] io_data_out_1
);
  assign io_data_out_0 = io_data_in_0; // @[DataArray.scala 110:15]
  assign io_data_out_1 = io_data_in_1; // @[DataArray.scala 110:15]
endmodule

