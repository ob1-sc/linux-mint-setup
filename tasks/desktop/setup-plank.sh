#!/bin/bash

PID=$(pgrep -f 'gnome-session' | head -n1)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)

# setup plank preferences
dconf write /net/launchpad/plank/docks/dock1/alignment 'center'
dconf write /net/launchpad/plank/docks/dock1/theme 'Transparent'
dconf write /net/launchpad/plank/docks/dock1/position 'left'
dconf write /net/launchpad/plank/docks/dock1/hide-delay 300

# setup plank launchers
rm -rf /home/siobrien/.config/plank/*