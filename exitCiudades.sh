#/bin/bash
read -p "escribe una ciudad" ciudad
cont=0
if [[ $ciudad = "madrid" ]]
then
    exit
fi
while [ $ciudad != "fin" ]
do
    ciudades[$cont]=$ciudad
    read -p "escribe una ciudad" ciudad
    if [[ $ciudad = "madrid" ]]
    then
        exit
    fi
    let cont=$cont+1   
done