#!/bin/bash
for i in {1..2000}
    do
    numerosEnteris[$i]=$i
done

for i in {2000..1}
    do
        resto=$((${numerosEnteris[$i]}%2))
    if [[ $resto -ne 0 ]]
        then
            echo la posicion es $i , ${numerosEnteris[$i]}
        fi
done