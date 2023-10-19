#!/bin/bash
source colors
esNumero="^[a-zA-Z]+$"
nParametros=$#

if [ $nParametros -ne 3 ]
    then
        echo -e "${RED}ERROR\n${CYAN}No se han introducido parametros"
        exit
fi

if [[ $1 =~ $esNumero || $2 =~ $esNumero ]]
    then
        echo -e "${RED}ERROR\n${CYAN}No es un numero"
        exit
fi

case $3 in
    suma)
        echo $(($1+$2))
    ;;
    resta)
        echo $(($1-$2))
    ;;
    *)
        echo -e "${RED}ERROR\n${CYAN}La operacion tiene que ser ${MAGENTA}(suma/resta)"
    ;;
esac