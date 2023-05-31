#!/bin/zsh

set -e

a=$(echo "copy password\ngenerate password\ninsert password" | wofi -p "Select operation to be performed to be performed" -d)
if [[ $a == "" ]]; then
    exit
elif [[ $a == "copy password" ]]; then
    b=$(find $HOME/.password-store -iname "*.gpg" | hck -Ld'/' -I -f5- | hck -Ld'.' -f1 | wofi -p "Select the password to be copied" -d)
    if [[ $b == "" ]]; then
        exit
    fi
    pass show -c $b
    sleep 1
    notify-send "The password at $b has been copied to your clipboard"
elif [[ $a == "generate password" ]]; then
    b=$(wofi -p "Select the directory where the password has to be stored" -d)
    if [[ $b == "" ]]; then
        exit
    fi
    pass generate $b
    sleep 1
    pass show -c $b
    sleep 1
    notify-send "A password has been generated at $b and has been copied to your clipboard"
else
    b=$(wofi -p "Select the directory where the password has to be inserted" -d)
    if [[ $b == "" ]]; then
        exit
    fi
    pass insert $b
    sleep 1
    notify-send "A password has been inserted at $b"
fi
