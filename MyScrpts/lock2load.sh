#!/bin/bash

DriveName=$(udisksctl unlock -b /dev/$1 $1_Drive | cut -d " " -f 4 | tr -d ".")

udisksctl mount -b $DriveName
