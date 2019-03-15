#!/bin/bash

directorio=$1
existe=ls $directorio 2>/dev/null | wc -c
contador=0

if [ $existe -gt 0 ]; then

  for line in ls $directorio/*.txt; do
	echo "Borrando el archivo $line"
	contador=$(expr $contador + 1)
  done
	echo "Número de ficheros borrados $contador"
else
	echo "El directorio no existe"
fi
