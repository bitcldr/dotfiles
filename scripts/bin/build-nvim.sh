#!/usr/bin/env bash

set -euo pipefail

NVIM_DIR="$HOME/Projects/neovim"

if [ ! -d "$NVIM_DIR" ]; then
  echo "error: neovim repo not found at $NVIM_DIR"
  exit 1
fi

cd "$NVIM_DIR"
git pull
sudo make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
