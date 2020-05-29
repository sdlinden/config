#!/bin/bash

## Setting the desktop background
sudo cp ~/projects/debian-config/WaterDropsOnGrey.jpeg /usr/share/backgrounds/

## Setup desktop
gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/WaterDropsOnGrey.jpeg
gsettings set org.gnome.desktop.background picture-options 'zoom'
gsettings set org.gnome.desktop.screensaver picture-uri file:///usr/share/backgrounds/WaterDropsOnGrey.jpeg
gsettings set org.gnome.desktop.screensaver picture-options 'zoom'

gsettings set org.gnome.desktop.background show-desktop-icons 'true'

gsettings set org.gnome.desktop.datetime automatic-timezone 'true'

gsettings set org.gnome.desktop.interface clock-format '12h'
gsettings set org.gnome.desktop.interface clock-show-date 'true'
gsettings set org.gnome.desktop.interface clock-show-seconds 'true'
gsettings set org.gnome.desktop.interface show-battery-percentage 'true'

gsettings set org.gnome.desktop.peripherals.mouse natural-scroll 'true'

gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
gsettings set org.gnome.desktop.wm.preferences theme 'Adwaita'

#gsettings set org.gnome.GWeather default-location '','KLRJ',nothing
#gsettings set org.gnome.GWeather pressure-unit 'inch-hg'
#gsettings set org.gnome.GWeather speed-unit 'mph'
#gsettings set org.gnome.GWeather temperature-unit 'fahrenheit'

gsettings set org.gnome.desktop.interface gtk-theme "Cloudy-Light-Grey"
gsettings set org.gnome.desktop.interface icon-theme 'Yaru-Grey'
gsettings set org.gnome.desktop.interface cursor-theme 'Yaru-Grey'

