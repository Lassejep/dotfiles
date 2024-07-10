#!/bin/sh

ARGS="--no-video"
notification(){
    notify-send "Playing now: " "$@"
}

menu(){
    printf "1. Lofi Girl <lofi>\n"
    printf "2. DR P1 <radio>\n"
    printf "3. Youtube Music <energize>\n"
}

main() {
    choice=$(menu | rofi -dmenu | cut -d. -f1)

    case $choice in
        1)
            notification "Lofi Girl🎶";
            URL="https://youtu.be/jfKfPfyJRdk"
            ADDITIONAL_ARGS="--volume=60"
            break
            ;;
        2)
            notification "DR P1";
            URL="https://live-icy.gslb01.dr.dk/A/A03H.mp3"
            additional_args=""
            break
            ;;
        3)
            notification "Youtube Music🎶";
            URL="https://music.youtube.com/watch?v=6JYIGclVQdw&list=RDAMVM6JYIGclVQdw"
            ADDITIONAL_ARGS="--ytdl-raw-options-append=cookies-from-browser=firefox --ytdl-format=bestaudio"
            break
            ;;

        esac
        mpv $ARGS --title="radio-mpv" $URL $ADDITIONAL_ARGS
    }

pkill -f radio-mpv || main
notify-send "Radio stopped"
