#!/bin/zsh

set -e 

files=(~/Pictures/Wallpapers/*)

randomfile=$(printf "%s\n" "${files[RANDOM % ${#files[@]}]}")

swww img $randomfile --resize fit
