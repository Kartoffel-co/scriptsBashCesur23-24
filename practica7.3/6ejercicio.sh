#!/bin/bash
source colors
read -p "Introduce la nota de la tercera evalucion: " tercera
read -p "Introduce la nota de la primera evalucion: " primera
read -p "Introduce la nota de la segunda evalucion: " segunda

suma=$(echo $primera+$segunda+$tercera | bc)

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