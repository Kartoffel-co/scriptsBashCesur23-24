#!/bin/bash
cont=0
limit=$#
while [[ $cont -ne $limit ]]
    do
        cat $1
        shift $1
    cont=$(($cont+1))
done