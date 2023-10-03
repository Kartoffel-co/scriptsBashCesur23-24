#/bin/bash
mkdir ciudad
rm ./ciudad/ciudad.txt
touch ./ciudad/ciudad.txt
read -p "escribe el nombre de ciudades termina con fin " ciudad
cont=0
while [ $ciudad != "fin" ]
do
    echo  $ciudad >> ./ciudad/ciudad.txt
    read -p "escribe el nombre de ciudades termina con fin " ciudad
done
exec 4<./ciudad/ciudad.txt
read -u4 -d "" ciu
echo $ciu
exec 4<&-