#!/bin/bash
set -e

export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
sudo apt-get install -y xfce4 xfce4-goodies xrdp xorgxrdp dbus-x11 policykit-1

# RDP login korle XFCE session start hobe
echo "xfce4-session" > ~/.xsession

# xrdp er jonno required group membership
sudo adduser xrdp ssl-cert || true

sudo service dbus start
sudo service xrdp start

echo "=================================================="
echo "✅ Setup complete!"
echo "👉 Ekhon Codespace terminal e run koren: sudo passwd \$USER"
echo "   (eta RDP login password set korbe)"
echo "=================================================="
