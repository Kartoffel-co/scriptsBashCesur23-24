#/bin/bash

echo "dos numero"
read n1
read n2
clear
if [[ $n1 -gt $n2 ]]
then
	echo "$n1 es mayor q $n2"
else
	echo "$n2 es mayor q $n1"
fi
