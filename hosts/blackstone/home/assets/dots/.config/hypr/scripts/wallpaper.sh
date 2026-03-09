#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

selected=$(fd -t f -e jpg -e jpeg -e png -e gif . "$WALLPAPER_DIR" |
  sed "s|$WALLPAPER_DIR/||" |
  fuzzel --dmenu --prompt="Wallpaper > ")

[ -z "$selected" ] && exit 0

wall="$WALLPAPER_DIR/$selected"

swww img "$wall" \
  --transition-type wipe \
  --transition-angle 30 \
  --transition-duration 0.8 \
  --transition-fps 60

# persist across reboots
echo "$wall" > "$HOME/.cache/current_wallpaper"
