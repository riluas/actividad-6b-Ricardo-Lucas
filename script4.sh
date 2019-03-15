#!/bin/bash

totalPares=0
totalImpares=0
listaPares=""
listaImpares=""

for linea in `cat numeros.txt`; do
	if [ $(expr $linea % 2) -eq 0 ]; then

		listaPares="$listaPares $linea"
		totalPares=$(expr $totalPares + $linea)
	else

		listaImpares="$listaImpares $linea"
		totalImpares=$(expr $totalImpares + $linea)
	fi
done

echo "Imprimiendo lista de pares: $listaPares"
echo "El total de los numeros pares es $totalPares"
echo "Imprimiendo lista de impares: $listaImpares"
echo "El total de los numeros impares es $totalImpares"
