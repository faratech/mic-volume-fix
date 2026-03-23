#!/bin/bash
set -e

# Build both Windows binaries using cargo-xwin (MSVC toolchain via xwin)
# Fixes the clang-cl symlink if stale, then builds x64 and ARM64

SYMLINK="$HOME/.cache/cargo-xwin/clang-cl"
if [ -e "$SYMLINK" ] && [ ! -L "$SYMLINK" -o "$(readlink "$SYMLINK")" != "$(which clang)" ]; then
    rm -f "$SYMLINK"
fi

cargo xwin build --release --target x86_64-pc-windows-msvc
cargo xwin build --release --target aarch64-pc-windows-msvc

OUT_DIR="${1:-/mnt/c/code}"
cp target/x86_64-pc-windows-msvc/release/mic_volume_fix.exe "$OUT_DIR/mic_volume_fix_x64.exe"
cp target/aarch64-pc-windows-msvc/release/mic_volume_fix.exe "$OUT_DIR/mic_volume_fix_arm64.exe"

echo "Built and copied to $OUT_DIR:"
ls -lh "$OUT_DIR/mic_volume_fix_x64.exe" "$OUT_DIR/mic_volume_fix_arm64.exe"
