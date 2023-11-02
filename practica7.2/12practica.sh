#!/bin/bash
rm compiladoFicheros.txt
cont=0
limit=$#
while [[ $cont -ne $limit ]]
    do
        cat $1 >> compiladoFicheros.txt
        shift $1
    cont=$(($cont+1))
done
cat compiladoFicheros.txt