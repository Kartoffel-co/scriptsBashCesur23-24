#!/bin/bash
source colors

function random(){
    local resultado=$(( ($RANDOM % $1) + $2))
    echo $resultado
}

for i in {0..100}
    do
        multiplo7[$i]=$(random 100 1)
done

for i in {0..100}
    do  
        if [ $((${multiplo7[$i]}%7)) -eq 0 ]
            then
                echo $i. ${multiplo7[$i]}
        fi
done