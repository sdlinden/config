#!/bin/bash

## Get the Powerline fonts
cd ~/projects
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh

## Importing GNOME-Terminal profile
dconf load /org/gnome/terminal/legacy/profiles:/ < ~/projects/debian-config/gnome-terminal-profiles.dconf

## Download and setup zsh and oh-my-zsh
cd ~/projects
git clone https://github.com/ohmyzsh/ohmyzsh.git
cd ohmyzsh/tools
echo "Y" | ./install.sh
chsh -s "`which zsh`"

cp ~/projects/debian-config/.zshrc ~/


