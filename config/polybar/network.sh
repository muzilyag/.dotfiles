#!/bin/sh

RTT=$(ping -c 1 8.8.8.8 2>/dev/null | grep -oP 'time=\K\d+')

if [ -z "$RTT" ]; then
    echo "%{F#f38ba4}󰈂 Offline%{F-}"
elif [ "$RTT" -lt 75 ]; then
    echo "%{F#a6e3a1}󰤨 %{F-} $RTT ms"
elif [ "$RTT" -lt 150 ]; then
    echo "%{F#f9e2af}󰤢 %{F-} $RTT ms"
else
    echo "%{F#fab387}󰤟 %{F-} $RTT ms"
fi
