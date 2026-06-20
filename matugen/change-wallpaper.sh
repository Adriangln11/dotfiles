#!/usr/bin/env bash
WALLPAPER="${1:-$HOME/Pictures/wallpapers/wall7.png}"

if [ ! -f "$WALLPAPER" ]; then
  echo "Error: $WALLPAPER not found"
  exit 1
fi

sed -i '/path = /s|path = .*|    path = '"$WALLPAPER"'|' "$HOME/.config/hypr/hyprpaper.conf"
sed -i '/path = /s|path = .*|    path = '"$WALLPAPER"'|' "$HOME/.config/hypr/hyprlock.conf"

~/.local/bin/matugen image "$WALLPAPER" --prefer darkness

ln -sf "$WALLPAPER" "$HOME/.config/hypr/current_wallpaper"
hyprctl hyprpaper wallpaper "eDP-1,$WALLPAPER"

pkill -SIGUSR2 waybar
pkill -SIGUSR1 kitty
