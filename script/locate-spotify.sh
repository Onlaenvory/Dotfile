#!/bin/bash

CURRENT_WS=$(hyprctl monitors -j | jq -r '.[] | select(.focused == true) | .activeWorkspace.id')


SPOTIFY_WS=$(hyprctl clients -j | jq -r '.[] | select(.class == "Spotify" or .class == "spotify") | .workspace.id')


if [ -z "$SPOTIFY_WS" ]; then
    exit 0
fi


if [ "$CURRENT_WS" == "$SPOTIFY_WS" ]; then

    PREV_WS=$(cat /tmp/prev_workspace 2>/dev/null)
        if [ ! -z "$PREV_WS" ]; then
            hyprctl dispatch workspace "$PREV_WS"
        fi

else

    echo "$CURRENT_WS" > /tmp/prev_workspace
    hyprctl dispatch workspace "$SPOTIFY_WS"

fi