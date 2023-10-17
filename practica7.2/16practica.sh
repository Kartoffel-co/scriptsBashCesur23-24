#!/bin/bash
read -p "introduce numero1" n1
read -p "introduce numero2" n2

echo la suma es $(($n1+$n2))
echo la resta es $(($n1-$n2))
echo la multiplicacion es $(($n1*$n2))
echo el cociente es $(($n1/$n2))
echo el resto es $(($n1%$n2))
echo el exponente es $(($n1**$n2))