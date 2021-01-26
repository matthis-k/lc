#!/bin/bash


[[ -z $(pacman -Q paru) ]] && echo "paru is not installed, installing paru..." && ( git clone https://aur.archlinux.org/paru.git; cd paru; makepkg -si)

echo "updating system"
paru -Syu

for package in $(cat packages); do
    paru -S $package --noconfirm
    [ $package == 'rustup' ] && rustup default nightly && rustup toolchain add stable
done

sudo systemctl enable greetd nordvpnd preload
