#!/bin/bash
# This script installs VSCodium on Arch

doas pacman -S --needed --noconfirm base-devel git
cd
git clone https://AUR.archlinux.org/yay-bin.git
cd yay-bin/
makepkg -s
doas pacman -U --needed --noconfirm yay-bin*pkg*
echo "yay successfully installed!"
echo "NOTE: yay directory is located in your home folder."
