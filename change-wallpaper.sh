#!/bin/zsh

set -e 


file=$1

if [[ $file == "" ]]
    then
    files=(~/Pictures/Wallpapers/*)
    randomfile=$(printf "%s\n" "${files[RANDOM % ${#files[@]}]}")

    wal -i $randomfile
    swww img $randomfile --resize fit
    else
    wal -i $file
    swww img $file --resize fit 1> /dev/null
fi
