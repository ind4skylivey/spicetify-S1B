#!/usr/bin/env bash
set -euo pipefail

# spicetify-S1B setup script
# Installs spicetify CLI and applies the text theme with CyberpunkPurple scheme

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SPICETIFY_CONFIG_DIR="${HOME}/.config/spicetify"
SPICETIFY_BIN_DIR="${HOME}/.spicetify"

echo "==> Installing spicetify CLI..."
curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh

echo "==> Copying config..."
mkdir -p "${SPICETIFY_CONFIG_DIR}"
cp "${REPO_DIR}/config-xpui.ini" "${SPICETIFY_CONFIG_DIR}/config-xpui.ini"

echo "==> Copying CyberpunkPurple color scheme into text theme..."
mkdir -p "${SPICETIFY_CONFIG_DIR}/Themes/text"
cp "${REPO_DIR}/Themes/text/color.ini" "${SPICETIFY_CONFIG_DIR}/Themes/text/color.ini"

echo "==> Applying spicetify..."
export PATH="${SPICETIFY_BIN_DIR}:${PATH}"
spicetify backup
spicetify apply

echo ""
echo "==> Done! Restart Spotify to see the changes."
echo "    If spicetify is not in your PATH, add this to your shell rc:"
echo "    export PATH=\"\$HOME/.spicetify:\$PATH\""
