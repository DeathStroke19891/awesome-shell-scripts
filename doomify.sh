#!/bin/zsh

set -e

if [[ $DOOM == "false" ]]
then
    mv ~/.config/emacs ~/.config/emacs.bak
    mv ~/.config/emacs.doom ~/.config/emacs
    export DOOM="true"
    echo "Changed to doom state"
else
    echo "Already in doom state"
fi
