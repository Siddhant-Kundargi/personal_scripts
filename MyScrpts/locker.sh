#!/usr/bin/bash

x=$(brightnessctl g)
brightnessctl set 0

i3lock -i ~/Pictures/wallpapers/"lock.png" -n -u

brightnessctl set $x
