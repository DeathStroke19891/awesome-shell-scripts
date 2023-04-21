#!/bin/zsh

if [[ $DOOM == "true" ]]
then
    . ~/shell-scripts/undoomify.sh
else
    . ~/shell-scripts/doomify.sh
fi
