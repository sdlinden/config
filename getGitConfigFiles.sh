#!/bin/bash

## Getting the configuration files from github.com
set -x

[ ! -d ~/projects ] && mkdir ~/projects
cd ~/projects
git clone https://github.com/sdlinden/debian-config.git
