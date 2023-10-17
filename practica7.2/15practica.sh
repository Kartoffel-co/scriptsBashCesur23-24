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
done
exec 4<frutas

cont=0
while [ $cont -ne $(echo $(wc -l frutas | cut -b 1)-1 | bc) ]
    do
        read -u4 fruta
        frutas[$cont]=$fruta
        cont=$(($cont+1))
done
exec 4<&-

frutas[2]=chrimoya

if [ -f ./frutas ]
    then
        rm frutas
fi

cont=0
while [ $cont -ne ${#frutas[@]} ]
    do
        echo ${frutas[$cont]} >> frutas
        cont=$(($cont+1))
done
cat frutas