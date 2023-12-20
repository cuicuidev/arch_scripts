#!/bin/sh

setxkbmap -layout es &
xrandr --dpi 120 &
picom &
wal -i /home/cuicuidev/.local/wallpaper.png &
# ~/.local/discord_init.sh &
dwmblocks &
exec dwm
