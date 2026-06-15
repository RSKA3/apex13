#!/usr/bin/env bash

# Define the options with Nerd Font icons
programs='󰵆 Programs'
files='󱔘 Files'
power_menu=' Power Menu'
utilities='󰭔 Utilities'
calculator='󰪚 Calculator'
clipboard='🗎 Clipboard'
keybindings='󰌌 Keybindings'
documentation='󰈙 Documentation'

# Combine options with newline characters
options="$programs\n$files\n$power_menu\n$utilities\n$calculator\n$clipboard\n$keybindings\n$documentation"

# Pass options to rofi
choice=$(echo -e "$options" | rofi -dmenu -i -p "Main Menu" -theme "nord")
[ $? = 0 ] || exit

# Handle choices based on variables
case "$choice" in
    "$programs")
        rofi -show drun
        ;;
    "$files")
        alacritty -e yazi
        ;;
    "$power_menu")
        /home/rasmus/.config/rofi/scripts/powermenu.sh
        ;;
    "$utilities")
        /home/rasmus/.config/rofi/scripts/utils.sh
        ;;   
    "$calculator")
    	rofi -show calc -modi calc -no-show-match -no-sort
    	;;
	"$clipboard")
   		cliphist list | rofi -dmenu | cliphist decode | wl-copy
   		;;
    "$keybindings")
        # Add your keybindings command here if needed
        ;;
    "$documentation")
        # Add your documentation command here if needed
        ;;
    *)
        exit 0
        ;;
esac
