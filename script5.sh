#!/bin/bash

win=0
lin=0

proWin=0
proLin=0

contador=0
contador2=0
sumaPro=0

for linea in `awk '{print $2}' listado.txt` ; do

 if [ $linea = "Windows" ] ; then
        contador=$(expr $contador + 1)
        win=$(expr $win + 1) 
        sumaPro=$(head -n $contador listado.txt | tail -n 1 | awk '{print $3}')
        proWin=$(expr $proWin + $sumaPro)

 elif [ $linea = "Linux" ] ; then
        contador=$(expr $contador + 1)
        lin=$(expr $lin + 1)
        sumaPro=$(head -n $contador listado.txt | tail -n 1 | awk '{print $3}')
        proLin=$(expr $proLin + $sumaPro)
 fi

done


echo "Linux $lin $proLin"
echo "Windows $win $proWin"
