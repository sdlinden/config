#!/bin/bash

## Installing the Synology Drive Client
cd ~/Downloads
wget https://global.download.synology.com/download/Tools/SynologyDriveClient/2.0.2-11078/Ubuntu/Installer/x86_64/synology-drive-client-11078.x86_64.deb
sudo apt -y install ./synology-drive-client-11078.x86_64.deb
