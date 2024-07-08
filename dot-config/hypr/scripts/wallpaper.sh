#!/bin/bash

if [ -r "~/.cache/wallpaper.png" ]; then
    cp ~/wallpapers/purple_cat.png ~/.cache/wallpaper.png
    notify-send "Hyprpaper" "created wallpaper cache"
fi

if [ -r "~/.cache/wallpaper.rasi" ]; then
    echo "*{ current-image: url('~/.cache/wallpaper.png', height); }" > ~/.cache/wallpaper.rasi
    notify-send "Hyprpaper" "created wallpaper rasi"
fi

if pgrep -x "hyprpaper" > /dev/null; then
    hyprctl hyprpaper unload all
else
    hyprpaper& &> /dev/null
    notify-send "Hyprpaper" "Wallpaper service started"
    exit 0
fi

menu(){
    for i in $(ls ~/wallpapers/); do
        printf "%s\n" "$i"
    done
}

main() {
    choice=$(menu | rofi -dmenu -theme "~/.config/rofi/config-wallpaper.rasi")

    hyprctl hyprpaper preload "~/wallpapers/$choice"
    hyprctl hyprpaper wallpaper ",~/wallpapers/$choice"
    cp ~/wallpapers/$choice ~/.cache/wallpaper.png
    notify-send "Hyprpaper" "Wallpaper loaded"
}

main
