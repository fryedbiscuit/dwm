#!/bin/bash
pkill dwm_bar
dwm_bar &

export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx
export XIM_PROGRAM=/usr/bin/fcitx

export XMENU="rofi -dmenu"
export TERMINAL="st"

numlockx on

picom -b
parcellite &
nm-applet &
sxhkd -m 1 &

nitrogen --restore


exec dwm
