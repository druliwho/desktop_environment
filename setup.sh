#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

apt install -y xorg lightdm lightdm-gtk-greeter openbox picom rofi
systemctl enable lightdm.service

cp -f autostart /etc/xdg/openbox/autostart
cp -f rc.xml /etc/xdg/openbox/rc.xml
cp -f lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
cp -f picom.conf /etc/xdg/picom.conf

cd /
rm -rf "$SCRIPT_DIR"
