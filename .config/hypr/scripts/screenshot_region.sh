#!/bin/sh
# Script that let me take a screenshot of a region of the screen

# If slurp (what hyprshot uses to select what to screenshot) is not running
if [ -z "$(pidof slurp)" ]; then
    hyprshot -m region -o ~/Pictures/Screenshots/ -z
fi
