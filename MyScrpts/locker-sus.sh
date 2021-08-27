#!/usr/bin/bash

x=$(brightnessctl g)

brightnessctl set 0
playerctl pause
rfkill block all

systemctl suspend

i3lock -i ~/Pictures/wallpapers/"lock.png" -n -u

brightnessctl set $x
rfkill unblock all
