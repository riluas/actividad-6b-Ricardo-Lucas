#!/bin/bash


fichero="precipitaciones.txt"
suma=0
contador=0
media=0

for line in `cat $fichero | awk '{print $2}'`; do
	contador=$(expr $contador + 1)
	suma=$((suma + $line))
done

media=$(expr $suma / $contador)

echo "La media de precipitaciones es $media"

