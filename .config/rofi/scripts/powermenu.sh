#!/usr/bin/env bash

shutdown=' Shutdown'
reboot=' Reboot'
lock=' Lock'
suspend=' Suspend'
logout=' Logout'

options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power Menu:")

case "$chosen" in
    "$shutdown")
        systemctl poweroff
        ;;
    "$reboot")
        systemctl reboot
        ;;
    "$lock")
        loginctl lock-session
        ;;
    "$suspend")
        systemctl suspend
        ;;
    "$logout")
        niri msg action quit
        ;;
    *)
        exit 0
        ;;
esac
