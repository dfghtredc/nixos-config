#!/usr/bin/env bash

battery="/sys/class/power_supply/BAT0"

capacity="$(cat "$battery/capacity")"
status="$(cat "$battery/status")"

printf "%s%% %s\n" "$capacity" "$status"
