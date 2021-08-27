#!/bin/bash

criticalLevel=30
overCharged=95
isNotified=0
isOverCharged=0

function batNotify(){
        batLvl=$(acpi | cut -d " " -f 4 | tr -d "%,")

        if [[ $batLvl -le $criticalLevel ]] && [[ $isNotified -eq 0 ]]; then
                notify-send -u critical "Low Battery!" "Battery Critically low! charge Imidiately!"
                isNotified=1
        fi
        
        if [ $batLvl -ge $criticalLevel ]; then
                isNotified=0
        fi

        if [ $batLvl -ge $overCharged ] && [ $isOverCharged -eq 0 ]; then
                notify-send -u critical "Enough Charged" "Please Disconnect the Charger"
                isOverCharged=1
        fi

        if [ $batLvl -le $overCharged ]; then
                isOverCharged=0
        fi
        
        sleep 20
        batNotify

}

batNotify
