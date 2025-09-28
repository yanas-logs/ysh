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

function respond() {
    local input="$1"
    case $input in
        "hi"|"hello")
            echo "Hi! How can I assist you?"
            ;;
        "time")
            echo "Current time: $(date +%H:%M:%S)"
            ;;
        "date")
            echo "Today's date: $(date '+%A, %d %B %Y')"
            ;;
        "exit")
            echo "Exiting ysh. See you next time!"
            exit 0
            ;;
        *)
            echo "Sorry, I do not understand the command: '$input'"
            ;;
    esac
}

welcome

while true; do
    read -p "user@pc : " user_input
    respond "$user_input"
done
