#!/bin/bash
if [ $# = 0 ]
    then
        cat ./ayuda
fi
cont=0
limit=$#
listar=""
while [[ $cont -le $limit ]]
    do
        listar=$listar,$1
        shift
        cont=$(($cont+1))
done
echo $listar