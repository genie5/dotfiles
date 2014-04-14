#!/bin/sh
# genie

herbstclient pad ${1:-0} 20 0 0 0

{
# Define the clock
Clock() {
	        DATE=$(date "+%I:%M")

		echo -n "$DATE"
	}
Battery() {
		BATPERC=$(acpi --battery | awk -F, '{print $2}')
		echo "$BATPERC"
	  }

Charge() {
		status=$(cat /sys/class/power_supply/BAT0/status)
		if [ "$status" == "Charging" ] ;then
			echo "²"
		else
			echo "±"
		fi
	 }

Volume() {
		echo $(amixer get Master | grep -m 1 -o '\w*%\w*')
	 }

Volicon() {
		v=$(amixer get Master | grep -m 1 off)
		if [ "$v" == "" ] ;then
			echo "´"
		else
			echo "µ"
		fi
	  }

Tags()  {	
		declare -a tags=($(herbstclient tag_status))
		counter=0

		for i in "${tags[@]}" ;do
			t="${i:1:2}"
			if [ ${i:0:1} == "#" ] ;then
				newtags[$counter]="\f9\b0\u0 > \u0 "
				counter=$counter+1
			else
				newtags[$counter]="\f1\b0\u0 > \u0 "
				counter=$counter+1
			fi
		done

		x=$(echo ${newtags[@]})
		echo $x | tr -d ' '
	}

Music() {
		artist=$( cmus-remote -Q 2>/dev/null | grep -m 1 artist | cut -d " " -f 3- )
		title=$( cmus-remote -Q 2>/dev/null | grep -m 1 title | cut -d " " -f 3- )

		if [ "$artist" == "" ] ;then
			artist="No one"
			title="Nothing"
		fi

		echo "\f3\b0\u0 $artist - $title"
	}

# Print
		

		while true; do
			day=$(date "+%A")
			dte=$(date "+%D")
			p=$(date +%p)

			echo "\l\f1\b0\u0 $day \f6$dte \f1³ \c\f1 \f1  \f1$(Volicon) \f6$(Volume)  \f1$(Charge)\f6$(Battery) \r\f6$(Tags) \f1³ \f6$(Clock) \f1$p "
			sleep .1;
		done

} 2> /dev/null | bar -p
