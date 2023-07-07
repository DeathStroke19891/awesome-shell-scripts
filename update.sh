#!/bin/zsh

paru -Syu
rustup update
cargo install-update -a
flutter upgrade --force
