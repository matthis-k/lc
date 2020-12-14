#!/bin/bash

for package in $(cat packages) 
do
    yay -S $package --noconfirm
done
