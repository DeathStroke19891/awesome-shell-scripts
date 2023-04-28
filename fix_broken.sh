#!/bin/bash

set -e

broken=$(find ~/Projects -type l ! -exec test -e {} \; -print)
new_loc=$(find ~/Projects -type d -iname $(basename $broken) | head -n 1)
rm $broken
ln -s $new_loc $broken
