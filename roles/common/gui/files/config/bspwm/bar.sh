#!/bin/bash

clock() {
    CURTIME=$(date "+%I:%M %p")

    echo -n "$CURTIME"
}

bspwm() {
    BSPWM=$(bspc query -D)
    BUSY=$(bspc query -D -d .occupied)

    for DESK in $BSPWM
    do
        CHAR="\uf10c"
        if [[ $BUSY =~ $DESK ]]
        then
            CHAR="\uf111"
        fi
        echo -n "%{A:bspc desktop $DESK -f:}"
        if [ $DESK = $(bspc query -D -d) ]
        then
            echo -n "%{F#ccaa22}$CHAR%{F-}"
        else
            echo -n "$CHAR"
        fi
        echo -n "%{A} "
    done
}

# Print
while true; do
    echo "%{l}$(bspwm)%{c}%{F#FFFF00}%{B#0000FF} $(date "+%I:%M %p") %{F-}%{B-}"
    sleep 20
done
