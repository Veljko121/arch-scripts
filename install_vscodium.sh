#!/bin/bash
# This script installs VSCodium on Arch

doas pacman -S --needed --noconfirm base-devel git
cd
git clone https://AUR.archlinux.org/vscodium-bin.git
cd vscodium-bin
makepkg -s
doas pacman -U --needed --noconfirm vscodium-bin*pkg*
echo "VSCodium successfully installed!"
echo "NOTE: VSCodium directory is located in your home folder."
