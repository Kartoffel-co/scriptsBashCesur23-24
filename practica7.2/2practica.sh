#!/bin/bash
for i in {0..9}
    do
        read -p "introduce 10 numeros " n
        numeros[$i]=$n
    done

for i in {9..0}
    do
        echo ${numeros[$i]}
    done