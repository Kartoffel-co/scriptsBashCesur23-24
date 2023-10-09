#!/bin/bash
simbolo=(+ "*" - /)
function random(){
    local resultado=$(( ($RANDOM % $1) + $2))
    echo $resultado
}
case $1 in
  bajo)
    echo "bajo"
    digitos=10
        for i in {0..9}
    do
      simb=${simbolo[$(random 4 0)]}
      rand1=$(random $digitos 1)
      rand2=$(random $digitos 1)
      while [[ $simb = "/" && $rand1 -eq 0 ]]
      do
        rand1=$(random $digitos 1)
      done
      while [[ $simb = "/" && $rand2 -eq 0 ]]
      do
        rand2=$(random $digitos 1)
      done
      while [[ $simb = "/" && $rand1 -gt $rand2 ]]
      do
        rand1=$(random $digitos 1)
      done
      result2=$(echo $rand1$simb$rand2 | bc)
      echo $result2
      read -p "cuanto es $rand1$simb$rand2 " result1
      if [ $result1 -eq $result2 ]
      then
        puntuacion[$i]=10
      else
        puntuacion[$i]=0
      fi
    done
    cont=0
    while [ $cont -lt ${#puntuacion[@]} ]
    do
      suma=$((suma + ${puntuacion[$cont]}))
      cont=$(($cont+1))
    done
    echo ${#puntuacion[@]}
    echo ${puntuacion[@]}
    echo $suma
    media=$(($suma / ${#puntuacion[@]}))
    echo "tu media ha sido de $media"
  ;;
  medio)
    echo "medio"
    digitos=100
        for i in {0..9}
    do
      simb=${simbolo[$(random 4 0)]}
      rand1=$(random $digitos 1)
      rand2=$(random $digitos 1)
      while [[ $simb = "/" && $rand1 -eq 0 ]]
      do
        rand1=$(random $digitos 1)
      done
      while [[ $simb = "/" && $rand2 -eq 0 ]]
      do
        rand2=$(random $digitos 1)
      done
      while [[ $simb = "/" && $rand1 -gt $rand2 ]]
      do
        rand1=$(random $digitos 1)
      done
      result2=$(echo $rand1$simb$rand2 | bc)
      echo $result2
      read -p "cuanto es $rand1$simb$rand2 " result1
      if [ $result1 -eq $result2 ]
      then
        puntuacion[$i]=10
      else
        puntuacion[$i]=0
      fi
    done
    cont=0
    while [ $cont -lt ${#puntuacion[@]} ]
    do
      suma=$((suma + ${puntuacion[$cont]}))
      cont=$(($cont+1))
    done
    echo ${#puntuacion[@]}
    echo ${puntuacion[@]}
    echo $suma
    media=$(($suma / ${#puntuacion[@]}))
    echo "tu media ha sido de $media"
  ;;
  alto)
    echo "alto"
    digitos=1000
        for i in {0..9}
    do
      simb=${simbolo[$(random 4 0)]}
      rand1=$(random $digitos 1)
      rand2=$(random $digitos 1)
      while [[ $simb = "/" && $rand1 -eq 0 ]]
      do
        rand1=$(random $digitos 1)
      done
      while [[ $simb = "/" && $rand2 -eq 0 ]]
      do
        rand2=$(random $digitos 1)
      done
      while [[ $simb = "/" && $rand1 -gt $rand2 ]]
      do
        rand1=$(random $digitos 1)
      done
      result2=$(echo $rand1$simb$rand2 | bc)
      echo $result2
      read -p "cuanto es $rand1$simb$rand2 " result1
      if [ $result1 -eq $result2 ]
      then
        puntuacion[$i]=10
      else
        puntuacion[$i]=0
      fi
    done
    cont=0
    while [ $cont -lt ${#puntuacion[@]} ]
    do
      suma=$((suma + ${puntuacion[$cont]}))
      cont=$(($cont+1))
    done
    echo ${#puntuacion[@]}
    echo ${puntuacion[@]}
    echo $suma
    media=$(($suma / ${#puntuacion[@]}))
    echo "tu media ha sido de $media"
  ;;
  *)
    echo "el nivel de difilcudad que has seleccionado no existe"
    echo "debes escribir bajo,medio o alto"
esac