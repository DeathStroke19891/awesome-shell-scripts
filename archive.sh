#!/bin/bash

path2=$(pwd | sed 's/.*Projects.*/true/g')
path=$(pwd | sed 's/Projects/Projects\/Archive/g')
if [[ $path2 == "true" ]]; then
    mkdir -p $path
    mv $1 $path
    if [[ $(find ~/Projects -type l ! -exec test -e {} \; -print) == "" ]]; then
        echo "No broken links"
    else
        . $HOME/shell-scripts/fix_broken.sh
    fi
else
    echo "Not in project directory"
fi
