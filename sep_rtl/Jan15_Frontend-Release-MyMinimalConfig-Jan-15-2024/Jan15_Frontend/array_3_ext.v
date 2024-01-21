// name:array_3_ext depth:512 width:316 masked:true maskGran:79 maskSeg:4
module array_3_ext(
  input RW0_clk,
  input [8:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [3:0] RW0_wmask,
  input [315:0] RW0_wdata,
  output [315:0] RW0_rdata
);


  reg reg_RW0_ren;
  reg [8:0] reg_RW0_addr;
  reg [315:0] ram [511:0];
  `ifdef RANDOMIZE_MEM_INIT
    integer initvar;
    initial begin
      #`RANDOMIZE_DELAY begin end
      for (initvar = 0; initvar < 512; initvar = initvar+1)
        ram[initvar] = {10 {$random}};
      reg_RW0_addr = {1 {$random}};
    end
  `endif
  always @(posedge RW0_clk)
    reg_RW0_ren <= RW0_en && !RW0_wmode;
  always @(posedge RW0_clk)
    if (RW0_en && !RW0_wmode) reg_RW0_addr <= RW0_addr;
  always @(posedge RW0_clk)
    if (RW0_en && RW0_wmode) begin
      if (RW0_wmask[0]) ram[RW0_addr][78:0] <= RW0_wdata[78:0];
      if (RW0_wmask[1]) ram[RW0_addr][157:79] <= RW0_wdata[157:79];
      if (RW0_wmask[2]) ram[RW0_addr][236:158] <= RW0_wdata[236:158];
      if (RW0_wmask[3]) ram[RW0_addr][315:237] <= RW0_wdata[315:237];
    end
  `ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [319:0] RW0_random;
  `ifdef RANDOMIZE_MEM_INIT
    initial begin
      #`RANDOMIZE_DELAY begin end
      RW0_random = {$random, $random, $random, $random, $random, $random, $random, $random, $random, $random};
      reg_RW0_ren = RW0_random[0];
    end
  `endif
  always @(posedge RW0_clk) RW0_random <= {$random, $random, $random, $random, $random, $random, $random, $random, $random, $random};
  assign RW0_rdata = reg_RW0_ren ? ram[reg_RW0_addr] : RW0_random[315:0];
  `else
  assign RW0_rdata = ram[reg_RW0_addr];
  `endif

endmodule
