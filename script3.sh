#!/bin/bash

total=$(wc -l precipitaciones.txt | awk '{print $1}')
tag=1

for tag in seq 1 1 $total; do
    tag=$(head -n $tag precipitaciones.txt | tail -n 1)
    dias=echo $tag | awk '{print $1}'
    precipitacion=echo $tag | awk '{print $2}'

    if [ $precipitacion -eq 0 ]; then
        dia=$(expr $dias / 7)
        dia2=$(expr $dias -7 * $dia)
    if [ $dia2 -eq 1 ]; then
            echo "Lunes"
    elif [ $dia2 -eq 2 ]; then
            echo "Martes"
    elif [ $dia2 -eq 3 ]; then
            echo "Miércoles"
    elif [ $dia2 -eq 4 ]; then
            echo "Jueves"
    elif [ $dia2 -eq 5 ]; then
            echo "Viernes"
    elif [ $dia2 -eq 6 ]; then
            echo "Sabado"
    else
            echo "Domingo"
    fi
fi
    echo $tag
    echo $dia
    echo $dia2
    echo $precipitacion

done
