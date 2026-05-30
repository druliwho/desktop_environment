#!/bin/bash
set -e

sudo pacman -S --noconfirm xorg lightdm lightdm-gtk-greeter openbox picom dmenu
sudo systemctl enable lightdm

mkdir -p ~/.config/openbox
cp -f rc.xml ~/.config/openbox/rc.xml
cp -f autostart ~./config/openbox/autostart

sudo cp -f lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
