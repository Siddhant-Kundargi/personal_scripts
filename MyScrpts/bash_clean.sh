#!/bin/bash

history -c

shred -fvn 200 ~/.bash_history
wipe -sf ~/.bash_history

notify-send -u critical "wipe complete" "bash_history wiped successfully"
