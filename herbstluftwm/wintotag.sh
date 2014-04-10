#!/bin/sh

#move focused window between layers

declare -a tags=($(herbstclient tag_status))

for i in "${tags[@]}" ;do

    t="${i:1:2}"
    if [ ${i:0:1} == "#" ] ;then

        if [ "$t" != "c" ] ;then
            
            herbstclient move c
            herbstclient cycle_monitor

        else
            herbstclient cycle_monitor
            declare -a z=($(herbstclient tag_status))

            for j in "${z[@]}" ;do
                b="${j:1:2}"
                if [ ${j:0:1} == "#" ] ;then
                    herbstclient cycle_monitor
                    herbstclient move $b
                    herbstclient cycle_monitor
                fi
            done

        fi

    fi
done
