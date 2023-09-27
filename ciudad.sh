read -p "introduce el nombre de una ciudad " ciudad
while [ $ciudad != "barcelona" ]
do
echo "la ciudad es incorrecta"
read -p "introduce el nombre de una ciudad " ciudad
done
echo "la ciudad es barcelona"
