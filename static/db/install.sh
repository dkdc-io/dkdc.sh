#!/usr/bin/env sh
set -eu

# dkdc-db installer — https://dkdc.sh/db/install.sh
# Usage: curl -LsSf https://dkdc.sh/db/install.sh | sh

if ! command -v uv &>/dev/null; then
    echo "Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

echo "Installing dkdc-db..."
uv tool install --upgrade dkdc-db
