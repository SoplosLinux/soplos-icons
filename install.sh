#!/bin/sh
set -eu
SRC="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
DEST="${XDG_DATA_HOME:-$HOME/.local/share}/icons/Soplos"
mkdir -p "$(dirname "$DEST")"
if [ "$SRC" = "$DEST" ]; then
  echo "Soplos Icons is already in $DEST"
else
  if [ -e "$DEST" ]; then
    echo "The destination already exists: $DEST" >&2
    echo "Remove it or move it before installing a new version." >&2
    exit 1
  fi
  # Only the theme: not the git history, the screenshots or these scripts.
  mkdir -p "$DEST"
  cp -a "$SRC/index.theme" "$SRC/scalable" "$SRC/symbolic" "$DEST/"
  echo "Installed in: $DEST"
fi
if command -v gtk-update-icon-cache >/dev/null 2>&1; then
  gtk-update-icon-cache -f "$DEST" >/dev/null 2>&1 || true
fi
echo "Select 'Soplos Icons' in the icon settings of KDE, GNOME or XFCE."
