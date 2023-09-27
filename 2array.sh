read -p "escribe un nombre " nombre
cont=0
while [ ! -z $nombre ]
do
    nombres[$cont]=$nombre
    read -p "escribe una nombre " nombre
    let cont=$cont+1
done
echo "el lista tiene" ${#nombres[@]}
echo "el lista contiene" ${nombres[@]}
echo "el primer nombre es" ${nombres[0]}
let cont=$cont-1
echo "el ultimo nombre es" ${nombres[$cont]}

cont2=0
while [ $cont -ge $cont2 ]
do
    echo ${nombres[$cont2]}
    let cont2=$cont2+1
done
