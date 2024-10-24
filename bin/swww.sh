#!/bin/bash


if ! pgrep -x "swww" > /dev/null
then
    echo "Запускаем swww daemon..."
    swww init
fi

WALLPAPER_DIR="$HOME/Pictures/Wallpapers/nord/"

WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" \) | shuf -n 1)

swww img "$WALLPAPER" --transition-type random --transition-step 200 --transition-fps 60
