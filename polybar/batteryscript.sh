level=$(cat /sys/class/power_supply/BAT0/capacity)
# [ "${level}" -le 95 ] && printf " ${level}%%"
printf "  BAT ${level}%% "
