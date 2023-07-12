#!/bin/zsh

if ["$(hyprctl activewindow -j | aq -r ".class")" == "steam"]; then
    xdotool getactivewindow windowunmap
else
    hyprctl dispatch killactive ""
fi
