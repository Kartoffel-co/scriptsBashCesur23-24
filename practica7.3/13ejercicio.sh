#!/bin/bash
source colors

restaFecha() {
    fechaHoy=$(date -d "$(date +%Y-%m-%d)" +%s)
    local fechaNacimiento=$(date -d "$1" +%s)

    diferencia=$(($fechaHoy-$fechaNacimiento))
    echo $diferencia
}

convertidorSegundos() {
    minutos=$(echo "scale=2; $1/60" | bc)
    horas=$(echo "scale=5; $1/3600" | bc)
    case $2 in
        1)
            echo -e "${MAGENTA}$1 segundos son $minutos minutos"
        ;;
        2)
            echo -e "${MAGENTA}$1 segundos son $horas horas"
        ;;
        *)
            echo -e "${MAGENTA}$1 segundos"
        ;;
    esac
}

calcularBisiesto() {
    if (( ($1 % 4 == 0 && $1 % 100 != 0) || $1 % 400 == 0 ));
        then
            echo "$1 es un año bisiesto."
        else
            echo "$1 no es un año bisiesto."
fi
}

echo -e "${YELLOW}████████████████████████████████████████████████████████████████████████████████████████"
echo -e "${YELLOW}█${RESET} ${RED}Este programa le ofrece tres calculos distintos enfocados al tiempo. Marque          ${YELLOW}█"
echo -e "${YELLOW}█${RESET} ${MAGENTA}1.-${RESET} ${CYAN}Para calcular el numero de segundos que han pasado desde su nacimiento hasta hoy ${YELLOW}█"
echo -e "${YELLOW}█${RESET} ${MAGENTA}2.-${RESET} ${CYAN}Para pasar segundos a horas/minutos/segundos                                     ${YELLOW}█"
echo -e "${YELLOW}█${RESET} ${MAGENTA}3.-${RESET} ${CYAN}Para calcular siun año es bisiesto                                               ${YELLOW}█"
echo -e "${YELLOW}████████████████████████████████████████████████████████████████████████████████████████${CYAN}"
read opcion
case $opcion in
    1)
        read -p "Cual es tu año de nacimiento XXXX : " ano
        while [[ $ano -lt 1 ]]
            do
                read -p "Cual es tu año de nacimiento XXXX : " ano
        done
        read -p "Cual es tu mes de nacimiento XX : " mes
        while [[ $mes -lt 1 || $mes -gt 12 ]]
            do
                read -p "Cual es tu mes de nacimiento XX : " mes
        done
        read -p "Cual es tu dia de nacimiento XX : " dia
        while [[ $dia -lt 1 || $dia -gt 30 ]]
            do
                read -p "Cual es tu dia de nacimiento XX : " dia
        done
        fechaNacimiento=$ano-$mes-$dia
        echo -e "${MAGENTA}Han pasado $(restaFecha $fechaNacimiento) segundos"
    ;;
    2)
        read -p "Cuantos segundos quiere convertir: " segundos
        echo $(convertidorSegundos $segundos 1)
        echo $(convertidorSegundos $segundos 2)
        echo $(convertidorSegundos $segundos)
    ;;
    3)
        read -p "Dime un año XXXX : " ano
        while [[ $ano -lt 1 ]]
            do
                read -p "Dime un año XXXX : " ano
        done

        echo -e "${MAGENTA}$(calcularBisiesto $ano)"
    ;;
    *)
        echo -e "${RED}ERROR: debes elegir 1, 2 o 3"
    ;;
esac