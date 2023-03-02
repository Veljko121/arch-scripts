#!/bin/bash
# This script installs dwm for arch

doas pacman -Sy
doas pacman -S --needed --noconfirm base-devel ttf-inconsolata xorg-server xorg-xinit git libxft
cd
git clone https://git.suckless.org/dwm
cd dwm
doas make clean install
cd
echo 'exec dwm' >> .xinitrc
echo 'dwm installed successfully!'
echo 'NOTE: dwm source code is located in your home folder.'
