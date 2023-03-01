#!/bin/bash
# This script installs dwm for arch

doas pacman -S --needed --noconfirm base-devel git libxinerama
cd
git clone https://git.suckless.org/dmenu
cd dmenu
doas make clean install
echo 'dmenu installed successfully!'
echo 'NOTE: dmenu source code is located in your home folder.'
