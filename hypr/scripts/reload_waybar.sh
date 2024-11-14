#!/bin/sh
#Simple script that relaunch waybar

# kill waybar if it is running
if [ -n "$(pidof waybar)" ]; then
    killall waybar
fi
# launch waybar
waybar &
# comment up and uncomment down to enable gtk inspector
# GTK_DEBUG=interactive waybar &
