#!/usr/bin/env sh
set -eu

# dkdc-md-cli installer — https://dkdc.sh/md-cli/install.sh
# Usage: curl -LsSf https://dkdc.sh/md-cli/install.sh | sh

if ! command -v uv &>/dev/null; then
    echo "Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

echo "Installing dkdc-md-cli..."
uv tool install --upgrade dkdc-md-cli
