#!/bin/bash

## Installing GNOME Extensions

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
gnome-shell-extension-tool -e show-ip@sgaraud.github.com
gsettings set org.gnome.shell.extensions.show-ip public 'true'

# Top Icons Plus
gnome-shell-extension-tool -e TopIcons@phocean.net
gsettings set org.gnome.shell.extensions.topicons icon-size '18'
gsettings set org.gnome.shell.extensions.topicons tray-pos 'right'

# Ubuntu App Indicator
#gnome-shell-extension-tool -e ubuntu-appindicators@ubuntu.com

#User Shell Theme
gnome-shell-extension-tool -e user-theme@gnome-shell-extensions.gcampax.github.com
gsettings set org.gnome.shell.extensions.user-theme name 'Yaru-Grey-dark'
