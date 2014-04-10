#!/bin/bash

Loop() {
	a=$(pgrep dmenu_run)
	pad=$(herbstclient list_padding)

	if [ "$a" == "" ] ;then
		if [ "$pad" == "20 0 12 0" ] ;then
			herbstclient pad ${1:-0} 20 0 0 0
		fi
	else
		if [ "$pad" == "20 0 0 0" ] ;then
			herbstclient pad ${1:-0} 20 0 12 0
		fi
	fi
}
while true; do
	echo "$(Loop)"
	sleep .25;
done

