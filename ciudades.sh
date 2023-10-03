#/bin/bash

read -p "escribe el nombre de ciudades termina con fin " ciudad
cont=0
while [ $ciudad != "fin" ]
do
    ciudades[$cont]=$ciudad
    read -p "escribe el nombre de ciudades termina con fin " ciudad
    let cont=$cont+1
done
cont2=0
while [ ${#ciudades[@]} -ge $cont2 ]
do
    echo ${ciudades[$cont2]}
    let cont2=$cont2+1
done