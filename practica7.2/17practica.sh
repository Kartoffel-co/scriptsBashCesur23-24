#!/bin/bash
operacion() {
    local resultado=$(echo $1$3$2 | bc)
    echo $resultado
}
case $3 in
    suma)
        echo el resultado es $(operacion $1 $2 +)
    ;;
    resta)
        echo el resultado es $(operacion $1 $2 -)
    ;;
    multiplicacion)
        echo el resultado es $(operacion $1 $2 "*")
    ;;
    resto)
        echo el resultado es $(operacion $1 $2 %)
    ;;
    *)
        echo "debes introducir el los 2 primeros parametros los numeros a operar"
        echo "y en el tercer parametro (suma|resta|multiplicacion|resto)"
esac