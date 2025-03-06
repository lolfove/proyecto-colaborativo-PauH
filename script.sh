#!/bin/bash

echo "Menú interactivo:"
echo "1) Mostrar archivos"
echo "2) Mostrar fecha y hora"
echo "3) Calcular el factorial de un número"
echo "4) Salir"

read -p "Selecciona una opción: " opcion

case $opcion in
    1) ls ;;
    2) date ;;
    3) 
        read -p "Introduce un número: " numero
        factorial=1
        for (( i=1; i<=numero; i++ )); do
            factorial=$((factorial * i))
        done
        echo "El factorial de $numero es $factorial"
        ;;
    4) echo "Adiós"; exit ;;
    *) echo "Opción no válida";;
esac
