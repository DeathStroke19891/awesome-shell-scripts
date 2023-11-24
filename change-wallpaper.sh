#!/bin/zsh

set -e 

file=$1

files=(~/Pictures/Wallpapers/*)

if [[ $file == "" ]]
then
    while [ true ]
    do
        random=$(awk 'BEGIN { srand(); print int(1 + rand() * 100)}')
        randomfile=$(printf "%s\n" "${files[$random % ${#files[@]}]}")
        wal -i $randomfile
        swww img $randomfile --resize fit
        sleep 300
    done
else
    wal -i $file
    swww img $file --resize fit 1> /dev/null
fi
