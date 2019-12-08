#!/bin/bash

Clock() {
    CURTIME=$(date "+%I:%M %p")

    echo -n "$CURTIME"
}

# Print
while true; do
        echo "%{c}%{F#FFFF00}%{B#0000FF} $(Clock) %{F-}%{B-}"
        sleep 20
done
