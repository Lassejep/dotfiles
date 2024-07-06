#!/bin/bash
themes_path="$HOME/.config/waybar/themes"

listThemes=""
listNames=""

options=$(find $themes_path -maxdepth 2 -type d)
for value in $options
do
    if [ ! $value == "$themes_path" ]; then
        if [ $(find $value -maxdepth 1 -type d | wc -l) = 1 ]; then
            result=$(echo $value | sed "s#$HOME/.config/waybar/themes/#/#g")
            IFS='/' read -ra arrThemes <<< "$result"
            listThemes[${#listThemes[@]}]="/${arrThemes[1]};$result"
            if [ -f $themes_path$result/config.sh ]; then
                source $themes_path$result/config.sh
                listNames+="$theme_name\n"
            else
                listNames+="/${arrThemes[1]};$result\n"
            fi
        fi
    fi
done

listNames=${listNames::-2}
choice=$(echo -e "$listNames" | rofi -dmenu -replace -config ~/.config/rofi/config-wallpaper.rasi -no-show-icons -width 30 -p "Themes" -format i) 

if [ "$choice" ]; then
    echo "Loading waybar theme..."
    echo "${listThemes[$choice+1]}" > ~/.cache/.themestyle.sh
    ~/.config/waybar/launch.sh
fi
