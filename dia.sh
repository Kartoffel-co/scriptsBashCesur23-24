let hoy=$(date +%d)
echo $hoy
read -p "q dias es hoy en numero " dia
if [[ $hoy -eq $dia ]]
then
	echo "es correcto hoy es " $hoy
else
	echo "no es correcto hoy es " $hoy
fi
