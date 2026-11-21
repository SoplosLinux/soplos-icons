#!/bin/sh
set -eu
SRC="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
DEST="${XDG_DATA_HOME:-$HOME/.local/share}/icons/Soplos"
mkdir -p "$(dirname "$DEST")"
if [ "$SRC" = "$DEST" ]; then
  echo "Soplos Icons ya está en $DEST"
else
  if [ -e "$DEST" ]; then
    echo "El destino ya existe: $DEST" >&2
    echo "Elimínalo o muévelo antes de instalar una nueva versión." >&2
    exit 1
  fi
  cp -a "$SRC" "$DEST"
  echo "Instalado en: $DEST"
fi
if command -v gtk-update-icon-cache >/dev/null 2>&1; then
  gtk-update-icon-cache -f "$DEST" >/dev/null 2>&1 || true
fi
echo "Selecciona 'Soplos Icons' en los ajustes de iconos de KDE, GNOME o XFCE."
