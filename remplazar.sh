#!/bin/bash

# Archivo de entrada
archivo="datos.txt"

# Reemplazar "Computadora" por "Ordenador" en líneas con el patrón "AMD"
sed -i '/AMD/s/Computadora/Ordenador/g' "$archivo"

# Ordenar el archivo por la columna 2 (Ubicación) y mostrar únicamente la quinta fila
awk -F',' '{print $5, $3, $1, $2, $4}' "$archivo" | sort -t',' -k2 | sed -n '5p'


