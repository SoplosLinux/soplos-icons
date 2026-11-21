#!/bin/sh
set -eu
DEST="${XDG_DATA_HOME:-$HOME/.local/share}/icons/Soplos"
if [ -f "$DEST/index.theme" ] && grep -q '^Name=Soplos Icons$' "$DEST/index.theme"; then
  rm -rf -- "$DEST"
  echo "Soplos Icons eliminado del usuario."
else
  echo "No se encontró una instalación de Soplos Icons en $DEST"
fi
