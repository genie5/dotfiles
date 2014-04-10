#!/bin/bash

while true; do

	batt=$(cat /sys/class/power_supply/BAT0/capacity)
	status=$(cat /sys/class/power_supply/BAT0/status)
	file=$(cat ~/bin/files/lbw.txt)

	if [ "$batt" -ge 100 -a "$status" == "Unknown" -a "$file" == 1 ] ;then
		notify-send -t 0 'Fully Charged. Unplug charger.'
		echo 0 > ~/bin/files/lbw.txt

	elif [ "$batt" -lt 100 ] ;then
		echo 1 > ~/bin/files/lbw.txt
	fi

	if [ "$status" == "Charging" ] ;then
		batt=100

	fi

	if [ "$batt" -le 15 ] ;then
		notify-send -t 0 'Low Battery. Plug in charger.'
	fi

	sleep 180;
done	

