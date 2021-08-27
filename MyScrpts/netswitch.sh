#!/bin/bash

if [[ $1 == "toggle" ]]; then
    if [[ $(nmcli networking) == "disabled" ]]; then
        nmcli networking on
        notify-send -u normal "Networking is on" -t 2000
    elif [[ $(nmcli networking) == "enabled" ]]; then
        nmcli networking off
        notify-send -u critical "Networking is off" -t 2000
    else 
         notify-send -u critical "an error occured" "NetworkManager may not be working" -t 2000
         fi

else
    echo "invalid command"
    fi
