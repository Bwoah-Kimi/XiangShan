//commit cb6e5d3cb340ad3943b35cf75136509d298d0133
//Author: ssszwic <114381825+ssszwic@users.noreply.github.com>
//Date:   Wed Sep 6 17:18:50 2023 +0800
//
//    icache: change itlb port to no-blocked and new fdip (#2277)
//diff --git a/build.sc b/build.sc
//index 15494d537..7e89fff02 100644
//--- a/build.sc
//+++ b/build.sc
//@@ -158,7 +158,7 @@ trait CommonXiangShan extends XSModule with SbtModule { m =>
// 
//   override def millSourcePath = os.pwd
// 
//-  override def forkArgs = Seq("-Xmx64G", "-Xss256m")
//+  override def forkArgs = Seq("-Xmx25G", "-Xss256m")
// 
//   override def ivyDeps = super.ivyDeps() ++ Seq(ivys.chiseltest)
// 
//diff --git a/src/main/scala/top/Configs.scala b/src/main/scala/top/Configs.scala
//index d9e555e66..179f18b26 100644
//--- a/src/main/scala/top/Configs.scala
//+++ b/src/main/scala/top/Configs.scala
//@@ -204,7 +204,168 @@ class MinimalConfig(n: Int = 1) extends Config(
//               t.L2NBanks * t.L2CacheParamsOpt.map(_.toCacheParams.capacity).getOrElse(0)
//             }.sum
//             val l2params = core.L2CacheParamsOpt.get.toCacheParams
//-            l2params.copy(sets = 2 * clientDirBytes / core.L2NBanks / l2params.ways / 64)
//+            l2params.copy(sets = 2 * clientDirBytes / core.L2NBanks / l2params.ways / 64) //this [2] means that L2NBanks = 2???
//+          },
//+          simulation = !site(DebugOptionsKey).FPGAPlatform,
//+          prefetch = None
//+        )),
//+        L3NBanks = 1
//+      )
//+  })
//+)
//+
//+class MyMinimalConfig(n: Int = 1) extends Config(
//+  new BaseConfig(n).alter((site, here, up) => {
//+    case XSTileKey => up(XSTileKey).map(
//+      _.copy(
//+        DecodeWidth = 2,
//+        RenameWidth = 2,
//+        CommitWidth = 2,
//+        FetchWidth = 4,
//+        IssQueSize = 8,
//+        NRPhyRegs = 64,
//+        VirtualLoadQueueSize = 16,
//+        LoadQueueRARSize = 16, 
//+        LoadQueueRAWSize = 12, 
//+        LoadQueueReplaySize = 8,
//+        LoadUncacheBufferSize = 8,
//+        LoadQueueNWriteBanks = 4, // NOTE: make sure that LoadQueue{RAR, RAW, Replay}Size is divided by LoadQueueNWriteBanks.
//+        RollbackGroupSize = 8,
//+        StoreQueueSize = 12,
//+        StoreQueueNWriteBanks = 4, // NOTE: make sure that StoreQueueSize is divided by StoreQueueNWriteBanks
//+        StoreQueueForwardWithMask = true,
//+        RobSize = 32,
//+        FtqSize = 8,
//+        IBufSize = 16,
//+        StoreBufferSize = 4,
//+        StoreBufferThreshold = 3,
//+        dpParams = DispatchParameters(
//+          IntDqSize = 12,
//+          FpDqSize = 12,
//+          LsDqSize = 12,
//+          IntDqDeqWidth = 4,
//+          FpDqDeqWidth = 4,
//+          LsDqDeqWidth = 4
//+        ),
//+        exuParameters = ExuParameters(
//+          JmpCnt = 1,
//+          AluCnt = 2,
//+          MulCnt = 0,
//+          MduCnt = 1,
//+          FmacCnt = 1,
//+          FmiscCnt = 1,
//+          FmiscDivSqrtCnt = 0,
//+          LduCnt = 2,
//+          StuCnt = 2
//+        ),
//+        icacheParameters = ICacheParameters(
//+          nSets = 64, // 16KB ICache
//+          tagECC = Some("parity"),
//+          dataECC = Some("parity"),
//+          replacer = Some("setplru"),
//+          nMissEntries = 2,
//+          nReleaseEntries = 1,
//+          nProbeEntries = 2,
//+          nPrefetchEntries = 2,
//+          nPrefBufferEntries = 32,
//+          hasPrefetch = true
//+        ),
//+        dcacheParametersOpt = Some(DCacheParameters(
//+          nSets = 64, // 32KB DCache
//+          nWays = 8,
//+          tagECC = Some("secded"),
//+          dataECC = Some("secded"),
//+          replacer = Some("setplru"),
//+          nMissEntries = 4,
//+          nProbeEntries = 4,
//+          nReleaseEntries = 8,
//+          nMaxPrefetchEntry = 2,
//+        )),
//+        EnableBPD = false, // disable TAGE
//+        EnableLoop = false,
//+        itlbParameters = TLBParameters(
//+          name = "itlb",
//+          fetchi = true,
//+          useDmode = false,
//+          normalReplacer = Some("plru"),
//+          superReplacer = Some("plru"),
//+          normalNWays = 4,
//+          normalNSets = 1,
//+          superNWays = 2
//+        ),
//+        ldtlbParameters = TLBParameters(
//+          name = "ldtlb",
//+          normalNSets = 16, // when da or sa
//+          normalNWays = 1, // when fa or sa
//+          normalAssociative = "sa",
//+          normalReplacer = Some("setplru"),
//+          superNWays = 4,
//+          normalAsVictim = true,
//+          partialStaticPMP = true,
//+          outsideRecvFlush = true,
//+          outReplace = false
//+        ),
//+        sttlbParameters = TLBParameters(
//+          name = "sttlb",
//+          normalNSets = 16, // when da or sa
//+          normalNWays = 1, // when fa or sa
//+          normalAssociative = "sa",
//+          normalReplacer = Some("setplru"),
//+          normalAsVictim = true,
//+          superNWays = 4,
//+          partialStaticPMP = true,
//+          outsideRecvFlush = true,
//+          outReplace = false
//+        ),
//+        pftlbParameters = TLBParameters(
//+          name = "pftlb",
//+          normalNSets = 16, // when da or sa
//+          normalNWays = 1, // when fa or sa
//+          normalAssociative = "sa",
//+          normalReplacer = Some("setplru"),
//+          normalAsVictim = true,
//+          superNWays = 4,
//+          partialStaticPMP = true,
//+          outsideRecvFlush = true,
//+          outReplace = false
//+        ),
//+        btlbParameters = TLBParameters(
//+          name = "btlb",
//+          normalNSets = 1,
//+          normalNWays = 8,
//+          superNWays = 2
//+        ),
//+        l2tlbParameters = L2TLBParameters(
//+          l1Size = 4,
//+          l2nSets = 4,
//+          l2nWays = 4,
//+          l3nSets = 4,
//+          l3nWays = 8,
//+          spSize = 2,
//+        ),
//+        L2CacheParamsOpt = Some(L2Param(
//+          name = "L2",
//+          ways = 8,
//+          sets = 128, // instead of 128
//+          echoField = Seq(huancun.DirtyField()),
//+          prefetch = None
//+        )),
//+        L2NBanks = 2,
//+        prefetcher = None // if L2 pf_recv_node does not exist, disable SMS prefetcher
//+      )
//+    )
//+    case SoCParamsKey =>
//+      val tiles = site(XSTileKey)
//+      up(SoCParamsKey).copy(
//+        L3CacheParamsOpt = Some(up(SoCParamsKey).L3CacheParamsOpt.get.copy(
//+          sets = 256,
//+          inclusive = false,
//+          clientCaches = tiles.map{ core =>
//+            val clientDirBytes = tiles.map{ t =>
//+              t.L2NBanks * t.L2CacheParamsOpt.map(_.toCacheParams.capacity).getOrElse(0)
//+            }.sum
//+            val l2params = core.L2CacheParamsOpt.get.toCacheParams
//+            l2params.copy(sets = 2 * clientDirBytes / core.L2NBanks / l2params.ways / 64) //this [2] means that L2NBanks = 2???
//           },
//           simulation = !site(DebugOptionsKey).FPGAPlatform,
//           prefetch = None
//@@ -227,6 +388,18 @@ class MinimalSimConfig(n: Int = 1) extends Config(
//   })
// )
// 
//+// Test config with no L3 cache?
//+class SuperMiniConfig(n: Int = 1) extends Config(
//+  new MinimalConfig(n).alter((site, here, up) => {
//+    case XSTileKey => up(XSTileKey).map( _.copy(
//+      L2CacheParamsOpt = None))
//+    case SoCParamsKey => up(SoCParamsKey).copy(
//+      L3CacheParamsOpt = None
//+    )
//+  })
//+)
//+
//+
// class WithNKBL1D(n: Int, ways: Int = 8) extends Config((site, here, up) => {
//   case XSTileKey =>
//     val sets = n * 1024 / ways / 64
module BankBinder(
  output         auto_in_a_ready,
  input          auto_in_a_valid,
  input  [2:0]   auto_in_a_bits_opcode,
  input  [2:0]   auto_in_a_bits_param,
  input  [2:0]   auto_in_a_bits_size,
  input  [3:0]   auto_in_a_bits_source,
  input  [35:0]  auto_in_a_bits_address,
  input  [31:0]  auto_in_a_bits_mask,
  input  [255:0] auto_in_a_bits_data,
  output         auto_in_c_ready,
  input          auto_in_c_valid,
  input  [2:0]   auto_in_c_bits_opcode,
  input  [2:0]   auto_in_c_bits_size,
  input  [3:0]   auto_in_c_bits_source,
  input  [35:0]  auto_in_c_bits_address,
  input  [255:0] auto_in_c_bits_data,
  input          auto_in_d_ready,
  output         auto_in_d_valid,
  output [2:0]   auto_in_d_bits_opcode,
  output [1:0]   auto_in_d_bits_param,
  output [2:0]   auto_in_d_bits_size,
  output [3:0]   auto_in_d_bits_source,
  output [2:0]   auto_in_d_bits_sink,
  output         auto_in_d_bits_denied,
  output [255:0] auto_in_d_bits_data,
  output         auto_in_e_ready,
  input          auto_in_e_valid,
  input  [2:0]   auto_in_e_bits_sink,
  input          auto_out_a_ready,
  output         auto_out_a_valid,
  output [2:0]   auto_out_a_bits_opcode,
  output [2:0]   auto_out_a_bits_param,
  output [2:0]   auto_out_a_bits_size,
  output [3:0]   auto_out_a_bits_source,
  output [35:0]  auto_out_a_bits_address,
  output [31:0]  auto_out_a_bits_mask,
  output [255:0] auto_out_a_bits_data,
  input          auto_out_c_ready,
  output         auto_out_c_valid,
  output [2:0]   auto_out_c_bits_opcode,
  output [2:0]   auto_out_c_bits_size,
  output [3:0]   auto_out_c_bits_source,
  output [35:0]  auto_out_c_bits_address,
  output [255:0] auto_out_c_bits_data,
  output         auto_out_d_ready,
  input          auto_out_d_valid,
  input  [2:0]   auto_out_d_bits_opcode,
  input  [1:0]   auto_out_d_bits_param,
  input  [2:0]   auto_out_d_bits_size,
  input  [3:0]   auto_out_d_bits_source,
  input  [2:0]   auto_out_d_bits_sink,
  input          auto_out_d_bits_denied,
  input  [255:0] auto_out_d_bits_data,
  input          auto_out_e_ready,
  output         auto_out_e_valid,
  output [2:0]   auto_out_e_bits_sink
);
  assign auto_in_a_ready = auto_out_a_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_c_ready = auto_out_c_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_valid = auto_out_d_valid; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_opcode = auto_out_d_bits_opcode; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_param = auto_out_d_bits_param; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_size = auto_out_d_bits_size; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_source = auto_out_d_bits_source; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_sink = auto_out_d_bits_sink; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_denied = auto_out_d_bits_denied; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_d_bits_data = auto_out_d_bits_data; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_in_e_ready = auto_out_e_ready; // @[Nodes.scala 1207:84 LazyModule.scala 311:12]
  assign auto_out_a_valid = auto_in_a_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_a_bits_data = auto_in_a_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_valid = auto_in_c_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_opcode = auto_in_c_bits_opcode; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_size = auto_in_c_bits_size; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_source = auto_in_c_bits_source; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_address = auto_in_c_bits_address; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_c_bits_data = auto_in_c_bits_data; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_d_ready = auto_in_d_ready; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_e_valid = auto_in_e_valid; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
  assign auto_out_e_bits_sink = auto_in_e_bits_sink; // @[Nodes.scala 1210:84 LazyModule.scala 309:16]
endmodule

