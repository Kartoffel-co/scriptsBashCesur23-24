echo "introduce tres numeros"
read numero1
read numero2
read numero3
#numero1=$(cut -c 1 $numeros)
#numero2=$(cut -c 2 $numeros)
#numero3=$(cut -c 3 $numeros)
if [ $numero1 -le $numero2 && $numero2 -le $numero3 ]
then
	echo "los numeros no estan ordenados"
else
	echo "los numeros estan ordenados"
fi
