#!/usr/bin/env sh
set -eu

# dkdc-draw installer — https://dkdc.sh/draw/install.sh
# Usage: curl -LsSf https://dkdc.sh/draw/install.sh | sh

if ! command -v uv &>/dev/null; then
    echo "Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

echo "Installing dkdc-draw..."
uv tool install --upgrade dkdc-draw
