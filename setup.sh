#!/bin/bash
# Created   : 2019-06-12 17:49:27

USER_CONFIG="$HOME/Library/Application Support/Code/User"
declare -a names=('settings.json' 'keybindings.json')

for name in "${names[@]}"; do
    echo $name
    ln -sf "$PWD/$name" "$USER_CONFIG/$name"
done
