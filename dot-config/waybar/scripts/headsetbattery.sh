#!/bin/sh

battery_level=$(headsetcontrol -b | grep Level | cut -d' ' -f2)
battery_status=$(headsetcontrol -b | grep Status | cut -d' ' -f2)

if [ "$battery_status" == "BATTERY_CHARGING" ]; then
    css_class="charging"
    icon=" "

elif [ "$battery_status" == "BATTERY_UNAVAILABLE" ]; then
    css_class="unavailable"
    icon=" "
    battery_level="N/A"

elif [ "$battery_level" == "100%" ]; then
    css_class="full"
    icon=" "

elif [ "$battery_level" == "75%" ]; then
    css_class="high"
    icon=" "

elif [ "$battery_level" == "50%" ]; then
    css_class="medium"
    icon=" "

elif [ "$battery_level" == "25%" ]; then
    css_class="low"
    icon=" "

else 
    css_class="unavailable"
    icon=" "
fi

printf '{"text": "%s", "alt": "%s", "tooltip": "Battery: %s", "class": "%s"}' "$battery_level" "$icon" "$battery_level" "$css_class"
