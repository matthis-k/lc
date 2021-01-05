#!/bin/bash

echo "Do you want to install required packages? (y/n)" && read confirm &&[[ $confirm == [Yy] ]] && ./install_packages.sh

