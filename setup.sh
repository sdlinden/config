#!/bin/bash

#############
# VARIABLES #
#############

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



########
# MAIN #
########

[ ! -d ${WORKDIR} ] && mkdir -p ${WORKDIR}
[ ! -d ${BGDIR} ] && mkdir -p ${BGDIR}
[ ! -d ${ICONDIR} ] && mkdir -p ${ICONDIR}
[ ! -d ${THEMEDIR} ] && mkdir -p ${THEMEDIR}


## Enabling the NON-Free repository and installing latest updates
sh ./pkgUpdates.sh

## Installing Extra Packages
sh ./pkgInstalls.sh

## Setup Git
sh ./setupGit.sh

## Getting the configuration files from github.com
sh ./getGitConfigFiles.sh

## Installing GNOME Extensions
sh ./pkgExtInstalls.sh

## Installing the Synology Drive Client
sh ./pkgSynologyDrive.sh

## Removing unnecessary packages
sh ./pkgRemoves.sh

## Getting themes
sh ./getThemes.sh

## Setup the GNOME Extensions
sh ./setupGnomeExt.sh

## Setup desktop
sh ./setupDesktop.sh

## Setup Terminal
sh ./setupTerminal.sh


