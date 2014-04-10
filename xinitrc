#!/bin/sh
#
# ~/.xinitrc

#sh ~/.fehbg &
xsetroot -solid \#254444
xsetroot -cursor_name left_ptr &
urxvtd -q -o -f
xrdb -merge ~/.Xresources
xbindkeys

exec 2bwm
