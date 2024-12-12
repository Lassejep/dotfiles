#!/bin/sh

PIPE="/tmp/mpv_audio_pipe"

notification(){
    notify-send "Playing now: " "$@"
}

menu(){
    printf "1. Lofi Girl <lofi>\n"
    printf "2. DR P1 <radio>\n"
    printf "3. Youtube Music <favourites>\n"
}

main() {
    choice=$(menu | rofi -dmenu | cut -d. -f1)
    case $choice in
        1)
            notification "Lofi Girl🎶";
            URL="https://youtu.be/jfKfPfyJRdk"
            ADDITIONAL_ARGS="--volume=60"
            ;;
        2)
            notification "DR P1";
            URL="https://live-icy.gslb01.dr.dk/A/A03H.mp3"
            ;;
        3)
            notification "Youtube Music🎶";
            URL="https://music.youtube.com/playlist?list=LM"
            ADDITIONAL_ARGS="--ytdl-raw-options-append=cookies-from-browser=firefox --ytdl-format=bestaudio --shuffle"
            ;;
    esac

    [ -p $PIPE ] || mkfifo $PIPE
    mpv --title="radio-mpv" $URL $ADDITIONAL_ARGS --o=$PIPE --of=nut --ovc=rawvideo --oac=pcm_s16le &
    mpv --force-window --title="radio-player" $PIPE
}

cleanup() {
    pkill -f radio-mpv
    pkill -f radio-player
    rm -f $PIPE 2>/dev/null
    notify-send "Radio stopped"
}

if pgrep -f radio-mpv > /dev/null || pgrep -f radio-player > /dev/null; then
    cleanup
else
    main
fi
