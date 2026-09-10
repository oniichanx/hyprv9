#!/bin/bash
# /* ---- 💫 https://github.com/oniichanx 💫 ---- */  ##

# For Hyprlock
pidof hyprlock || hyprlock -q

# Ensure weather cache is up-to-date before locking (Waybar/lockscreen readers)
bash "${XDG_CONFIG_HOME:-$HOME/.config}/hypr/UserScripts/WeatherWrap.sh" >/dev/null 2>&1 &

#loginctl lock-session