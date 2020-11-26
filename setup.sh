#!/bin/bash

# update
sudo pacman -Syu --noconfirm

git config --global user.email "matthis.kaelble@gmail.com"
git config --global user.name "Matthis Kälble"

echo "installing yay"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
echo "finished installing yay"

yay -S patch autorecon-git npm rustup --noconfirm
yay -S xorg-server-xwayland-hidpi-git --force --noconfirm
rustup default nightly
rustup toolchain add stable
yay -S bat dust fd ripgrep hyperfine exa procs tokei --noconfirm
yay -S nerd-fonts-fira-code ttf-font-awesome nordic-theme-git --noconfirm
yay -S wlogout-git waybar wofi alacritty spotify-tui nordvpn figlet bitwarden-bin preload firefox neovim neovim-plug lazygit --noconfirm

gsettings set org.gnome.desktop.interface gtk-theme Nordic
gsettings set org.gnome.desktop.wm.preferences theme Nordic

sudo systemctl enable nordvpnd
sudo systemctl start nordvpnd

echo "installing oh-my-fish"
curl -L https://get.oh-my.fish | fish
omf install agnoster
omf theme agnoster
set $fish_greeting=
echo "fish installed sucsessfully"

echo "MOZ_ENABLE_WAYLAND=1" > tmp
cat /etc/environment tmp > tmp2
sudo mv tmp2 /etc/environment
rm tmp
