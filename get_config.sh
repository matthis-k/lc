#!/bin/bash

rm -rf config etc
location=$(pwd)

echo creating folder structure
# get all folders/files, get only those in included, remove those in excluded
folders=$(
    cd ~/.config
    included_formatted=$(sed ':a;N;$!ba;s/\n/|/g' $location/included)
    excluded_formatted=$(sed ':a;N;$!ba;s/\n/|/g' $location/excluded)
    echo "$(fd -td | rg $included_formatted | rg -v $excluded_formatted)"
)
files=$(
    cd ~/.config
    included_formatted=$(sed ':a;N;$!ba;s/\n/|/g' $location/included)
    excluded_formatted=$(sed ':a;N;$!ba;s/\n/|/g' $location/excluded)
    # if you want to include all files in ~/.config uncomment this line and comment the other echo
    #echo "$(fd -tf | rg $included_formatted | rg -v $excluded_formatted) $(fd -tf | rg -v /)"
    echo "$(fd -tf | rg $included_formatted | rg -v $excluded_formatted)"
)

for dir in $folders
do
    mkdir -p config/$dir
done

echo copying files from ~/.config
for file in $files 
do 
    cp ~/.config/$file config/$file
done

folders=$(
    cd /etc
    included_formatted=$(sed ':a;N;$!ba;s/\n/|/g' $location/included)
    excluded_formatted=$(sed ':a;N;$!ba;s/\n/|/g' $location/excluded)
    echo "$(fd -td | rg $included_formatted | rg -v $excluded_formatted)"
)

files=$(
    cd /etc
    included_formatted=$(sed ':a;N;$!ba;s/\n/|/g' $location/included)
    excluded_formatted=$(sed ':a;N;$!ba;s/\n/|/g' $location/excluded)
    echo "$(fd -tf -a | rg $included_formatted | rg -v $excluded_formatted)"
)

for dir in $folders
do
    echo $folders
    mkdir -p etc/$dir
done
echo
echo
echo copying files from /etc/
for file in $files 
do 
    echo $file
    #cp /etc/$file etc/$file
done
