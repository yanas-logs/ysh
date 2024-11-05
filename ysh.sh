#!/bin/bash

function welcome() {
    local hour=$(date +%H)

    if [ "$hour" -lt 12 ]; then
        greeting="Good morning!"
    elif [ "$hour" -lt 18 ]; then
        greeting="Good afternoon!"
    else
        greeting="Good evening!"
    fi

    echo "Welcome to ysh,you've just launched shell! $greeting"
}

welcome