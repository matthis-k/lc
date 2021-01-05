#!/bin/bash

for package in $(cat packages); do
    yay -S $package --noconfirm
done

ssudo systemctl enable greetd nordvpnd preload
