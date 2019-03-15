#!/bin/bash
num=$1


fichero="nombres.txt"

for line in `cat $fichero`; do
	mkdir "$line"
	contador=1
	while [ $contador -le $num ]; do
		mkdir $line/"personal$contador"
		contador=$(expr $contador + 1)
	done
done
