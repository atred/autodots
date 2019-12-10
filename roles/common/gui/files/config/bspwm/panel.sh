#! /bin/sh

if xdo id -a "$PANEL_WM_NAME" > /dev/null ; then
	printf "%s\n" "The panel is already running." >&2
	exit 1
fi

trap 'trap - TERM; kill 0' INT TERM QUIT EXIT

[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
mkfifo "$PANEL_FIFO"

# Workspaces
bspc subscribe report > "$PANEL_FIFO" &

while true; do
    # Audio
    echo "A$(pamixer --get-volume-human)" > $PANEL_FIFO &
    # Time
    echo "S$(date '+%a %I:%M %p')" > $PANEL_FIFO & 
    # Battery
    echo "bBattery 0:" "$(cat /sys/class/power_supply/BAT0/capacity)" > $PANEL_FIFO &
    echo "BBattery 1:" "$(cat /sys/class/power_supply/BAT1/capacity)" > $PANEL_FIFO &
    sleep 5s
done &
    
. $HOME/.config/bspwm/panel_colors.sh

$HOME/.config/bspwm/panel_bar.sh < "$PANEL_FIFO" | lemonbar -a 32 -u 2 -n "$PANEL_WM_NAME" -g x$PANEL_HEIGHT -f "$PANEL_FONT" -F "$COLOR_DEFAULT_FG" -B "$COLOR_DEFAULT_BG" | sh &

wid=$(xdo id -m -a "$PANEL_WM_NAME")
xdo above -t "$(xdo id -N Bspwm -n root | sort | head -n 1)" "$wid"

wait
