#!/bin/bash

# verificacion del fichero y creacion del mismo
if [ -f ./examenAnterior.txt ]
  then
    rm examenAnterior.txt
    touch examenAnterior.txt
  else
    touch examenAnterior.txt
fi

# lista de los operadores
simbolo=(+ "*" - /)

# funcion para generar numeros random
function random(){
    local resultado=$(( ($RANDOM % $1) + $2))
    echo $resultado
}

# case de los niveles de dificultad
case $1 in
  bajo)
    #nivel bajo 1 digito
    echo "nivel bajo"
    # numero de digitos que se va ha usar en las operaciones
    digitos=10
    # for para la repeticion de las operaciones
    for i in {0..9}
      do
        #randomizado de los simbolos
        simb=${simbolo[$(random 4 0)]}
        # primer numero random
        rand1=$(random $digitos 1)
        # segundo numero random
        rand2=$(random $digitos 1)

        #while para evitar division entre 0
        while [[ $simb = "/" && $rand1 -eq 0 ]]
          do
            rand1=$(random $digitos 1)
        done
        #while para evitar division entre 0
        while [[ $simb = "/" && $rand2 -eq 0 ]]
          do
            rand2=$(random $digitos 1)
        done
        # while para evitar decimales
        while [[ $simb = "/" && $rand1 -lt $rand2 ]]
          do
            rand1=$(random $digitos 1)
        done

        #numero del ejercicio
        echo ejercicio $(($i+1))
        
        #resiltado de la operacion
        result2=$(echo $rand1$simb$rand2 | bc)
        #echo de debug
        #echo $result2
        
        #read para recoger el resultado del usuario
        read -p "cuanto es $rand1$simb$rand2 " result1

        # se añade la operacion a un fichero
        echo  $rand1$simb$rand2 >> examenAnterior.txt

        # if para comparar resultados y ver si el usuario ha acertado
        if [ $result1 -eq $result2 ]
          then
            # se agrega 10 a la lista puntuacion
            puntuacion[$i]=10
            echo "bien"
          else
            puntuacion[$i]=0
            echo "mal"
        fi
    done
    
    #while para sumar la puntuacion
    cont=0
    while [ $cont -lt ${#puntuacion[@]} ]
      do
        suma=$((suma + ${puntuacion[$cont]}))
        cont=$(($cont+1))
    done

    # echos para debug de puntuacion
    #echo ${#puntuacion[@]}
    #echo ${puntuacion[@]}
    #echo $suma
    
    #calculo de la media
    media=$(($suma / ${#puntuacion[@]}))
    echo "tu media ha sido de $media"
    
    read -p "quieres repetir el mismo test(Y/N) " repetir
    
    # while para repetir el mismo examen de antes
    while [[ $repetir != "N" || $repetir != "n" ]]
      do
        exec 4<examenAnterior.txt
        
        #convierto el fichero en lista
        for i in {0..9}
          do
            read -u4 examenAnt[$i]
        done

        # debug
        #echo ${examenAnt[@]}
        #echo ${examenAnt[0]}

        #while para la pregunta de la operacion
        cont=0
        while [ $cont -lt ${#examenAnt[@]} ]
          do
            echo ejercicio $(($cont+1))
            # calculo el resultado
            resultRep2=$(echo ${examenAnt[$cont]} | bc)
            #echo $resultRep2
            read -p "cuanto es ${examenAnt[$cont]} " resultRep1

            # se comparan los resultados
            if [ $resultRep1 -eq $resultRep2 ]
              then
                puntuacionRep[$cont]=10
                echo "bien"
              else
                puntuacionRep[$cont]=0
                echo "mal"
            fi
            cont=$(($cont+1))
        done

        # suma de la puntuacion
        cont=0
        while [ $cont -lt ${#puntuacionRep[@]} ]
          do
            suma=$((suma + ${puntuacionRep[$cont]}))
            cont=$(($cont+1))
        done

        #calculo de la media
        media=$(($suma / ${#puntuacionRep[@]}))
        echo "tu media ha sido de $media"
      
      # pregunta si se quiere repetir el mismo test
      read -p "quieres repetir el mismo test(Y/N) " repetir
      exec 4<&- 
      done
    
    # pregunta si se quiere hacer otro test
    read -p "quieres hacer otro test (Y/N) " repetir

    # si la respuesta es N se termina el programa si la respuest es Y se elije dificulad y se comienza de cero
    if [ $repetir = "N" || $repetir != "n" ]
      then
        exit
      else
        read -p "q nivel quieres repetir (bajo/medio/alto) " nivel
        bash ./examen.sh $nivel
    fi
  ;;
  medio)
    # nivel medio 2 digitos
    echo "nivel medio"
    # numero de digitos que se va ha usar en las operaciones
    digitos=100
    # for para la repeticion de las operaciones
    for i in {0..9}
      do
        #randomizado de los simbolos
        simb=${simbolo[$(random 4 0)]}
        # primer numero random
        rand1=$(random $digitos 1)
        # segundo numero random
        rand2=$(random $digitos 1)

        #while para evitar division entre 0
        while [[ $simb = "/" && $rand1 -eq 0 ]]
          do
            rand1=$(random $digitos 1)
        done
        #while para evitar division entre 0
        while [[ $simb = "/" && $rand2 -eq 0 ]]
          do
            rand2=$(random $digitos 1)
        done
        # while para evitar decimales
        while [[ $simb = "/" && $rand1 -lt $rand2 ]]
          do
            rand1=$(random $digitos 1)
        done

        #numero del ejercicio
        echo ejercicio $(($i+1))
        
        #resiltado de la operacion
        result2=$(echo $rand1$simb$rand2 | bc)
        #echo de debug
        #echo $result2
        
        #read para recoger el resultado del usuario
        read -p "cuanto es $rand1$simb$rand2 " result1

        # se añade la operacion a un fichero
        echo  $rand1$simb$rand2 >> examenAnterior.txt

        # if para comparar resultados y ver si el usuario ha acertado
        if [ $result1 -eq $result2 ]
          then
            # se agrega 10 a la lista puntuacion
            puntuacion[$i]=10
            echo "bien"
          else
            puntuacion[$i]=0
            echo "mal"
        fi
    done
    
    #while para sumar la puntuacion
    cont=0
    while [ $cont -lt ${#puntuacion[@]} ]
      do
        suma=$((suma + ${puntuacion[$cont]}))
        cont=$(($cont+1))
    done

    # echos para debug de puntuacion
    #echo ${#puntuacion[@]}
    #echo ${puntuacion[@]}
    #echo $suma
    
    #calculo de la media
    media=$(($suma / ${#puntuacion[@]}))
    echo "tu media ha sido de $media"
    
    read -p "quieres repetir el mismo test(Y/N) " repetir
    
    # while para repetir el mismo examen de antes
    while [[ $repetir != "N" || $repetir != "n" ]]
      do
        exec 4<examenAnterior.txt
        
        #convierto el fichero en lista
        for i in {0..9}
          do
            read -u4 examenAnt[$i]
        done

        # debug
        #echo ${examenAnt[@]}
        #echo ${examenAnt[0]}

        #while para la pregunta de la operacion
        cont=0
        while [ $cont -lt ${#examenAnt[@]} ]
          do
            echo ejercicio $(($cont+1))
            # calculo el resultado
            resultRep2=$(echo ${examenAnt[$cont]} | bc)
            #echo $resultRep2
            read -p "cuanto es ${examenAnt[$cont]} " resultRep1

            # se comparan los resultados
            if [ $resultRep1 -eq $resultRep2 ]
              then
                puntuacionRep[$cont]=10
                echo "bien"
              else
                puntuacionRep[$cont]=0
                echo "mal"
            fi
            cont=$(($cont+1))
        done

        # suma de la puntuacion
        cont=0
        while [ $cont -lt ${#puntuacionRep[@]} ]
          do
            suma=$((suma + ${puntuacionRep[$cont]}))
            cont=$(($cont+1))
        done

        #calculo de la media
        media=$(($suma / ${#puntuacionRep[@]}))
        echo "tu media ha sido de $media"
      
      # pregunta si se quiere repetir el mismo test
      read -p "quieres repetir el mismo test(Y/N) " repetir
      exec 4<&- 
      done
    
    # pregunta si se quiere hacer otro test
    read -p "quieres hacer otro test (Y/N) " repetir

    # si la respuesta es N se termina el programa si la respuest es Y se elije dificulad y se comienza de cero
    if [ $repetir = "N" || $repetir != "n" ]
      then
        exit
      else
        read -p "q nivel quieres repetir (bajo/medio/alto) " nivel
        bash ./examen.sh $nivel
    fi
  ;;
  alto)
    # nivel alto 3 digitos
    echo "nivel alto"
    # numero de digitos que se va ha usar en las operaciones
    digitos=1000
    # for para la repeticion de las operaciones
    for i in {0..9}
      do
        #randomizado de los simbolos
        simb=${simbolo[$(random 4 0)]}
        # primer numero random
        rand1=$(random $digitos 1)
        # segundo numero random
        rand2=$(random $digitos 1)

        #while para evitar division entre 0
        while [[ $simb = "/" && $rand1 -eq 0 ]]
          do
            rand1=$(random $digitos 1)
        done
        #while para evitar division entre 0
        while [[ $simb = "/" && $rand2 -eq 0 ]]
          do
            rand2=$(random $digitos 1)
        done
        # while para evitar decimales
        while [[ $simb = "/" && $rand1 -lt $rand2 ]]
          do
            rand1=$(random $digitos 1)
        done

        #numero del ejercicio
        echo ejercicio $(($i+1))
        
        #resiltado de la operacion
        result2=$(echo $rand1$simb$rand2 | bc)
        #echo de debug
        #echo $result2
        
        #read para recoger el resultado del usuario
        read -p "cuanto es $rand1$simb$rand2 " result1

        # se añade la operacion a un fichero
        echo  $rand1$simb$rand2 >> examenAnterior.txt

        # if para comparar resultados y ver si el usuario ha acertado
        if [ $result1 -eq $result2 ]
          then
            # se agrega 10 a la lista puntuacion
            puntuacion[$i]=10
            echo "bien"
          else
            puntuacion[$i]=0
            echo "mal"
        fi
    done
    
    #while para sumar la puntuacion
    cont=0
    while [ $cont -lt ${#puntuacion[@]} ]
      do
        suma=$((suma + ${puntuacion[$cont]}))
        cont=$(($cont+1))
    done

    # echos para debug de puntuacion
    #echo ${#puntuacion[@]}
    #echo ${puntuacion[@]}
    #echo $suma
    
    #calculo de la media
    media=$(($suma / ${#puntuacion[@]}))
    echo "tu media ha sido de $media"
    
    read -p "quieres repetir el mismo test(Y/N) " repetir
    
    # while para repetir el mismo examen de antes
    while [[ $repetir != "N" || $repetir != "n" ]]
      do
        exec 4<examenAnterior.txt
        
        #convierto el fichero en lista
        for i in {0..9}
          do
            read -u4 examenAnt[$i]
        done

        # debug
        #echo ${examenAnt[@]}
        #echo ${examenAnt[0]}

        #while para la pregunta de la operacion
        cont=0
        while [ $cont -lt ${#examenAnt[@]} ]
          do
            echo ejercicio $(($cont+1))
            # calculo el resultado
            resultRep2=$(echo ${examenAnt[$cont]} | bc)
            #echo $resultRep2
            read -p "cuanto es ${examenAnt[$cont]} " resultRep1

            # se comparan los resultados
            if [ $resultRep1 -eq $resultRep2 ]
              then
                puntuacionRep[$cont]=10
                echo "bien"
              else
                puntuacionRep[$cont]=0
                echo "mal"
            fi
            cont=$(($cont+1))
        done

        # suma de la puntuacion
        cont=0
        while [ $cont -lt ${#puntuacionRep[@]} ]
          do
            suma=$((suma + ${puntuacionRep[$cont]}))
            cont=$(($cont+1))
        done

        #calculo de la media
        media=$(($suma / ${#puntuacionRep[@]}))
        echo "tu media ha sido de $media"
      
      # pregunta si se quiere repetir el mismo test
      read -p "quieres repetir el mismo test(Y/N) " repetir
      exec 4<&- 
      done
    
    # pregunta si se quiere hacer otro test
    read -p "quieres hacer otro test (Y/N) " repetir

    # si la respuesta es N se termina el programa si la respuest es Y se elije dificulad y se comienza de cero
    if [ $repetir = "N" || $repetir != "n" ]
      then
        exit
      else
        read -p "q nivel quieres repetir (bajo/medio/alto) " nivel
        bash ./examen.sh $nivel
    fi
  ;;
  -help)
    #comando de ayuda
    echo "se deve introducir como parametro (bajo/medio/alto)"
  ;;
  *)
    echo "el nivel de difilcudad que has seleccionado no existe"
    echo "debes escribir (bajo/medio/alto)"
esac