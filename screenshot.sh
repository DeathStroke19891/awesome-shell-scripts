#!/bin/zsh

export XDG_SCREENSHOTS_DIR="/home/parzival/Screenshots/"
a=$(echo "area\nactive\nscreen" | wofi -p "Select type of screenshot to be taken" -d)
sleep 1
grimblast save $a
