#!/bin/bash

# Путь к директории с обоями
WALLPAPER_DIR="$HOME/Pictures/Wallpapers/nord/"

# Получаем случайное изображение из директории
wallpaper=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Устанавливаем обои с помощью swaybg
swaybg -i "$wallpaper" -m fill &

# Убиваем предыдущий процесс swaybg, чтобы не было утечек памяти
pkill -o swaybg

