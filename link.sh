#!/bin/bash
set -euo pipefail

# Ensure ./srv exists
if [ ! -d ./srv ]; then
  echo "❌ ./srv directory not found in current path"
  exit 1
fi

# Remove existing /serv if it's a dir (not a symlink)
if [ -d /serv ] && [ ! -L /serv ]; then
  echo "⚠️ /serv already exists as a directory. Remove it first if you want a symlink."
  exit 1
fi

# Create symlink
sudo ln -s "$(pwd)/srv" /serv

echo "✅ Linked /serv → $(pwd)/srv"
