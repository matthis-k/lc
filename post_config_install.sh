#!/bin/bash


echo setting up mozilla wayland
if [ -z "$(cat /etc/environment | grep 'MOZILLA_ENABLE_FIREFOX=1')" ]; then
    sudo echo "MOZILLA_ENABLE_FIREFOX=1" >> /etc/environment
fi

echo enable nodic gtc theme
gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic"

echo enable nordvpn autoconnect
nordvpn set autoconnect enabled

echo "set up firefox userChrome.css"
dest=$(fd -td -a --base-directory ~/.mozilla/firefox/ default-release)
ln -s ~/.config/chrome $dest'/chrome'
