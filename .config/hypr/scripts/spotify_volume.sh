#!/bin/bash

# if spotify is running
if [ -n "$(pidof spotify)" ]; then
    current_volume=$(playerctl -p spotify volume)
    # if first arg is up
    if [ $1 == "up" ]; then
        # add 0.05 to current_volume
        new_volume=$(echo $current_volume+0.05 | bc)
    elif [ $1 == "down" ]; then
        new_volume=$(echo $current_volume-0.05 | bc)
    fi
    # set new volume for spotify
    playerctl -p spotify volume $new_volume
fi
