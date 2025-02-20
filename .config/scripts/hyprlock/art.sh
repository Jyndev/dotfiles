#!/usr/bin/bash
url=$(playerctl metadata mpris:artUrl)
artist=$(playerctl metadata xesam:artist)
title=$(playerctl metadata xesam:title)
metadata=$(printf "$artist - $title")

if [ $url == "No player found" ]
then
  exit
elif [ -f ~/.cache/albumart/"$metadata".png ]
then
  echo ~/.cache/albumart/"$metadata".png
else
  curl -s $url -o ~/.cache/albumart/"$metadata"
  magick ~/.cache/albumart/"$metadata" /home/jyndev/.cache/albumart/"$metadata".png
  rm ~/.cache/albumart/"$metadata"
  echo ~/.cache/albumart/"$metadata".png
fi
