#!/bin/bash
source colors

if [[ $1 =~ ^[0-9]+$ ]]
    then
        echo "quit" | bc #esto lo uso para que no aparezca ninguna linea en blanco
    else
        echo -e "${RED}ERROR: solo se puede poner numero enteros positivos"
fi

echo $(echo "n=$1; factorial=1; for (i = 1; i <= n; i++) factorial *= i; factorial" | bc)

