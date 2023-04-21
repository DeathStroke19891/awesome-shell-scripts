#!/bin/zsh

set -e

if [[ $DOOM == "true" ]]
then
    mv ~/.config/emacs ~/.config/emacs.doom
    mv ~/.config/emacs.bak ~/.config/emacs
    export DOOM="false"
    echo "Changed to naked state"
else
    echo "Already in naked state"
fi
