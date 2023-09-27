read -p "escribre un texto " texto
echo $texto>prueba_texto
let numero=$(wc -m prueba_texto | cut -c 1-2)
rm prueba_texto
clear
let numero=$numero-1
echo "hay "$numero" caracteres "
