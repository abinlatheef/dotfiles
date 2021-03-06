#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config

 polybar -r -q main --config=~/.config/polybar/config_bar1 &
# polybar -r -q mybar --config=~/.config/polybar/config_bar2 &

#secondary=$(xrandr -q | grep 'DP-0')
#if [[$secondary = *connnected* ]]; then
#    polybar top_external &
#fi

echo "Polybar launched..."
