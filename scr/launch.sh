#!/usr/bin/env bash

menu=$(echo -e "Capturas\nMedia\nlluvia\nSetkeyboard\nHexcolor\nDRAE" | dmenu -l 10 -i -p "Lanzador: ")

case "$menu" in
    "Capturas") st -e lf /home/lucas/Dropbox/img/screen/ ;;
    "Media") st -e lf /mnt/ ;;
    "lluvia") mpv ~/Dropbox/lluvia.ogg ;;
    "Setkeyboard") xset r rate 300 50 & setxkbmap -layout us -variant intl & ;;
    "Hexcolor") xcolor | tr -d '\n' | xclip -selection clipboard ;;
    "DRAE") st -e drae ;;
esac



