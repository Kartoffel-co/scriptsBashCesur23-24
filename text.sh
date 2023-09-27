read -p "introduce un texto" text
while [[ ! -z $texto ]]
do
read -p "introduce un texto" text
echo "no has introducido un texto"
done
echo "has introducido un texto"
