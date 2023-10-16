#!/bin/bash
for i in {1..2000}
    do
    numerosEnteris[$i]=$i
done

for i in {1..2000}
    do
        resto=$((${numerosEnteris[$i]}%3))
    if [[ $resto -eq 0 ]]
        then
            echo la posicion es $i , ${numerosEnteris[$i]}
        fi
done