#!/usr/bin/env bash

chosen=$(echo -e " Выключить\n󰑐 Перезагрузить\n󰍃 Выйти" | rofi -dmenu -i -p "Действие:")

case "$chosen" in
    " Выключить") poweroff ;;
    "󰑐 Перезагрузить") reboot ;;
    "󰍃 Выйти") bspc quit ;;
esac
