#!/usr/bin/env bash

killall -q polybar
export POLYBAR_BATTERY=$(ls /sys/class/power_supply/ 2>/dev/null | grep -E '^BAT' | head -n 1)
export POLYBAR_ADAPTER=$(ls /sys/class/power_supply/ 2>/dev/null | grep -E '^(AC|ADP)' | head -n 1)
echo "---" | tee -a /tmp/polybar.log
polybar main 2>&1 | tee -a /tmp/polybar.log & disown
