#!/usr/bin/env sh
set -eu

# dkdc-links installer — https://dkdc.sh/dkdc-links/install.sh
# Usage: curl -LsSf https://dkdc.sh/dkdc-links/install.sh | sh

if ! command -v uv &>/dev/null; then
    echo "Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

echo "Installing dkdc-links..."
uv tool install --upgrade dkdc-links
