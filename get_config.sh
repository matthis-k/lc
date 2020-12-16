#!/bin/bash

rm -rf home root

echo "getting included folders and files"
dirs=()


for include in $(sed "s#~#$HOME#g;" included); do 
    if [ -d $include ]; then
        dirs+=" $include"
        dirs+=" $(fd --base-directory "$include" -td -a -H)"
    elif [ -f $include ]; then
        files+=" $include"
    fi
done

echo "copying folders and files"
for dir in $dirs; do
    if [[ "$dir" == $HOME* ]]; then
        new_dir="home${dir#$HOME}"
    else
        new_dir="root${dir}"
    fi

    mkdir -p $new_dir
    for file in $(fd -tf -d 1 -a -H --base-directory $dir); do
        cp $file "$new_dir/"
    done
done

echo "adding extra files"
for file in $files; do
    if [[ "$file" == $HOME* ]]; then
        file_dest="home${file#$HOME}"
    else
        file_dest="root${file}"
    fi
    mkdir -p $file_dest
    rmdir $file_dest
    cp $file $file_dest
done
