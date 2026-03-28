#!/usr/bin/env sh
set -eu

# bookmarks installer — https://dkdc.sh/bookmarks/install.sh
# Usage: curl -LsSf https://dkdc.sh/bookmarks/install.sh | sh

if ! command -v uv &>/dev/null; then
    echo "Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

echo "Installing bookmarks..."
uv tool install --upgrade dkdc-bookmarks
