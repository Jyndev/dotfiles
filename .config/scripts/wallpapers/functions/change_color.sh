#!/bin/bash
# Función para cambiar el color del fondo usando `wal`
change_color() {
    wal --cols16 -i "$1" &
    sleep 1
}