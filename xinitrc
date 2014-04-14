#!/bin/sh
#
# genie
#
# ~/.xinitrc

#sh ~/.fehbg &
xsetroot -solid \#687770
xsetroot -cursor_name left_ptr &
urxvtd -q -o -f
xrdb -merge ~/.Xresources
xbindkeys

exec 2bwm
