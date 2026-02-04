# XiangShan (nanhu-legacy-2024)

This branch is a legacy snapshot of the Nanhu-era XiangShan codebase with local 2024
config presets consolidated into a single repo.

## Origin and history

- Base upstream commit: ea2753202aa5c1546a273bb8a5de01a1faf4edaf
  (tagged here as `base-nanhu-ea275320`).
- History was rewritten to remove generated RTL/log artifacts
  (e.g. `*_sep_rtl`, `*.log`, and `*_sep_rtl.tar.gz`).
- Variant repos (e.g. XiangShan_1, XiangShan_Mar08) were consolidated here.

## Configs added

- `MyMinimalSmallConfig`: small core/caches, BPD/TAGE off; 64KB L2 and 64KB L3.
- `MyMinimalMidConfig`: mid-size core with larger TLBs, BPD on; 64KB L2 and 64KB L3.
- `NoL2Config`: L2 disabled; L3 connects to L1 client caches.
- `SuperMiniConfig`: based on `MinimalConfig` but without L3.

All configs live in `src/main/scala/top/Configs.scala`.

## RTL generation memory

`build.sc` currently uses:

```
override def forkArgs = Seq("-Xmx15G", "-Xss256m")
```

If RTL generation or Chisel elaboration OOMs, increase `-Xmx` (e.g. 24G or 30G)
before running `make verilog` or related scripts.

## Submodules

`coupledL2` and `huancun` are pinned to upstream commits to keep this branch
reproducible without custom forks. Initialize as usual:

```
git submodule update --init --recursive
```

## Original upstream README

See `ORIGINAL_README.md` for the original project documentation and links.
