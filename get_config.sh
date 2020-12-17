#!/bin/bash

rm -rf home root

echo "getting included files"
files=()
for include in $(sed 's#~#'$HOME'#g;' included); do 
    [ -d $include ] && files+=" $(fd --base-directory "$include" -tf -a -H)"
    [ -f $include ] && files+=" $include"; 
done

echo "copying files"
for file in $files; do
    [[ "$file" == $HOME* ]] && file_dest="home${file#$HOME}" || file_dest="root${file}"
    mkdir -p $(dirname $file_dest)
    cp $file $(dirname $file_dest)
done
