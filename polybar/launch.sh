#!/usr/bin/zsh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch example
# polybar example &
polybar shadbar2 -r &
polybar hdmi2 -r &
