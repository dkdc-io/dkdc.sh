#!/usr/bin/env sh
set -eu

# zorto installer — https://dkdc.sh/zorto/install.sh
# Usage: curl -LsSf https://dkdc.sh/zorto/install.sh | sh

if ! command -v uv >/dev/null 2>&1; then
    echo "Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

echo "Installing zorto..."
uv tool install --upgrade zorto

zorto --version 2>/dev/null || echo "zorto installed. add ~/.local/bin to your PATH if 'zorto' isn't found."
