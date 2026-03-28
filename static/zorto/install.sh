#!/usr/bin/env sh
set -eu

# zorto installer — https://dkdc.sh/zorto/install.sh
# Usage: curl -LsSf https://dkdc.sh/zorto/install.sh | sh

if ! command -v uv &>/dev/null; then
    echo "Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

echo "Installing zorto..."
uv tool install --upgrade zorto
