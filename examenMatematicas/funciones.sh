# funcion para calcular numeros aleatorios
function random(){
    local resultado=$(($RANDOM % $1))
    echo $resultado
}
echo $(random 10)