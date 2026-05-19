#!/bin/bash

mkdir -p "$HOME/Imagenes/Capturas de pantalla/"

grim -g "$(slurp -d)" -t png - | tee ~/Imagenes/'Capturas de pantalla'/$(date +'%T.png') | wl-copy -t image/png
