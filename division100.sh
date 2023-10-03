read -p "dime un numero mayor q 100 ñ" n
r=$(($RANDOM % 100))
echo "el numero aleatorio es "$r 
d=$(($n/$r))
echo "el resultado es "$d