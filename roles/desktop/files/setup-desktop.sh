#!/bin/bash

PID=$(pgrep -f 'gnome-session' | head -n1)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)

# setup keybindings
gsettings set org.cinnamon.desktop.keybindings.wm maximize "['<Alt><Super>Up']"
gsettings set org.cinnamon.desktop.keybindings.wm unmaximize "['<Alt><Super>Down']"
gsettings set org.cinnamon.desktop.keybindings.wm minimize "['<Shift><Alt><Super>Down']"
gsettings set org.cinnamon.desktop.keybindings.media-keys www "['<Primary><Alt>w']"

# set bottom panel height
gsettings set org.cinnamon panels-resizable "['1:true']"
gsettings set org.cinnamon panels-height "['1:30']"

# set favourites
gsettings set org.cinnamon favorite-apps "['google-chrome.desktop', 'org.gnome.Terminal.desktop', 'code.desktop', 'nemo.desktop']"

# set the number of workspaces
gsettings set org.cinnamon.desktop.wm.preferences num-workspaces 2

# set the number of theme
gsettings set org.cinnamon.desktop.wm.preferences theme 'Mint-Y-Dark'
gsettings set org.cinnamon.desktop.interface icon-theme 'Papirus-Dark'
gsettings set org.cinnamon.desktop.interface gtk-theme 'Mint-Y-Dark'
gsettings set org.cinnamon.theme name 'Mint-Y-Dark'

# TODO:
# 1) change menu icon to ""
# 2) Remove menu label
# 3) Remove show desktop applet
# 4) Add time/percentage to power icon applet
# 5) Add Date to time applet
# 7) Add World Clock/Remove default clock
# 8) Remove User Applet
# 9) Add Workspace Switcher
# 10) Setup Panel Launcher Favourties
