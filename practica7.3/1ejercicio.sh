#!/bin/bash
source ./colors
cont=0
limit=$#
listar=""

if [ $limit -eq 0 ]
    then
        echo -e "${RED}ERROR: no se ha pasado ningun parametro"
        exit
fi

while [[ $cont -le $limit ]]
    do
        listar=$listar,$1
        shift
        cont=$(($cont+1))
done
echo $listar