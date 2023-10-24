#!/bin/bash
source colors

if [ $# -ne 3 ]
    then
        echo -e "${RED}ERROR: solo puedes introducir 3 parametros"
        exit
fi

suma=$(echo $1+$2+$3 | bc)

media=$(echo "scale=2; $suma/3" | bc -l)

mediaEntera=$(echo "scale=0; $media*100" | bc -l )
mediaEntera=$(echo $mediaEntera | cut -c 1-$(echo ${#mediaEntera}-3 | bc))

if [ $mediaEntera -lt 500 ]
    then
        echo -e "${RED}La media es de $media"
        echo -e "${RED}Esta suspendido"
    else
        echo -e "${GREEN}La media es de $media"
        echo -e "${GREEN}Esta aprobado"
fi