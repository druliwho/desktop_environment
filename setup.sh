#!/bin/bash
set -e

pacman -S --noconfirm xorg-server lightdm lightdm-gtk-greeter openbox picom dmenu
systemctl enable lightdm.service

cp -f autostart /etc/xdg/openbox/autostart
cp -f rc.xml /etc/xdg/openbox/rc.xml
cp -f lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
