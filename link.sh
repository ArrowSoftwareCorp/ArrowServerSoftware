#!/bin/bash
set -euo pipefail

# Remove existing /srv if it's a dir (be careful!)
if [ -d /srv ] && [ ! -L /srv ]; then
  echo "⚠️ /srv already exists as a directory. Remove it first if you want a symlink."
  exit 1
fi

# Create symlink
sudo ln -s "$(pwd)/srv" /srv

echo "✅ Linked /srv → $(pwd)/srv"
