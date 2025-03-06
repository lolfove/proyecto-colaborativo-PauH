#!/bin/bash

echo "Menú interactivo:"
echo "1) Mostrar archivos"
echo "2) Mostrar fecha y hora"
echo "3) Salir"

read -p "Selecciona una opción: " opcion

case $opcion in
    1) ls ;;
    2) date ;;
    3) echo "Adiós"; exit ;;
    *) echo "Opción no válida";;
esac
