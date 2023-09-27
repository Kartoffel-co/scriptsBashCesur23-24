function sumar(){
local num1 num2
let num1=$1
let num2=$2
suma=0
let suma=$num1+$num2
return $suma
}
read -p "n1 " n1
read -p "n2 " n2
sumar $n1 $n2
echo $suma
