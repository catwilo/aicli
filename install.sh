#!/usr/bin/env bash
# aicli — install entry point scripts and bootstrap config
set -euo pipefail
REPO=$(cd "$(dirname "$0")" && pwd)

echo "[aicli] chmod +x scripts..."
chmod +x "$REPO"/scripts/*.sh

CONFIG_DIR="$HOME/.config/aicli"
CONFIG_FILE="$CONFIG_DIR/config.yaml"
if [ ! -f "$CONFIG_FILE" ]; then
  mkdir -p "$CONFIG_DIR"
  cp "$REPO/config/config.example.yaml" "$CONFIG_FILE"
  echo "[aicli] config bootstrapped → $CONFIG_FILE"
else
  echo "[aicli] config already exists — skipped"
fi

echo "[aicli] done"
