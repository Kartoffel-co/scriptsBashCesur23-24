#!/bin/bash
source colors

numeroHermano() {
    cont=1 
    cont2=0
    while [[ $cont -lt $1 ]]
        do
            resto=$(($1%$cont)) 
            if [[ $resto -eq 0 ]]
                then
                    divisores[$cont2]=$cont
                    cont2=$(($cont2+1))
            fi
        cont=$(($cont+1))
    done

    cont=0
    suma=0
    while [[ $cont -lt ${#divisores[@]} ]]
        do
            suma=$(($suma+${divisores[$cont]}))
            cont=$(($cont+1))
    done
    
    echo $suma 
}

read -p "Primer numero " numero1
read -p "Segundo numero " numero2
read -p "Tercer numero " numero3

if [[ $(numeroHermano $numero1) -eq $numero2 ]]
    then
        echo "$numero1 y $numero2 son hermanos"
    else
        if [[ $(numeroHermano $numero1) -eq $numero3 ]]
            then
                echo "$numero1 y $numero3 son hermanos"
        fi
fi

if [[ $(numeroHermano $numero2) -eq $numero3 ]]
    then
        echo "$numero2 y $numero3 son hermanos"
fi
