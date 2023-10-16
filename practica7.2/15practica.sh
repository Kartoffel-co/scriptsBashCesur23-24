#!/bin/bash
if [ -f ./frutas ]
    then
        rm frutas
fi
read -p "introduce una fruta " fruta
while [ $fruta != "fin" ]
    do
        echo $fruta >> frutas
        read -p "introduce una fruta o fin para terminar " fruta
        exec 4<frutas
done
