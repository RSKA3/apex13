#!/usr/bin/env bash

wifi="󰤥 Wifi"
bluetooth="󰂯 Bluetooth"
audio="󰋋 Audio"
monitors="📺 Monitors"

options="$wifi\n$bluetooth\n$audio\n$monitors"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Select Action:")

case "$chosen" in
	"$wifi")
        	alacritty -e impala
        ;;
    	"$bluetooth")
        	alacritty -e bluetui
        ;;
    	"$audio")
        	alacritty -e wiremix
        ;;
	"$monitors")
		alacritty -e nirimon
	;;
    *)
        exit 0
        ;;
esac
