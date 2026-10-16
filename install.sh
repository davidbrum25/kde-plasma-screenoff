#!/bin/bash
# Installs the script and app entry for the current user.
set -e
mkdir -p ~/.local/bin ~/.local/share/applications
install -m 755 apagar-pantallas ~/.local/bin/apagar-pantallas
sed "s|^Exec=.*|Exec=$HOME/.local/bin/apagar-pantallas|" apagar-pantallas.desktop > ~/.local/share/applications/apagar-pantallas.desktop
kbuildsycoca6 >/dev/null 2>&1 || true
echo "Installed. Assign a hotkey in System Settings > Keyboard > Shortcuts (search 'Apagar pantallas')."
