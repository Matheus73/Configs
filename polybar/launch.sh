#!/usr/bin/zsh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch example
# polybar example &

# polybar shadbar2 -r &
# MONITOR=HDMI-1-1 polybar hdmi2 -r &
export BAR_LABEL_SEPARATOR="%{T5}%{F$(xrdb -query | grep "*.color14" | cut -f 2)}%{F-}%{T-}"

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload $m &
done
