#!/bin/bash

directorio=$1
contador=0
for linea in `ls $directorio/*.txt` ; do

	echo "Borrando Fichero $linea";
	contador=$(expr $contador + 1);
done

echo "Nº de ficheros borrados: $contador"
