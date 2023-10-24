#!/bin/bash
source colors

if [ -f ./alumnos ]
    then
        rm alumnos
fi

read -p "Nombre del alumno: " alumno1
read -p "Introduce la nota de la primera evalucion: " alumno1Nota[0]
read -p "Introduce la nota de la tercera evalucion: " alumno1Nota[1]
read -p "Introduce la nota de la segunda evalucion: " alumno1Nota[2]
echo $alumno1 >> alumnos

read -p "Nombre del alumno: " alumno2
read -p "Introduce la nota de la primera evalucion: " alumno2Nota[0]
read -p "Introduce la nota de la tercera evalucion: " alumno2Nota[1]
read -p "Introduce la nota de la segunda evalucion: " alumno2Nota[2]
echo $alumno2 >> alumnos

read -p "Nombre del alumno: " alumno3
read -p "Introduce la nota de la primera evalucion: " alumno3Nota[0]
read -p "Introduce la nota de la tercera evalucion: " alumno3Nota[1]
read -p "Introduce la nota de la segunda evalucion: " alumno3Nota[2]
echo $alumno3 >> alumnos

mediaDecimales() {
    suma=$(echo $1+$2+$3 | bc)
    media=$(echo "scale=2; $suma/3" | bc -l)
    echo $media
}

promociona() {
    mediaEntera=$(echo "scale=0; $1*100" | bc -l )
    mediaEntera=$(echo $mediaEntera | cut -c 1-$(echo ${#mediaEntera}-3 | bc))

    if [ $mediaEntera -lt 500 ]
        then
            echo No
        else
            echo Si
    fi
}

alumno1Media=$(mediaDecimales ${alumno1Nota[0]} ${alumno1Nota[1]} ${alumno1Nota[2]})
alumno2Media=$(mediaDecimales ${alumno2Nota[0]} ${alumno2Nota[1]} ${alumno2Nota[2]})
alumno3Media=$(mediaDecimales ${alumno3Nota[0]} ${alumno3Nota[1]} ${alumno3Nota[2]})

alumno1Promo=$(promociona $alumno1Media)
alumno2Promo=$(promociona $alumno2Media)
alumno3Promo=$(promociona $alumno3Media)

echo "***********************************************************"
echo "| 1Ev | 2Ev | 3Ev | Media | Promociona | Alumno           |"
echo "***********************************************************"
echo "|  ${alumno1Nota[0]}  |  ${alumno1Nota[1]}  |  ${alumno1Nota[2]}  |  $alumno1Media |     $alumno1Promo     | $alumno1"
echo "|  ${alumno2Nota[0]}  |  ${alumno2Nota[1]}  |  ${alumno2Nota[2]}  |  $alumno2Media |     $alumno2Promo     | $alumno2"
echo "|  ${alumno3Nota[0]}  |  ${alumno3Nota[1]}  |  ${alumno3Nota[2]}  |  $alumno3Media |     $alumno3Promo     | $alumno3"
echo "***********************************************************"
