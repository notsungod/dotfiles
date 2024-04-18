#!/bin/bash
wal -q -i "$HOME/Pictures/favourites"
source "$HOME/.cache/wal/colors.sh"
cp ~/.cache/wal/colors-waybar.css ~/.config/waybar
swww img $wallpaper --transition-step 20 --transition-fps=20 
~/.config/waybar/reload.sh
