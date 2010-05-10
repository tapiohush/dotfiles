#!/bin/bash
for file in .*; do if [ ! -d $file ]; then ln -s $HOME/dotfiles/$file ~; fi; done

