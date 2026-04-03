#!/usr/bin/env sh
set -eu

# lm installer — https://dkdc.sh/lm/install.sh
# Usage: curl -LsSf https://dkdc.sh/lm/install.sh | sh

if ! command -v uv &>/dev/null; then
    echo "Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

echo "Installing lm..."
uv tool install --upgrade dkdc-lm
