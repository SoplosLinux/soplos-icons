#!/bin/sh
set -eu
DEST="${XDG_DATA_HOME:-$HOME/.local/share}/icons/Soplos"
if [ -f "$DEST/index.theme" ] && grep -q '^Name=Soplos Icons$' "$DEST/index.theme"; then
  rm -rf -- "$DEST"
  echo "Soplos Icons removed from the user."
else
  echo "No installation of Soplos Icons found in $DEST"
fi
