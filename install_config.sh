#!/bin/bash

echo backing up current config
mv -v ~/.config ~/.config_backup
echo set up new config
cp -r .config ~

echo copying to /etc/...
for dir in $(ls etc)
do
    if [ -z "$(ls /etc/$dir)" ]; then
        sudo mv -v /etc/$dir /etc/$dir.backup
    fi
    sudo cp -r -v etc/$dir /etc/$dir
done

echo setting up mozilla wayland
if [ -z "$(cat /etc/environment | grep 'MOZILLA_ENABLE_FIREFOX=1')" ]; then
    sudo echo "MOZILLA_ENABLE_FIREFOX=1" >> /etc/environment
fi

echo enable nodic gtc theme
gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic"

echo enable nordvpn autoconnect
nordvpn set autoconnect enabled

