#!/usr/bin/env bash
killall -q polybar

# wait for process shutdown
while pgrep -x polybar >/dev/null; do sleep 1; done

# launch polybar on all connected monitors
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar -r matt &
  done
else
  polybar matt -r &
fi
