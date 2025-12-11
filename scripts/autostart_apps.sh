#!/usr/bin/bash

# Start common applications (Now handled by the GNOME startup applications settings)
# vivaldi &> /dev/null &
# steam -silent &> /dev/null &
# flatpak run app.ytmdesktop.ytmdesktop &> /dev/null &


current_day=$(date +%u)
current_hour=$(date +%H)
# If weekday is Monday (1) to Friday (5) and is from 7:00 to 17:00, start work applications
# 10# is used to avoid issues with leading zeros in bash arithmetic comparisons, basically setting the base to decimal
if [[ 10#$current_day -ge 1 && 10#$current_day -le 5 && 10#$current_hour -ge 7 && 10#$current_hour -lt 17 ]]; then
  flatpak run com.slack.Slack &> /dev/null &
fi
