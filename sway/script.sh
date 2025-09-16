#!/bin/bash

while true; do

    artist=$(playerctl metadata artist 2>/dev/null)
    title=$(playerctl metadata title 2>/dev/null)

    if [[ -n "$artist" && -n "$title" ]]; then
        song_info="$artist - $title"
    else
        song_info=""
    fi

    time_info=$(date "+%a %d %b, %H:%M:%S")

    #printf "$song_info"
    #printf " | "
    printf "$song_info | $time_info"

    sleep 1
done

### WORK IN PROGRESS, I still need to learn JSON syntax
