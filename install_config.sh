#!/bin/bash

echo "do you want to run the pre configuration script? (y/n)" && read confirm && [[ $confirm == [Yy] ]] && ./pre_config_install.sh

echo "your current config will be lost! confirm? (y/n)"
read confirm && [[ $confirm == [Yy] ]] || exit 0 || unset 'confirm'

echo "deleting existing included directories"
for dir in $(sed 's#~#'$HOME'#g' included); do
    [ -d $dir ] && sudo rm -rf $dir
done

echo "setting up home"
for file in $(fd -tf -H --base-directory home); do
    mkdir -p $HOME/$(dirname $file)
    cp home/$file $HOME/$(dirname $file)
done

echo "setting up root"
for file in $(fd -tf -H --base-directory root); do
    sudo mkdir -p /$(dirname $file)
    sudo cp root/$file /$(dirname $file)
done

echo "do you want to run the post configuration script? (y/n)" && read confirm && [[ $confirm == [Yy] ]] && ./post_config_install.sh
