#!/bin/bash

if [ -z "$1" ]; then
    notify-send "Hyprpaper" "No wallpaper selected"
    exit 1
fi

if [ -r "~/.cache/wallpaper.png" ]; then
    cp $1 ~/.cache/wallpaper.png
    notify-send "Hyprpaper" "created wallpaper cache"
fi

if [ -r "~/.cache/wallpaper.rasi" ]; then
    echo "*{ current-image: url('$1', height); }" > ~/.cache/wallpaper.rasi
    notify-send "Hyprpaper" "created wallpaper rasi"
fi

if pgrep -x "hyprpaper" > /dev/null; then
    hyprctl hyprpaper unload all
    hyprctl hyprpaper preload "$1"
    hyprctl hyprpaper wallpaper ",$1"
    cp $1 ~/.cache/wallpaper.png
    notify-send "Hyprpaper" "Wallpaper loaded"
else
    hyprpaper& &> /dev/null
    notify-send "Hyprpaper" "Wallpaper service started"
fi
