#!/bin/bash

THEME_DIR="$HOME/.config/theme"
CURRENT_THEME="$1"

if [ -z "$CURRENT_THEME" ]; then
  echo "Usage: $0 [Celestial-Tide | Kissshot-Ember]"
  exit 1
fi

case "$CURRENT_THEME" in
  1)
    cp "$THEME_DIR/black-white/config.conf" "$THEME_DIR/current.conf"
    cp "$THEME_DIR/black-white/style.css" "$THEME_DIR/current.css"
    ;;
  kurisu)
    cp "$THEME_DIR/kurisu/config.conf" "$THEME_DIR/current.conf"
    cp "$THEME_DIR/kurisu/style.css" "$THEME_DIR/current.css"
    ;;
  kissshotEmber)
    cp "$THEME_DIR/kissshot-ember/config.conf" "$THEME_DIR/current.conf"
    cp "$THEME_DIR/kissshot-ember/style.css" "$THEME_DIR/current.css"
    ;;
  5)
    cp "$THEME_DIR/roxy/config.conf" "$THEME_DIR/current.conf"
    cp "$THEME_DIR/roxy/style.css" "$THEME_DIR/current.css"
    ;;
  6)
    cp "$THEME_DIR/cotton-candy/config.conf" "$THEME_DIR/current.conf"
    cp "$THEME_DIR/cotton-candy/style.css" "$THEME_DIR/current.css"
    ;;
  badApple)
    cp "$THEME_DIR/badApple/config.conf" "$THEME_DIR/current.conf"
    cp "$THEME_DIR/badApple/style.css" "$THEME_DIR/current.css"
    ;;
  *)
    echo "Unknown theme: $CURRENT_THEME"
    exit 1
    ;;
esac
cp "$THEME_DIR/current.conf" "$HOME/.config/hypr/current_theme.conf"
cp "$THEME_DIR/current.css" "$HOME/.config/waybar/current_theme.css"

hyprctl reload
pkill -SIGUSR2 waybar
