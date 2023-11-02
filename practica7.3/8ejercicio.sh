#!/bin/bash
source colors

for i in {0..1000}
    do
        multiplo7[$i]=$i
done

for i in {0..1000}
    do  
        if [ $i -eq 0 ]
            then
                echo "quit" | bc #esto lo uso para que no aparezca ninguna en blanco al principio
            else
                if [ $(($i%7)) -eq 0 ]
                    then
                        echo $i. ${multiplo7[$i]}
            fi
        fi
done