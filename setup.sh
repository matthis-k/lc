#!/bin/bash

if [ $1 = '-p' ] || [ $2 = '-p' ] || [ $# = 0 ]; then
    echo starting installation of neccessary programs

    echo updating...
    sudo pacman -Syu --noconfirm

    echo install yay...
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay

    echo installing rust...
    yay -S rustup --noconfirm

    echo installing rust toolchains...
    rustup default nightly
    rustup toolchain add stable

    echo installing a lot of apps...
    yay -S patch autorecon-git npm rustup --noconfirm
    yay -R xorg-server xorg-server-common --noconfirm
    yay -S xorg-server-xwayland-hidpi-git --noconfirm
    yay -S bat dust fd ripgrep hyperfine exa procs tokei --noconfirm
    yay -S nerd-fonts-fira-code ttf-font-awesome nordic-theme-git --noconfirm
    yay -S greetd-git greetd-gtkgreet-git wlogout-git waybar wofi alacritty spotify-tui nordvpn figlet bitwarden-bin preload firefox neovim neovim-plug lazygit --noconfirm

    #echo installing oh-my-fish...
    #curl -L https://get.oh-my.fish | fish

    echo installation complete
fi


if [ $1 = '-c' ] || [ $2 = '-c' ] || [ $# = 0 ]; then

    echo set git email and name...
    git config --global user.email "matthis.kaelble@gmail.com"
    git config --global user.name "Matthis K�lble"

    echo set gtk theme to nordic...
    gsettings set org.gnome.desktop.interface gtk-theme Nordic
    gsettings set org.gnome.desktop.wm.preferences theme Nordic

    #echo setting omf theme...
    #fish -c 'omf install agnoster'
    #fish -c 'omf theme agnoster'
    #fish -c 'omf install chain'
    #set $fish_greeting=

    if [ -z $(cat /etc/environment | grep "MOZ_ENABLE_WAYLAND=1") ]; then
        echo enable firefox wayland
        echo "MOZ_ENABLE_WAYLAND=1" > tmp
        cat /etc/environment tmp > tmp2
        sudo mv tmp2 /etc/environment
        rm tmp
    fi

    echo setting up greetd...
    sudo cp -r etc/greetd /etc

    echo enable services...
    sudo systemctl enable greetd
    sudo systemctl enable nordvpnd

    echo configuration finished 
fi
