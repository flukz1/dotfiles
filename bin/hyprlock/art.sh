#!/usr/bin/bash
url=$(playerctl metadata mpris:artUrl)
artist=$(playerctl metadata xesam:artist)
title=$(playerctl metadata xesam:title)
metadata=$(printf "$artist - $title")

if [ $url == "No player found" ]
then
  exit
elif [ -f /home/flukker/.cache/albumart/"$metadata".png ]
then
  echo /home/flukker/.cache/albumart/"$metadata".png
else
  curl -s $url -o /home/flukker/.cache/albumart/"$metadata"
  magick /home/flukker/.cache/albumart/"$metadata" /home/flukker/.cache/albumart/"$metadata".png
  rm /home/flukker/.cache/albumart/"$metadata"
  echo /home/flukker/.cache/albumart/"$metadata".png
fi
