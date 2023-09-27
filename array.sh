#read -p "cuantas futras quieres introducir" nFrutas
#cont=0
#while [ $cont -ne $nFrutas ]
#do
#    read -p "escribe una fruta" fruta
#    frutas[$cont]=$fruta
#    let cont=$cont+1
#done
#echo "la lista tiene" ${#frutas[@]}
#echo "la lista contiene" ${frutas[@]}
#echo "la primera fruta es" ${frutas[0]}
#let cont=$cont-1
#echo "la ultima fruta es" ${frutas[$cont]}

read -p "escribe una fruta" fruta
cont=0
while [ $fruta != "fin" ]
do
    frutas[$cont]=$fruta
    read -p "escribe una fruta" fruta
    let cont=$cont+1
done
echo "la lista tiene" ${#frutas[@]}
echo "la lista contiene" ${frutas[@]}
echo "la primera fruta es" ${frutas[0]}
let cont=$cont-1
echo "la ultima fruta es" ${frutas[$cont]}