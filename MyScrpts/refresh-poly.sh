#!/bin/bash

feh --bg-fill $2

/home/siddhant/.config/polybar/$1/launch.sh

wal -ni $2

picom --config=/home/siddhant/.mkbuild/picom.conf

~/.conkyLaunch.sh
