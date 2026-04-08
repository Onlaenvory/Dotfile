#!/bin/bash

THEME_DIR="$HOME/.config/theme"
CURRENT_THEME="$1"

if [ -z "$CURRENT_THEME" ]; then
  echo "Usage: $0 [Celestial-Tide | Kissshot-Ember]"
  exit 1
fi

case "$CURRENT_THEME" in
  Celestial-Tide)
    cp "$THEME_DIR/Celestial Tide/Celestial Tide.conf" "$THEME_DIR/current.conf"
    cp "$THEME_DIR/Celestial Tide/Celestial Tide.css" "$THEME_DIR/current.css"
    ;;
    
  Kissshot-Ember)
    cp "$THEME_DIR/Kissshot Ember/Kissshot Ember.conf" "$THEME_DIR/current.conf"
    cp "$THEME_DIR/Kissshot Ember/Kissshot Ember.css" "$THEME_DIR/current.css"
    ;;

  Tidal-Wave)
    cp "$THEME_DIR/Tidal Wave/Tidal Wave.conf" "$THEME_DIR/current.conf"
    cp "$THEME_DIR/Tidal Wave/Tidal Wave.css" "$THEME_DIR/current.css"
    ;;

  Cotton-Candy)
    cp "$THEME_DIR/Cotton Candy/Cotton Candy.conf" "$THEME_DIR/current.conf"
    cp "$THEME_DIR/Cotton Candy/Cotton Candy.css" "$THEME_DIR/current.css"
    ;;

  hazy-blue)
    cp "$THEME_DIR/hazy-blue/config.conf" "$THEME_DIR/current.conf"
    cp "$THEME_DIR/hazy-blue/style.css" "$THEME_DIR/current.css"
    ;;

  black-white)
    cp "$THEME_DIR/black-white/config.conf" "$THEME_DIR/current.conf"
    cp "$THEME_DIR/black-white/style.css" "$THEME_DIR/current.css"
    ;;

  purple)
    cp "$THEME_DIR/purple/config.conf" "$THEME_DIR/current.conf"
    cp "$THEME_DIR/purple/style.css" "$THEME_DIR/current.css"
    ;;

  roxy)
    cp "$THEME_DIR/roxy/config.conf" "$THEME_DIR/current.conf"
    cp "$THEME_DIR/roxy/style.css" "$THEME_DIR/current.css"
    ;;

  pastel-green)
    cp "$THEME_DIR/pastel-green/config.conf" "$THEME_DIR/current.conf"
    cp "$THEME_DIR/pastel-green/style.css" "$THEME_DIR/current.css"
    ;;
  *)
    echo "Unknown theme: $CURRENT_THEME"
    exit 1
    ;;
esac
cp "$THEME_DIR/current.conf" "$HOME/.config/hypr/current_theme.conf"
cp "$THEME_DIR/current.css" "$HOME/.config/waybar/current_theme.css"

hyprctl reload
pkill -SIGUSR2 waybar || waybar &
