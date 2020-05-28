#!/bin/bash

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

