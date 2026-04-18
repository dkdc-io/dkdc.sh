#!/usr/bin/env sh
set -eu

# dkdc-io-imessage installer — https://dkdc.sh/imessage-plugin/install.sh
# Usage: curl -LsSf https://dkdc.sh/imessage-plugin/install.sh | sh

if ! command -v cargo >/dev/null 2>&1; then
    echo "Installing rustup..."
    curl -LsSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable --no-modify-path
    # shellcheck disable=SC1091
    . "$HOME/.cargo/env"
fi

echo "Installing dkdc-io-imessage..."
cargo install dkdc-io-imessage

dkdc-io-imessage --version 2>/dev/null || echo "dkdc-io-imessage installed. add ~/.cargo/bin to your PATH if it isn't found."
