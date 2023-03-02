#!/bin/bash
# This script installs st terminal emulator for arch

doas pacman -Sy
doas pacman -S --needed --noconfirm base-devel git
cd
git clone https://git.suckless.org/st
cd st
doas make clean install
echo 'st installed successfully!'
echo 'NOTE: st source code is located in your home folder.'
