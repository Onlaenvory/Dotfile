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
        "SunA.jpg")
            ~/.config/script/theme-selection.sh kissshotEmber
            ;;
        "6.jpg")
            ~/.config/script/theme-selection.sh kurisu
            ;;
        "4.png")
            ~/.config/script/theme-selection.sh badApple
            ;;
    esac
fi

