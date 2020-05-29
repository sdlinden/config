#!/bin/bash

#############
# VARIABLES #
#############

DOWNLOADS=~/Downloads
PROJDIR=~/projects
WORKDIR=${PROJDIR}/config
BGDIR=~/.backgrounds
ICONDIR=~/.icons
THEMEDIR=~/.themes

#############
# FUNCTIONS #
#############

function addRepos {
  sudo apt-add-repository non-free
 }

function pkgUpdates {
  sudo apt update
  sudo apt -y upgrade
}

function pkgInstalls {
  sudo apt -y install chromium \
	  curl \
	  gimp \
	  git \ 
	  gnome-gmail
	  gnome-tweaks \
	  gnucash \
	  libaio1 \
	  neofetch htop \
	  nmon \
	  numlockx \
	  powertop \
	  rsync \
	  solaar \
	  tlp \
	  tlp-rdw \
	  vim \
	  vlc \
	  wget \
	  zsh 
}

function pkgExtInstalls {
  sudo apt -y install chrome-gnome-shell \
	  gnome-shell-extension-caffeine \
	  gnome-shell-extension-dashtodock \
	  gnome-shell-extension-desktop-icons \
	  gnome-shell-extension-mediaplayer \
	  gnome-shell-extension-show-ip \
	  gnome-shell-extension-top-icons-plus \
	  gnome-shell-extension-weather
}

function pkgRemoves {
  sudo apt -y remove evolution \
	  mlterm \
	  mlterm-common \
	  mlterm-tools \
	  thunderbird \
	  xiterm+thai

  sudo apt -y autoremove
}

function pkgSynologyDrive {
  cd ${DOWNLOADS}
  wget https://global.download.synology.com/download/Tools/SynologyDriveClient/2.0.2-11078/Ubuntu/Installer/x86_64/synology-drive-client-11078.x86_64.deb

  sudo apt -y install ${DOWNLOADS}synology-drive-client-11078.x86_64.deb
}

########
# MAIN #
########

[ ! -d ${WORKDIR} ] && mkdir -p ${WORKDIR}
[ ! -d ${BGDIR} ] && mkdir -p ${BGDIR}
[ ! -d ${ICONDIR} ] && mkdir -p ${ICONDIR}
[ ! -d ${THEMEDIR} ] && mkdir -p ${THEMEDIR}


## Enabling the NON-Free repository and installing latest updates
pkgUpdates

## Installing Extra Packages
pkgInstalls

## Setup Git
sh ./setupGit.sh

## Getting the configuration files from github.com
sh ./getGitConfigFiles.sh

## Installing GNOME Extensions
pkgExtInstalls

## Installing the Synology Drive Client
pkgSynologyDrive

## Removing unnecessary packages
pkgRemoves

## Getting themes
sh ./getThemes.sh

## Setup the GNOME Extensions
sh ./setupGnomeExt.sh

## Setup desktop
sh ./setupDesktop.sh

## Setup Terminal
sh ./setupTerminal.sh


