#!/bin/bash

./before_config_install.sh

echo "your current config will be lost! confirm? (y/n)"
read confirm
if ! [ "$confirm" == "y" ]; then
    exit 0
fi
unset 'confirm'

echo "creating all nesseccary folders"
for dir in $(fd --base-directory home -td -H); do
    mkdir -p "a$HOME/$dir"
done

for dir in $(fd --base-directory root -td -H); do
    sudo mkdir -p "/$dir"
done

echo "copying files"
for file in $(fd -tf -H --base-directory home); do
    cp "home/$file" "$HOME/$file"
done
for file in $(fd -tf -H --base-directory root); do
    sudo cp "root/$file" "/$file"
done

echo "do you want to run the post configuration script? (y/n)"
read confirm
if ! [ "$confirm" == "y" ]; then
    exit 0
fi
unset 'confirm'


./after_config_install.sh
