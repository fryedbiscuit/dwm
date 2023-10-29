#!/bin/bash
pkill dwm_bar
dwm_bar &

export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx
export XIM_PROGRAM=/usr/bin/fcitx

export XMENU="dmenu"
export TERMINAL="st"

pkill ssh-agent; eval $(ssh-agent)

numlockx on
nitrogen --restore

otd-daemon &
sxhkd -m 1 &
picom -b
nm-applet &
blueman-applet &
dropbox &

exec dwm
