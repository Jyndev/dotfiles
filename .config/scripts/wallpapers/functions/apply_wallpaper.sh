#!/bin/bash

# Función para cambiar el fondo de pantalla con `swww`
wallpaper() {
    swww img --transition-type outer --transition-pos 0.854,0.977 --transition-step 90 "$1"
}
