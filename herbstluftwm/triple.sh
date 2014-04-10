#!/bin/bash

while getopts ":h v" opt; do
	case $opt in
		h)
			herbstclient split horizontal 0.666667
			herbstclient split horizontal 0.5
			;;
		v)
			herbstclient split vertical 0.666667
			herbstclient split vertical 0.5
			;;
		\?)
			echo "invalid option" >&2
			;;
	esac
done

