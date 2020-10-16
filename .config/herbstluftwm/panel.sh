#!/usr/bin/env bash

## Terminate already running bar instances
#killall -q polybar
#
##Wait until the processes have been shut down
#while pgrep -u $UID -x polybar >/dev/null; do
#    sleep 1;
#done
#
#if type "xrandr"; then
#    for m in $( xrandr --query | grep " connected" | cut -d" " -f1 ); do
#        MONITOR=$m polybar --reload herbstBar &
#    done
#else
#    polybar --reload herbstBar &
#fi

if [ -z "$(pgrep -x polybar)" ]; then
    BAR="herbstBar"

    for m in $(polybar --list-monitors | cut -d":" -f1 ); do
      MONITOR=$m polybar --reload $BAR &
      sleep 1
    done
else
    polybar-msg cmd restart
fi
