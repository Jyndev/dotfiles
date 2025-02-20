#!/bin/bash

# Funcion que se encarga de cambiar solo el fondo de pantalla
change_video() {
    # Si el argumento es wallpaper, se detiene el proceso de swww-daemon
    if [ $METODO_FONDO == "wallpaper" ]
    then
        pkill swww-daemon &
    fi

    # Seleccionamos un video
    local video
    video=$(select_file "Selecciona un video", "Video" "*.mp4")

    if [ "$video" == '' ]
    then
        notify "No se ha seleccionado ningun video"
        return 1
    fi

    name_video="${video##*/}" # Obtiene el nombre del video

    rm -r ~/.cache/liveWallpaper/* # Elimina los archivos dentro de la cache
    cp $video ~/.cache/liveWallpaper/wallpaper.mp4 # Copia el video a la cache

    echo "METHOD=video" > $ARCHIVO_CONFIGURACION
    
    nohup mpvpaper -o "--loop-file=inf" '*' ~/.cache/liveWallpaper/wallpaper.mp4 > /dev/null 2>&1 & disown

    notify "Se ha cambiado a un fondo de pantalla con video"

}
