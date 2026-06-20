#!/usr/bin/env bash
WALLPAPER_DIR="$HOME/Pictures/wallpapers"

SELECTED=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.bmp" \) | rofi -dmenu -p "Select Wallpaper" -theme-str 'entry { placeholder: "Wallpaper..."; }')

if [ -n "$SELECTED" ]; then
  ~/.config/matugen/change-wallpaper.sh "$SELECTED"
fi
