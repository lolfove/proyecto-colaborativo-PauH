#!/bin/bash

echo "Menú interactivo:"
echo "1) Mostrar archivos"
echo "2) Mostrar fecha y hora"
echo "3) Mostrar contenido de un archivo"
echo "4) Salir"

read -p "Selecciona una opción: " opcion

case $opcion in
    1) ls ;;
    2) date ;;
    3) 
        read -p "Introduce el nombre del archivo: " archivo
        if [[ -f "$archivo" ]]; then
            cat "$archivo"
        else
            echo "El archivo no existe."
        fi
        ;;
    4) echo "Adiós"; exit ;;
    *) echo "Opción no válida";;
esac
