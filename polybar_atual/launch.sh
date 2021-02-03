#!/usr/bin/zsh

# Terminate already running bar instances
killall -q polybar

wal -R
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
export BAR_LABEL_SEPARATOR="%{T5}%{F$(xrdb -query | grep "*.color14" | cut -f 2)}%{F-}%{T-}"
# Launch example
# polybar example &
polybar shadbar2 -r &
polybar hdmi2 -r &
