#!/bin/bash
source colors

function random(){
    local resultado=$(( ($RANDOM % $1) + $2))
    echo $resultado
}

minusculas=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "ñ" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")
mayusculas=("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "Ñ" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")
simbolos=("!" "@" "#" "$" "%" "^" "&" "(" ")" "-" "_" "+" "=" "[" "]" "{" "}" ";" ":" "," "." "<" ">" "?" "/" "|" "'" "~")
numeros=(0 1 2 3 4 5 6 7 8 9)

caracter() {
    case $1 in
        0)
            echo ${minusculas[$(random 27 0)]}
        ;;
        1)
            echo ${mayusculas[$(random 27 0)]}
        ;;
        2)
            echo ${simbolos[$(random 29 0)]}
        ;;
        3)
            echo ${numeros[$(random 10 0)]}
        ;;
        *)
            echo -e "${RED}ERROR"
        ;;
    esac
}

read -p "de que longitud quiere la contraseña: " limite
# for i in {1..50}
#     do
#         contrasena=$contrasena$(caracter $(random 4 0))
# done
# echo $contrasena

cont=0
while [ $cont -lt $limite ]
    do
        contrasena=$contrasena$(caracter $(random 4 0))
        cont=$(($cont+1))
done
echo $contrasena