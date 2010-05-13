#!/bin/bash

for file in .*; do
    if [ ! -d $file ]; then
        if [ -e $HOME/$file ]; then
            mv $HOME/$file $HOME/.dot.bkup.$file
        fi
        ln -si $HOME/dotfiles/$file $HOME
    fi
done
        
