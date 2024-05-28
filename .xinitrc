#!/bin/sh

exec dunst
exec xrandr --output eDP1 --primary --mode 1366x768 --rate 60.00 --pos 597x1080 --rotate normal --output DP1 --mode 2560x1080 --rate 74.99 --pos 0x0 --rotate normal
exec xwallpaper --zoom /home/giack/pictures/Wallpapers/Images/Solid\ Colors/gruvbox-bg/gruvbox-bg-2560x1080.png
exec nm-applet
exec xrdb ~/.Xresources

exec /usr/bin/i3
