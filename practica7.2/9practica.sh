#!/bin/bash
if [ -f ./examenAnterior.txt ]
    then
        rm numerosRandom
fi

function random(){
    local resultado=$(( ($RANDOM % $1) + $2))
    echo $resultado
}

for i in {0..199}
    do
        echo $(random 1000 1) >> numerosRandom
done
sort -n numerosRandom
rm numerosRandom