#!/bin/bash

mv -v ~/.config ~/.config_backup
cp -v .config ~

for file in $(ls etc)
do
    if [ -z $(ls /etc/$file ] then
        sudo mv -v /etc/$file /etc/$file.backup
    fi
    sudo cp -v etc/$file /etc/$file
done
