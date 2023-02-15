#!/bin/bash
# 
# TODO:
# Falta que la ventana que se abre sea flotante y de determinada medida

dmenu=$(echo -e "reproducir\ncanales\nvideo\nmusica\nanime" | dmenu -l 5 -i -p "Stream:")


case "$dmenu" in
    "reproducir") mpv $(xclip -o) ;;
    "canales") ytfzf -D -c S ;;
    "video") st -e ytfzf -sf ;;
    "musica") st -e ytfzf -sm ;;
    "anime") st -e ani-cli ;;
esac

