#!/bin/bash

PROJDIR=~/projects
WORKDIR=${PROJDIR}/debian-config
BGDIR=~/.wallpaper
ICONDIR=~/.icons
THEMEDIR=~/.themes

[ ! -d ${BGDIR} ] && mkdir -p ${BGDIR}
[ ! -d ${ICONDIR} ] && mkdir -p ${ICONDIR}
[ ! -d ${THEMEDIR} ] && mkdir -p ${THEMEDIR}

## Downloading and installing the Yaru-Colors themes
#cd ${PROJDIR}
#git clone https://github.com/Jannomag/Yaru-Colors.git

cd ${WORKDIR}
git clone https://github.com/Jannomag/Yaru-Colors.git
cd ${WORKDIR}/Yaru-Colors
cp -rp Wallpapers/* ${BGDIR}
cp -rp Icons/* ${ICONDIR}/
cp -rp Themes/* ${THEMEDIR}

## Install Cloudy-Light-Grey theme
cd ${THEMDIR}
tar xvf ${WORKDIR}/Cloudy-Light-Grey.tar.xz
