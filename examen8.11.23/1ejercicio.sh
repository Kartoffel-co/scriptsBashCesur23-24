#!/bin/bash
source colors

read -p "Introduce una nota " nota

while [[ $nota -lt 1 || $nota -gt 10 ]]
    do
        read -p "Introduce una nota " nota
done

if [[ $nota -ge 1 && $nota -le 4 ]]
    then
        echo -e "${RED}Insuficiente tu nota es $nota"
fi

if [[ $nota -eq 5 ]]
    then
        echo -e "${YELLOW}Suficiente tu nota es $nota"
fi

if [[ $nota -ge 6 && $nota -le 7 ]]
    then
        echo -e "${CYAN}Bien tu nota es $nota"
fi

if [[ $nota -eq 8 ]]
    then
        echo -e "${MAGENTA}Notable tu nota es $nota"
fi

if [[ $nota -ge 9 && $nota -le 10 ]]
    then
        echo -e "${GREEN}Sobresaliente tu nota es $nota"
fi
