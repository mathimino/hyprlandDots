#!/bin/sh
# Script that reload hyprpaper

# kill hyprpaper if it is running
if [ -n "$(pidof hyprpaper)" ]; then
    killall hyprpaper
fi
# launch hyprpaper
hyprpaper &
