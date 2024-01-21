module C53(
  input   io_in_0,
  input   io_in_1,
  input   io_in_2,
  input   io_in_3,
  input   io_in_4,
  output  io_out_0,
  output  io_out_1,
  output  io_out_2
);
  wire  CSA3_2_io_in_0; // @[CSA.scala 54:33]
  wire  CSA3_2_io_in_1; // @[CSA.scala 54:33]
  wire  CSA3_2_io_in_2; // @[CSA.scala 54:33]
  wire  CSA3_2_io_out_0; // @[CSA.scala 54:33]
  wire  CSA3_2_io_out_1; // @[CSA.scala 54:33]
  wire  CSA3_2_1_io_in_0; // @[CSA.scala 54:33]
  wire  CSA3_2_1_io_in_1; // @[CSA.scala 54:33]
  wire  CSA3_2_1_io_in_2; // @[CSA.scala 54:33]
  wire  CSA3_2_1_io_out_0; // @[CSA.scala 54:33]
  wire  CSA3_2_1_io_out_1; // @[CSA.scala 54:33]
  C32 CSA3_2 ( // @[CSA.scala 54:33]
    .io_in_0(CSA3_2_io_in_0),
    .io_in_1(CSA3_2_io_in_1),
    .io_in_2(CSA3_2_io_in_2),
    .io_out_0(CSA3_2_io_out_0),
    .io_out_1(CSA3_2_io_out_1)
  );
  C32 CSA3_2_1 ( // @[CSA.scala 54:33]
    .io_in_0(CSA3_2_1_io_in_0),
    .io_in_1(CSA3_2_1_io_in_1),
    .io_in_2(CSA3_2_1_io_in_2),
    .io_out_0(CSA3_2_1_io_out_0),
    .io_out_1(CSA3_2_1_io_out_1)
  );
  assign io_out_0 = CSA3_2_1_io_out_0; // @[CSA.scala 57:{20,20}]
  assign io_out_1 = CSA3_2_io_out_1; // @[CSA.scala 57:{20,20}]
  assign io_out_2 = CSA3_2_1_io_out_1; // @[CSA.scala 57:{20,20}]
  assign CSA3_2_io_in_0 = io_in_0; // @[CSA.scala 55:16]
  assign CSA3_2_io_in_1 = io_in_1; // @[CSA.scala 55:16]
  assign CSA3_2_io_in_2 = io_in_2; // @[CSA.scala 55:16]
  assign CSA3_2_1_io_in_0 = CSA3_2_io_out_0; // @[CSA.scala 56:{26,26}]
  assign CSA3_2_1_io_in_1 = io_in_3; // @[CSA.scala 56:{26,26}]
  assign CSA3_2_1_io_in_2 = io_in_4; // @[CSA.scala 56:{26,26}]
endmodule

