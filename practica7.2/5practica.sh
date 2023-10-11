#!/bin/bash
for i in {1..2000}
    do
        numeros[$i]=$i
done

post=0
cont=0
while [ $cont -ne ${#numeros[@]} ]
    do
        num=$( echo ${numeros[$cont]}%2 | bc )
        if [[ $num -ne 0 ]]
            then
                numerosImpares[$post]=${numeros[$cont]}
            fi
done

echo ${numerosImpares[@]}
