#!/bin/zsh

set -e
export XDG_SCREENSHOTS_DIR="/home/parzival/Pictures/Screenshots/"
a=$(echo "area\nactive\nscreen" | wofi -p "Select type of screenshot to be taken" -d)
if [[ $a == "" ]]; then
    exit
else
    sleep 1
    grimblast save $a
fi
