#!/bin/bash
if [ -f ./numeros ]
    then
        rm numeros
fi
for i in {0..9}
    do
        read -p "introduce 10 numeros " n
        numeros[$i]=$n
done

for i in {0..9}
    do
        echo ${numeros[$i]} >> numeros
done

echo el numero menor es $(sort -n numeros | sed -n '1p')
echo el numero mayor es $(sort -n numeros | sed -n ${#numeros[@]}p)
rm numeros