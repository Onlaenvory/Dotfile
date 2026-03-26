#!/bin/bash

CURRENT_WS=$(hyprctl monitors -j | jq -r '.[] | select(.focused == true) | .activeWorkspace.id')


VSCODE_WS=$(hyprctl clients -j | jq -r '.[] | select(.class == "code-oss" or .class == "code") | .workspace.id' | head -n 1)


if [ -z "$VSCODE_WS" ]; then
    exit 0
fi


if [ "$CURRENT_WS" == "$VSCODE_WS" ]; then

    PREV_WS=$(cat /tmp/prev_vscode_workspace 2>/dev/null)
        if [ ! -z "$PREV_WS" ]; then
            hyprctl dispatch workspace "$PREV_WS"
        fi

else

    echo "$CURRENT_WS" > /tmp/prev_vscode_workspace
    hyprctl dispatch workspace "$VSCODE_WS"
    
fi