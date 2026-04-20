#!/bin/bash

DIR="$HOME/.config/wallpaper"


# 1. Generate the list with icons
# This creates a string like "1.jpg\0icon\x1f/path/to/1.jpg" for every file
list_with_icons=""
for file in $(ls "$DIR" | grep -v "wp.jpg"); do
    list_with_icons+="$file\0icon\x1f$DIR/$file\n"
done

# 2. Run Rofi with the -show-icons flag
SELECTED=$(
    
    echo -e "$list_with_icons" | rofi -dmenu -i -p "Select Wallpaper" \-show-icons -theme ~/.config/rofi/wallpaper.rasi
    
    )


if [ ! -z "$SELECTED" ]; then
    FULL_PATH="$DIR/$SELECTED"
    ln -sf "$FULL_PATH" "$DIR/wp.jpg"
    hyprctl hyprpaper preload "$FULL_PATH"
    hyprctl hyprpaper wallpaper "DP-3,$FULL_PATH"
    hyprctl hyprpaper unload all

    case "$SELECTED" in
        "41.png")
            ~/.config/script/theme-selection.sh 1
            ;;
        "MidnightA.png")
            ~/.config/script/theme-selection.sh Celestial-Tide
            ;;
        "SunA.jpg" | "SunB.jpg" )
            ~/.config/script/theme-selection.sh Kissshot-Ember
            ;;
        "LightBlueB.png")
            ~/.config/script/theme-selection.sh Tidal-Wave
            ;;
        "CottonA.jpg")
            ~/.config/script/theme-selection.sh Cotton-Candy
            ;;
        "1TK.jpg" | "Roxy2.jpg")
            ~/.config/script/theme-selection.sh hazy-blue
            ;;
        "Black.jpg")
            ~/.config/script/theme-selection.sh black-white
            ;;
        "PurpleA.jpg")
            ~/.config/script/theme-selection.sh purple
            ;;

        "31.jpg")
            ~/.config/script/theme-selection.sh roxy
            ;;

        "Sylp.png")
            ~/.config/script/theme-selection.sh pastel-green
            ;;
    esac
fi

