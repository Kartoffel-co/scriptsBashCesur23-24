#!/bin/bash
source colors

if [ -f ./cronometro ]
    then
        rm cronometro
fi

read -p "Como te llamas: " nombre
clear
echo -e "${YELLOW}*************************************************" >> cronometro
echo -e "${CYAN}Cronometro ofrecido para ${RED}$nombre" >> cronometro
echo -e "${MAGENTA}               |000|" >> cronometro
echo -e "${YELLOW}*************************************************${RESET}" >> cronometro

cont=0
while true
    do
        if [ $cont -lt 10 ]
            then
                sed "s/|[^|]*|/|00$cont|/g" cronometro
        fi

        if [ $cont -ge 10 ]
            then
                sed "s/|[^|]*|/|0$cont|/g" cronometro
        fi

        if [ $cont -ge 100 ]
            then
                sed "s/|[^|]*|/|$cont|/g" cronometro
        fi
        sleep 1
        cont=$(($cont+001))
        clear
done
