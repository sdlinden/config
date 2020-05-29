#!/bin/bash

PROJDIR=~/projects
WORKDIR=${PROJDIR}/debian-config
BGDIR=~/.wallpaper
ICONDIR=~/.icons
THEMEDIR=~/.themes

cd ${WORKDIR}
wget https://cdist2.perforce.com/perforce/r20.1/bin.linux26x86_64/p4v.tgz
tar xvzf p4v.tgz
sudo rsync -av p4v-*/. /usr/local/

#cd /usr/local
#sudo tar xvzf ${WORKDIR}/p4v.tgz

git config --global user.name "Scott Linden"
git config --global user.email "sdlinden@gmail.com"
git config --global core.editor "/usr/bin/vim"

git config --global merge.tool p4merge
git config --global mergetool.p4merge.path "/usr/local/bin/p4merge" 
git config --global mergetool.prompt false
git config --global diff.tool p4merge
git config --global difftool.p4merge.path "/usr/local/bin/p4merge"
git config --global difftool.prompt false

git config --global --list
