#!/bin/bash

# GitHub raw image URL (replace with your actual image URL)
IMAGE_URL="https://raw.githubusercontent.com/PrasannaGH963/BashTest/main/wall.jpg"

# Destination path
IMAGE_PATH="/home/ubuntu/Downloads/wall.jpg"

# Download the image
wget -O "$IMAGE_PATH" "$IMAGE_URL"

# Set the wallpaper using gsettings
gsettings set org.gnome.desktop.background picture-uri "file://$IMAGE_PATH"

echo "Wallpaper changed to: $IMAGE_PATH"