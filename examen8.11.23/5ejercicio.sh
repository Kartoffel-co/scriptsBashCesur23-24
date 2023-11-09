#!/bin/bash
if [ -f ./ciudades ]
    then
        rm ciudades
fi
if [ -f ./ciudad ]
    then
        rm ciudad
fi
if [ -f ./ciudad ]
    then
        rm ciuadadesLinea
fi


dialog --title "Ciudades" --inputbox "introduce una ciudad pulsa "cancelar" para acabar" 10 50 2>ciudad
ciudad=$(<ciudad)
echo $ciudad>>ciudades
ciudadesLinea=$ciudad
while [ ! -z $ciudad ]
    do
        dialog --title "Ciudades" --inputbox "introduce una ciudad pulsa "cancelar" para acabar" 10 50 2>ciudad
        ciudad=$(<ciudad)
        echo $ciudad>>ciudades
        ciudadesLinea=$ciudadesLinea,$ciudad
done
dialog --title "Ciudades en columna" --textbox ./ciudades 60 40
echo $ciudadesLinea>ciudadesLinea

#esto lo que hace es quitar la ultima coma
echo $ciudadesLinea | cut -c 1-$(echo $(wc -c ciudadesLinea | cut -c 1-3)-2 | bc)>ciudadesLinea 

dialog --title "Ciudades en linea" --textbox ./ciudadesLinea 30 60
