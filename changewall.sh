#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="wall.jpg"

# Get a random wallpaper from the directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Set the wallpaper using gsettings
gsettings set org.gnome.desktop.background picture-uri "file://$WALLPAPER"

echo "Wallpaper changed to: $WALLPAPER"