#!/bin/bash

read -p "Introduce un numero: " numero

while [[ $numero -eq 0 ]]
    do
        read -p "Introduce un numero: " numero
done

if [[ $numero -eq 10 ]]
    then
        echo "Es igual que 10"
    else
        if [[ $numero -gt 10 ]]
            then
                echo "Es mayor que 10"
            else
                echo "Es menor que 10"
        fi
fi

if [[ $(($numero%2)) -eq 0 ]]
    then
        echo "es par"
    else
        echo "es impar"
fi