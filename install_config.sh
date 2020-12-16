#!/bin/bash

./before_config_install.sh

echo "your current config will be lost! confirm? (y/n)"
read confirm
if ! [ "$confirm" == "y" ]; then
    exit 1
fi
unset 'confirm'

echo copying...
for src in $(fd --base-directory home -d 1 -Ha); do
    cp -r $src $HOME
done

for src in $(fd --base-directory root -d 1 -Ha); do
    sudo cp -r $src /
done

echo "do you want to run the post configuration script? (y/n)"
read confirm
if ! [ "$confirm" == "y" ]; then
    exit 1
fi
unset 'confirm'


./after_config_install.sh
