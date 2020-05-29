#!/bin/bash

#############
# VARIABLES #
#############

DOWNLOADS="~/Downloads"
PROJDIR="~/projects"
WORKDIR="${PROJDIR}/config"
BGDIR="~/.backgrounds"
ICONDIR="~/.icons"
THEMEDIR="~/.themes"
PROJECT="config"

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

function setupGit {
  cd ${DOWNLOADS}
  wget https://cdist2.perforce.com/perforce/r20.1/bin.linux26x86_64/p4v.tgz
  tar xvzf p4v.tgz
  sudo rsync -av p4v-*/. /usr/local/

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
}

function getGitConfigFIles {
  cd ${PROJDIR}
  git clone https://github.com/sdlinden/${PROJECT}.git
}

function getThemes {
  ## Install the Yaru-Colors theme
  cd ${PROJDIR}
  git clone https://github.com/Jannomag/Yaru-Colors.git

  cd ${PROJDIR}/Yaru-Colors
  cp -rp Wallpapers/* ${BGDIR}
  cp -rp Icons/* ${ICONDIR}/
  cp -rp Themes/* ${THEMEDIR}

  ## Install Cloudy-Light-Grey theme
  cd ${THEMDIR}
  tar xvf ${WORKDIR}/Cloudy-Light-Grey.tar.xz
}

function setupGnomeExt {
  # Caffeine
  gnome-shell-extension-tool -e caffeine@patapon.info

  # Dash To Dock
  gnome-shell-extension-tool -e dash-to-dock@micxgx.gmail.com
  gsettings set org.gnome.shell.extensions.dash-to-dock autohide 'false'
  gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity '.35'
  gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-color '#9C9C9C'
  gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-border-color '#9C9C9C'
  gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-shrink 'true'
  gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size '24'
  gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed 'true'
  gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
  gsettings set org.gnome.shell.extensions.dash-to-dock intellihide 'false'
  gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top 'true'
  gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'


  # Desktop Icons
  gnome-shell-extension-tool -e desktop-icons@csoriano

  # Drive Menu
  gnome-shell-extension-tool -e drive-menu@gnome-shell-extensions.gcampax.github.com

  # Open Weather
  gnome-shell-extension-tool -e openweather-extension@jenslody.de
  gsettings set org.gnome.shell.extensions.openweather city '42.7944184,-96.1653015>Le Mars, Plymouth County, Iowa, 51031, United States of America >-1'
  gsettings set org.gnome.shell.extensions.openweather days-forcast '7'
  gsettings set org.gnome.shell.extensions.openweather decimal-places '1'
  gsettings set org.gnome.shell.extensions.openweather position-in-panel 'center'
  gsettings set org.gnome.shell.extensions.openweather pressure-unit 'inHg'
  gsettings set org.gnome.shell.extensions.openweather show-text-in-panel 'true'
  gsettings set org.gnome.shell.extensions.openweather unit 'fahrenheit'
  gsettings set org.gnome.shell.extensions.openweather wind-direction 'true'
  gsettings set org.gnome.shell.extensions.openweather wind-speed-unit 'mph'

  # Show IP
  #gnome-shell-extension-tool -e show-ip@sgaraud.github.com
  #gsettings set org.gnome.shell.extensions.show-ip public 'true'

  # Top Icons Plus
  gnome-shell-extension-tool -e TopIcons@phocean.net
  gsettings set org.gnome.shell.extensions.topicons icon-size '18'
  gsettings set org.gnome.shell.extensions.topicons tray-pos 'right'

  # Ubuntu App Indicator
  #gnome-shell-extension-tool -e ubuntu-appindicators@ubuntu.com

  #User Shell Theme
  gnome-shell-extension-tool -e user-theme@gnome-shell-extensions.gcampax.github.com
  gsettings set org.gnome.shell.extensions.user-theme name 'Yaru-Grey-dark'
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
setupGit

## Getting the configuration files from github.com
getGitConfigFiles

## Installing GNOME Extensions
pkgExtInstalls

## Installing the Synology Drive Client
pkgSynologyDrive

## Removing unnecessary packages
pkgRemoves

## Getting themes
getThemes

## Setup the GNOME Extensions
setupGnomeExt

## Setup desktop
sh ./setupDesktop.sh

## Setup Terminal
sh ./setupTerminal.sh


