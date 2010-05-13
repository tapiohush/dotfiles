#!/bin/bash

for file in .*; do 
	if [ ! -d $file ]; then 
		if [ ! -e $HOME/$file ]; then
			ln -s $HOME/dotfiles/$file $HOME;
		else 
			print "$HOME/$file exists. Skipping";
			continue;
		fi
	fi
done

