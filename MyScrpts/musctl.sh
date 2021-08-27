#!/bin/bash

mkdir -p /tmp/musctl
touch /tmp/musctl/temp_file
chmod 600 /tmp/musctl/temp_file

tmpf="/tmp/musctl/temp_file"
control_program=$(cat $tmpf)

if [[ $1 == "switch" ]]; then
    if [[ $control_program == "mpc" ]]; then
        echo playerctl > $tmpf
    else
        echo mpc > $tmpf
        fi

elif [[ $1 == "toggle" ]]; then
    if [[ $control_program == "mpc" ]]; then
        mpc toggle
    else 
        playerctl play-pause
        fi

elif [[ $1 == "previous" && $control_program == "mpc" ]]; then
    mpc prev

else 
    $(cat $tmpf) $1
    fi
