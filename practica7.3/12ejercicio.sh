#!/bin/bash
source colors

if [ -f ./random ]
    then
        rm random
fi

for i in {0..10000}
    do
        echo $(($RANDOM%1000)) >> random
done

gnuplot -e "set term png;set out 'random.png';set xlabel 'Numeros';set ylabel 'Frecuencia';plot 'random' with point"
